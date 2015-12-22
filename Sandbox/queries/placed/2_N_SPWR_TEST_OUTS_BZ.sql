
/***************************************************************************************************
#
# Scriptname :
#
#
# Purpose : contains query and transformation logic to load the Test Out fact table N_SPWR_TEST_OUTS
#           sourced from the query used to load "Test Out" Xls Sheet
#
#           N_SPWR_TEST_OUTS (2650270 row(s) affected)
#
# Called by :
#
# Amendment History :
#
#    Ver        Date        Author           Description
#  ---------  ----------  ---------------  ---------------------------------------------------
#   1.0        10/10/2015   Guna           Initial version - SPMX
#
***************************************************************************************************/

-- Loaded records in GoLive_N_SPWR_TEST_OUTS (293013 row(s) affected)
create table MES.GoLive_N_SPWR_TEST_OUTS as

SELECT T2.*,
      case
       when (pmod(datediff(ShiftStart_DateTime,'1900-01-07'),7) + 1 in (1,2,3)   and WEEKOFYEAR(ShiftStart_DateTime) % 2 = 1
         or  pmod(datediff(ShiftStart_DateTime,'1900-01-07'),7) + 1 in (1,2,3,4) and WEEKOFYEAR(ShiftStart_DateTime) % 2 = 0 )
        and  Trans_Hours between 7 and 18
       then 'A'
       when (pmod(datediff(ShiftStart_DateTime,'1900-01-07'),7) + 1 in (1,2,3)   and WEEKOFYEAR(ShiftStart_DateTime)% 2 = 1
         or  pmod(datediff(ShiftStart_DateTime,'1900-01-07'),7) + 1 in (1,2,3,4) and WEEKOFYEAR(ShiftStart_DateTime)% 2 = 0 )
        and  Trans_Hours not between 7 and 18
       then 'B'
       when (pmod(datediff(ShiftStart_DateTime,'1900-01-07'),7) + 1 in   (5,6,7) and WEEKOFYEAR(ShiftStart_DateTime)% 2 = 0
         or  pmod(datediff(ShiftStart_DateTime,'1900-01-07'),7) + 1 in (4,5,6,7) and WEEKOFYEAR(ShiftStart_DateTime)% 2 = 1 )
        and  Trans_Hours between 7 and 18
       then 'C'
       when (pmod(datediff(ShiftStart_DateTime,'1900-01-07'),7) + 1 in   (5,6,7) and WEEKOFYEAR(ShiftStart_DateTime)% 2 = 0
         or  pmod(datediff(ShiftStart_DateTime,'1900-01-07'),7) + 1 in (4,5,6,7) and WEEKOFYEAR(ShiftStart_DateTime)% 2 = 1 )
        and  Trans_Hours not between 7 and 18
       then 'D'
       else null end                                             as Trans_shift_type,
       case when ShiftStart_DateTime between '2013-09-30' and '2013-12-29' then 4
            when ShiftStart_DateTime between '2013-12-30' and  '2014-03-30' then 1
            when ShiftStart_DateTime between  '2014-03-31' and  '2014-06-29' then 2
            when ShiftStart_DateTime between  '2014-06-30' and  '2014-09-28' then 3
            when ShiftStart_DateTime between  '2014-09-29' and  '2014-12-28' then 4
            when ShiftStart_DateTime between  '2014-12-29' and  '2015-03-29' then 1
            when ShiftStart_DateTime between  '2015-03-30' and  '2015-06-28' then 2
            when ShiftStart_DateTime between  '2015-06-29' and  '2015-09-27' then 3
            when ShiftStart_DateTime between  '2015-09-28' and  '2016-01-03' then 4
        end                                                      as Trans_DateTime_qtr,
       YEAR(ShiftStart_DateTime)                                 as Trans_DateTime_year
  FROM (
        SELECT  T1.* ,
                case
                when IntendedModulePartDesc != FinalModulePartDesc
                then
                     case when upper(IntendedModulePartDesc) not like '%COM%' 
                           and upper(FinalModulePartDesc) like '%COM%' 
                          then 'Y'
                          when upper(IntendedModulePartDesc) not like '%NPA%'  
                           and upper(FinalModulePartDesc) like '%NPA%'  
                          then 'Y'
                          when upper(IntendedModulePartDesc) not like '%NPB%'  
                           and upper(FinalModulePartDesc) like '%NPB%'  
                          then 'Y'
                          when FinalModule_short != IntendedModule_short
                          then 'Y'
                          else 'N'
                      end
                else 'N'
                 end                                             as Down_Grade_Power,
                case
                when upper(FinalModulePartDesc) not like '%COM%'  
                 and lower(InventoryState) in ('npa','palletized npa')
                then 'Y'
                else 'N'
                 end                                             as Down_Grade_Cosmetic,
                 case
                -- http://stackoverflow.com/questions/22982904/hive-date-function-to-achieve-day-of-week
                when pmod(datediff(ShiftStart_DateTime,'1900-01-07'),7) + 1 = 1
                then WEEKOFYEAR(ShiftStart_DateTime) - 1
                else WEEKOFYEAR(ShiftStart_DateTime)
                 end                                             as ShiftStart_Week
          FROM  (
                SELECT
                       'SPMX' as ORG_ID,
                       S1.* ,
                       RANK() OVER (PARTITION BY Inventory_Pack_No ORDER BY FromDT desc )   as rank_num
                  FROM (
                        SELECT DISTINCT
                               InventoryPack.InventoryPackNo                                as Inventory_Pack_No,
                               U_SPML_ModuleInfo.FlashtestBuildMachine,
                               U_SPML_ModuleInfo.InventoryState,
                               InvState.InvState,---use this for InvState_Class
                               InvIsolatedReason.IsolatedReason,
                               InvChangeState.Comments,
                               InvChangeState.FromDT,
                               U_SPML_ModuleInfo.FinalModulePartDesc,
                               U_SPML_ModuleInfo.IntendedModulePartDesc,
                               -- Replace FinalModulePartDesc text - looks like we just want the text after the first comma and then replace the comma with a blank? 
                               regexp_extract([FinalModulePartDesc], '[(,|\\s)](\\w+)[(,|\\s)]', 1) as FinalModule_short,
                               regexp_extract([IntendedModulePartDesc], '[(,|\\s)](\\w+)[(,|\\s)]', 1)   as IntendedModule_short,
                               U_SPML_ModuleInfo.ActualPower,
                               Part.PartNumber                                              as Part_Number,
                               Part.Cell_Count                                              as Cells_Module_Type,
                               Part.Demand_Category                                         as Demand_Category,
                               Part.Series                                                  as Series,
                               Part.Variant3                                                as Billable_Watt,
                               InventoryPack.Reference1,
                               InventoryPack.Reference2,
                               U_SPML_ModuleInfo.Komax1,
                               U_SPML_ModuleInfo.CktFormBuildMachine,
                               U_SPML_ModuleInfo.LaminationBuildMachine,
                               U_SPML_ModuleInfo.CktFormBuildDT,
                               U_SPML_ModuleInfo.FlashtestClassifiedDT                       as Trans_DateTime,
                               HOUR(U_SPML_ModuleInfo.FlashtestClassifiedDT)        as Trans_Hours,
                               case
                               when HOUR(U_SPML_ModuleInfo.FlashtestClassifiedDT) < 7
                               then date_sub(to_date(U_SPML_ModuleInfo.FlashtestClassifiedDT), 1)
                               else to_date(U_SPML_ModuleInfo.FlashtestClassifiedDT)
                                end                                                         as ShiftStart_DateTime
                         FROM  MES.InventoryPack                 as InventoryPack,
                               MES.U_SPML_ModuleInfo             as U_SPML_ModuleInfo,
                               MES.InvChangeState                as InvChangeState,
                               MES.InvState                      as InvState,
                               MES.Part                          as Part,
                               MES.InvIsolatedReason             as InvIsolatedReason
                         WHERE InvState.InvState IN ('ClassA', 'ClassA+', 'ClassB', 'ClassS', 'Waiting for Dispo', 'ClassC')
                           AND Part.PartTypeID = 63
                           AND InvChangeState.IsEdited = 0
                           AND U_SPML_ModuleInfo.FlashtestBuildMachine <> 'OfflineTester'
                           AND InvChangeState.InvStateID = InvState.InvStateID
                           AND InvChangeState.InvIsolatedReasonID = InvIsolatedReason.InvIsolatedReasonID
                           AND InventoryPack.InventoryPackID = InvChangeState.InventoryPackID
                           AND InventoryPack.InventoryPackNo = U_SPML_ModuleInfo.SerialNo
                           AND InventoryPack.PartID = Part.PartID
                       )  S1
                ) T1
          where rank_num = 1
      ) T2
;
