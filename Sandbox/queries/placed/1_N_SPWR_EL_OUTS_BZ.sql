create table MES.GoLive_N_SPWR_EL_OUTS as
 
 
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
                -- http://stackoverflow.com/questions/22982904/hive-date-function-to-achieve-day-of-week
                when pmod(datediff(ShiftStart_DateTime,'1900-01-07'),7) + 1 = 1
                then WEEKOFYEAR(ShiftStart_DateTime) - 1
                else WEEKOFYEAR(ShiftStart_DateTime)
                 end                                             as ShiftStart_Week
          FROM  (
                      select
                      'SPMX' as ORG_ID,
                      RANK() OVER (PARTITION BY InventoryPackNo ORDER BY BuildRecord.OpenedDT desc ) as rank_num,
                      InventoryPack.InventoryPackNo              as Inventory_Pack_No,
                      WO.WONumber                                as WO_Number,
                      Part.PartNumber                            as Part_Number,
                      Part.Cell_Count                            as Cells_Module_Type,
                      Part.Demand_Category                       as Demand_Category,
                      Part.Series                                as Series,
                      Part.Variant3                              as Billable_Watt,
                      InventoryPack.Reference1                   as Reference_Bin,
                      InventoryPack.Reference2                   as Reference_Color,
                      InventoryPack.Comments                     as Comments,
                      U_SPML_ModuleInfo.IntendedModulePartDesc    as Itnd_Mod_Part_Desc,
                      case when lower(U_SPML_ModuleInfo.IntendedModulePartDesc) like '%spdv%' then 'SPDV'
                           when lower(U_SPML_ModuleInfo.IntendedModulePartDesc) like '%spsa%' then 'SPSA'
                           ELSE 'Others'
                       end                                       as Category,
                      MachineStage.Name                          as ElOut_Station,
                      BuildRecord.OpenedDT                       as Trans_DateTime,
                      -- http://www.folkstalk.com/2011/11/date-functions-in-hive.html
                      HOUR(BuildRecord.OpenedDT)        as Trans_Hours,
                      case
                      when HOUR(BuildRecord.OpenedDT) < 7
                      -- https://msdn.microsoft.com/en-us/library/ms187928.aspx european millisecond
                      -- should have gone with: ODBC datetime.  But the way they are using this, just needed style 106 which only looks at dd monyyyy
                      -- https://cwiki.apache.org/confluence/display/Hive/LanguageManual+Types#LanguageManualTypes-Timestamps
                      then date_sub(to_date(BuildRecord.OpenedDT) , 1)
                      else to_date(BuildRecord.OpenedDT)
                       end                                       as ShiftStart_DateTime
                 FROM
                      MES.BuildRecord        as BuildRecord,
                      MES.InventoryPack      as InventoryPack,
                      MES.Part               as Part,
                      MES.WO                 as WO,
                      MES.U_SPML_ModuleInfo  as U_SPML_ModuleInfo,
                      MES.MachineStage       as MachineStage
                where
                      BuildRecord.InvPackCreatedID = InventoryPack.InventoryPackID
                  AND InventoryPack.PartID = Part.PartID
                  AND InventoryPack.WOID = WO.WOID
                  AND InventoryPack.InventoryPackNo = U_SPML_ModuleInfo.SerialNo
                  AND BuildRecord.BuildMachineStageID = MachineStage.MachineStageID
                  AND Part.PartTypeID = 63
                  AND MachineStage.MachineStageTypeID = 28
                  AND BuildRecord.InvPackConsumedID IS NULL
                ) T1
        where rank_num = 1
      ) T2
 
;
