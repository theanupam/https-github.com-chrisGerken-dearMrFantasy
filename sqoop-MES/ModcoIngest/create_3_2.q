DROP TABLE IF EXISTS N_SPWR_AGGR_FACT_CL_DAILY;

create table MES.GoLive_N_SPWR_AGGR_FACT_CL_DAILY as
SELECT ORG_ID
       ,MachineLocation             as Circuit_BM
       ,Cells_Module_Type
       ,Trans_shift_type
       ,Caused_By                   as Category
       ,Scrap_MRB                   as InvState_Category
       ,'N'                           as Down_Grade_Isolated
       ,Part_Number
       ,Series
       ,Demand_Category
       ,Billable_Watt
       ,Comments
       ,Trans_DateTime_year
       ,Trans_DateTime_qtr
       ,ShiftStart_Week
       ,ShiftStart_DateTime
       ,sum(Quantity)               as Count_Quantity
  FROM MES.GoLive_N_SPWR_CELL_LOSS
 WHERE MachineLocation != 'NA' and ScarpLocation != 'NA'
 GROUP BY
        ORG_ID
       ,MachineLocation
       ,Cells_Module_Type
       ,Trans_shift_type
       ,Caused_By
       ,Scrap_MRB
       ,Part_Number
       ,Series
       ,Demand_Category
       ,Billable_Watt
       ,Comments
       ,Trans_DateTime_year
       ,Trans_DateTime_qtr
       ,ShiftStart_Week
       ,ShiftStart_DateTime

