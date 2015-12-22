drop table if exists mes.GoLive_N_SPWR_DEFECTS;


create table MES.GoLive_N_SPWR_DEFECTS as 
SELECT 'SPMX' as ORG_ID,
       S2.*
  FROM (
       SELECT
              RANK() OVER (PARTITION BY Inventory_Pack_No ORDER BY Trans_DateTime desc, Five_M asc, InvChangeStateFromDT desc) as rank_num,
              S1.*
         FROM (
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
                      case when ShiftStart_DateTime between '2013-09-30' and '2013-29-12' then 4
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
                               SELECT DISTINCT
                                      InventoryPack.InventoryPackNo                            as Inventory_Pack_No,
                                      Part.PartNumber                                          as Part_Number,
                                      Part.Cell_Count                                          as Cells_Module_Type,
                                      Part.Demand_Category                                     as Demand_Category,
                                      Part.Series                                              as Series,
                                      Part.Variant3                                            as Billable_Watt,
                                      U_SPML_ModuleInfo.LaminateOrderNo                        as WO_Number,
                                      'ClassB'                                                 as InvState_Class,
                                      InvIsolatedReason.IsolatedReason                         as IsolatedReason,
                                      nvl(get_IsolatedReasonGroup(IsolatedReasonGroup.IsolatedReason), InvIsolatedReason.IsolatedReason)            as IsolatedReasonGrp,
                                      InvChangeState.Comments                                  as Comments,
                                      case when SUBSTR(ltrim(InvChangeState.Comments),1,4)
                                                in ('MANU','MACH','MEDI','MATE','METH')
                                           then SUBSTR(ltrim(InvChangeState.Comments),1,4)
                                           else 'OTHERS'
                                       end                                                     	as Five_M,
                                      U_SPML_ModuleInfo.BINNo                                   as Bin_No,
                                      U_SPML_ModuleInfo.CktFormBuildMachine                     as Circuit_BM,
                                      U_SPML_ModuleInfo.Komax1                                  as Komax_BM,
                                      U_SPML_ModuleInfo.LaminationBuildMachine                  as Lamination_BM,
                                      U_SPML_ModuleInfo.LaminateCreatedDT                       as Trans_DateTime,
                                      InvChangeState.FromDT                                    	as InvChangeStateFromDT,
                                      HOUR(U_SPML_ModuleInfo.LaminateCreatedDT)        			as Trans_Hours,
                                      case
                                      when HOUR(U_SPML_ModuleInfo.LaminateCreatedDT) < 7
                                      then date_sub(to_date(U_SPML_ModuleInfo.LaminateCreatedDT), 1)
                                      else to_date(U_SPML_ModuleInfo.LaminateCreatedDT)
                                      end                                                                   as ShiftStart_DateTime
                                FROM
                                      MES.InventoryPack        as InventoryPack,
                                      MES.InvChangeState       as InvChangeState,
                                      MES.InvIsolatedReason    as InvIsolatedReason,
                                      MES.InvState             as InvState,
                                      MES.U_SPML_ModuleInfo    as U_SPML_ModuleInfo,
                                      MES.Part                 as Part
                                WHERE
                                      InventoryPack.InventoryPackID = InvChangeState.InventoryPackID
                                  AND InvChangeState.InvIsolatedReasonID = InvIsolatedReason.InvIsolatedReasonID
                                  AND InvChangeState.InvStateID = InvState.InvStateID
                                  AND InvIsolatedReason.InvStateID = InvState.InvStateID
                                  AND InventoryPack.InventoryPackNo = U_SPML_ModuleInfo.SerialNo
                                  AND InventoryPack.PartID = Part.PartID
                                  AND InvState.InvState in ('LPB', 'Packed NPB', 'NPB', 'ClassB')
                                  --AND part.Cell_Count <> '128'
                                  AND (lower(IsolatedReason) not like '%none%' and lower(IsolatedReason) not like '%already retest%' )
                               ) T1
                     ) T2
               UNION
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
                      case when ShiftStart_DateTime between '2013-09-30' and '2013-29-12' then 4
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
                               SELECT DISTINCT
                                      A.InventoryPackNo                                            as Inventory_Pack_No,
                                      A.PartNumber                                                 as Part_Number,
                                      A.Cell_Count                                                 as Cells_Module_Type,
                                      A.Demand_Category                                            as Demand_Category,
                                      A.Series                                                     as Series,
                                      A.Variant3                                                   as Billable_Watt,
                                      U_SPML_ModuleInfo.LaminateOrderNo                             as WO_Number,
                                      'ClassS'                                                     as InvState_Class,
                                      A.IsolatedReason                                             as IsolatedReason,
                                      nvl(A.IsolatedReasonGroup, A.IsolatedReason)                as IsolatedReasonGrp,
                                      A.Comments                                                   as Comments,
                                      A.Five_M                                                     as Five_M,
                                      U_SPML_ModuleInfo.BINNo                                       as Bin_No,
                                      U_SPML_ModuleInfo.CktFormBuildMachine                         as Circuit_BM,
                                      U_SPML_ModuleInfo.Komax1                                      as Komax_BM,
                                      U_SPML_ModuleInfo.LaminationBuildMachine                      as Lamination_BM,
                                      U_SPML_ModuleInfo.LaminateCreatedDT                           as Trans_DateTime,
                                      A.FromDT                                                     as InvChangeStateFromDT,
                                      DatePart(HOUR,U_SPML_ModuleInfo.LaminateCreatedDT)            as Trans_Hours,
                                      case
                                      when DatePart(HOUR,U_SPML_ModuleInfo.LaminateCreatedDT) < 7
                                      then date_sub(to_date(U_SPML_ModuleInfo.LaminateCreatedDT), 1)
                                      else to_date(U_SPML_ModuleInfo.LaminateCreatedDT)
                                      end                                                                   as ShiftStart_DateTime
                                      from (SELECT DISTINCT
                                                   InvChangeState.FromDT,
                                                   InventoryPack.InventoryPackNo,
                                                   InvState.InvState,
                                                   InvIsolatedReason.IsolatedReason,
                                                   IsolatedReasonGroup.IsolatedReasonGroup,
                                                   InvChangeState.Comments,
                                                   case when SUBSTR(ltrim(InvChangeState.Comments),1,4)
                                                             in ('MANU','MACH','MEDI','MATE','METH')
                                                        then SUBSTR(ltrim(InvChangeState.Comments),1,4)
                                                        else 'OTHERS'
                                                   end                                             as Five_M,
                                                   Part.PartNumber,
                                                   Part.Demand_Category,
                                                   Part.Cell_Count,
                                                   Part.series,
                                                   Part.Variant3
                                            FROM
                                                   MES.InventoryPack        as InventoryPack,
                                                   MES.InvChangeState       as InvChangeState,
                                                   MES.InvIsolatedReason    as InvIsolatedReason,
                                                   MES.InvState             as InvState,
                                                   MES.Part                 as Part
                                                   (SELECT  InvIsolatedReason.IsolatedReason as IsolatedReason, IsolatedReasonGroup.IsolatedReasonGroup as IsolatedReasonGroup
                                                    from MES.InvIsolatedReason as InvIsolatedReason 
                                                    left join MES.IsolatedReasonGroup IsolatedReasonGroup 
                                                    on InvIsolatedReason.IsolatedReason = IsolatedReasonGroup.IsolatedReason) as IsolatedReasonGroup
                                            WHERE
                                                   InventoryPack.InventoryPackID = InvChangeState.InventoryPackID
                                               AND InvChangeState.InvIsolatedReasonID = InvIsolatedReason.InvIsolatedReasonID
                                               AND InvChangeState.InvStateID = InvState.InvStateID
                                               AND InventoryPack.PartID = Part.PartID
                                               AND (lower(IsolatedReason) not like '%none%' and lower(IsolatedReason) not like '%already retest%' )
                                               AND InvState.InvState in ('MDC - Scrap', 'Packed NPS', 'NPS', 'ClassS', 'MDC - Scrap BBS', 'MDC - Scrap LP','Scrapped/Shuttered Laminate','Scrap')
                                               AND InvChangeState.IsEdited = 0
                                           ) A LEFT OUTER JOIN MES.U_SPML_ModuleInfo as U_SPML_ModuleInfo
                                                ON A.InventoryPackNo = U_SPML_ModuleInfo.SerialNo
                                --WHERE A.Five_M != 'MATE'
                               ) T1
                     ) T2
           ) S1
    ) S2
    where rank_num = 1
      and Comments not like '%ENGI%'

--ISNULL(ShiftStart_DateTime,InvChangeStateFromDT)
--'MANU','MACH','MEDI','MATE','METH'
