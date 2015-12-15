drop table if exists mes.GoLive_N_SPWR_CELL_LOSS;


/***************************************************************************************************
#
# Scriptname :
#
#
# Purpose : contains query and transformation logic to load the EL Out fact table N_SPWR_CELL_LOSS
#           sourced from the query used to load "Cell Loss" Xls Sheet
#
#           N_SPWR_CELL_LOSS (11035736 row(s) affected)
#
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

--
-- Loaded records in GoLive_N_SPWR_CELL_LOSS (1304491 row(s) affected)
create table MES.GoLive_N_SPWR_CELL_LOSS as

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
                SELECT S1.*,
                       RANK() OVER (PARTITION BY Inventory_Pack_No ORDER BY Trans_DateTime desc ) as rank_num,
                       case
                       when lower(S1.MachineLocation) like '%mx_komax%'      then 'KOMAX'
                       when lower(S1.MachineLocation) like '%mx_cktform%'    then 'MCF'
                       when lower(S1.MachineLocation) like '%fab%'           then 'FAB'
                       when lower(S1.MachineLocation) like '%materialista%'  then 'MATE'
                       else lower(S1.MachineLocation)
                        end                                                                   as Caused_By,
                       HOUR(Trans_DateTime)                                                   as Trans_Hours,
                       case
                       when HOUR(Trans_DateTime)< 7
                       then date_sub(to_date(Trans_DateTime), 1)
                        else to_date(Trans_DateTime)
                        end                                                                   as ShiftStart_DateTime
                  FROM
                        ( SELECT
                                'SPMX'                                                                  as Org_Id,
                                InventoryPack.InventoryPackNo                                           as Inventory_Pack_No,
                                nvl(InventoryPack.SupplierReference, InventoryPack.InventoryPackNo)  as SupplierReference,
                                Part.PartNumber                                                         as Part_Number,
                                Part.Cell_Count                                                         as Cells_Module_Type,
                                Part.Demand_Category                                                    as Demand_Category,
                                Part.Series                                                             as Series,
                                case when Part.PartTypeID = 58 then 'Cells'
                                     when Part.PartTypeID = 40 then 'Strings'
                                     when Part.PartTypeID = 39 then 'Modules'
                                 end                                                                    as Part_Type,
                                Part.Variant3                                                           as Billable_Watt,
                                Unit.Unit                                                               as Unit,
                                InventoryPack.CurrentQuantity                                           as Quantity,
                                nvl(InvChangeState.Comments, InventoryPack.Comments)                 as Comments,
                                InvState.InvState                                                       as Scrap_MRB,
                                InvIsolatedReason.IsolatedReason                                        as Isolated_Reason,
                                Supplier.Supplier                                                       as Supplier,
                                InvPackScarpLocation.Location                   as ScarpLocation,
                                InvPackMachineLocation.Location                 as MachineLocation,
                                InvPackScrapReason.ScrapReason                      as ScrapReason,
                                GREATEST(InvChangeState.FromDT, InventoryPack.BirthDT)              as Trans_DateTime
                         FROM   MES.InvChangeState           as InvChangeState,
                                MES.InvIsolatedReason        as InvIsolatedReason,
                                MES.InvState                 as InvState,
                                MES.InventoryPack            as InventoryPack,
                                MES.Part                     as Part,
                                MES.Supplier                 as Supplier,
                                MES.Unit                     as Unit,
                                (SELECT  InvPack.LocationID, Location.Location 
                                  from MES.InventoryPack as InvPack 
                                  left join MES.Location as Location 
                                  on InvPack.LocationID = Location.LocationID) as InvPackScarpLocation,
                                (SELECT  InvPack.MachineLocationID, Location.Location 
                                  from MES.InventoryPack as InvPack 
                                  left join MES.Location as Location 
                                  on InvPack.MachineLocationID = Location.LocationID) as InvPackMachineLocation,
                                (SELECT  InvPack.ScrapReasonID, ScrapReason.ScrapReason 
                                  from MES.InventoryPack as InvPack 
                                  left join MES.ScrapReason as ScrapReason 
                                  on InvPack.ScrapReasonID = ScrapReason.ScrapReasonID) as InvPackScrapReason
                          WHERE InvChangeState.IsEdited = 0
                            AND InventoryPack.IsEdited = 0
                            AND Part.PartTypeID in (39, 40, 58)
                            AND InvState not in ('Replacement')
                            AND InvChangeState.InvIsolatedReasonID = InvIsolatedReason.InvIsolatedReasonID
                            AND InvChangeState.InvStateID = InvState.InvStateID
                            AND InvChangeState.InventoryPackID = InventoryPack.InventoryPackID
                            AND InventoryPack.PartID = Part.PartID
                            AND InventoryPack.SupplierID = Supplier.SupplierID
                            AND Unit.UnitID = InventoryPack.UnitID
                            AND InvChangeState.ToDT =  cast('2050-12-31 00:00:00.00' as timestamp)
                  ) S1
                 WHERE MachineLocation not in ( 'PM', 'COV', 'Engineering')
                ) T1
        where rank_num = 1
      ) T2

/*
       case
       when T1.MachineLocation like '%FAB%' COLLATE Latin1_General_BIN then 'FAB'
       else T1.MachineLocation
        end                                                                             as Caused_By,
*/
