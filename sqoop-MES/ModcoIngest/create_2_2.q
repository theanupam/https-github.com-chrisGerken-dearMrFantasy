
DROP TABLE IF EXISTS MES.GoLive_N_SPWR_AGGR_FACT_TT_DAILY;

create table MES.GoLive_N_SPWR_AGGR_FACT_TT_DAILY as

SELECT ORG_ID
       ,CktFormBuildMachine         as Circuit_BM
       ,Cells_Module_Type
       ,Trans_shift_type
       ,InventoryState              as Category
       ,InvState                    as InvState_Category
       ,Down_Grade_Cosmetic         as Down_Grade_Isolated
       ,Part_Number
       ,Series
       ,Demand_Category
       ,Billable_Watt
       ,Comments
       ,Trans_DateTime_year
       ,Trans_DateTime_qtr
       ,ShiftStart_Week
       ,ShiftStart_DateTime
       ,COUNT(*)                      as Count_Quantity
 FROM MES.GoLive_N_SPWR_TEST_OUTS
GROUP BY
      ORG_ID
      ,CktFormBuildMachine
      ,Cells_Module_Type
      ,Trans_shift_type
      ,InventoryState
      ,InvState
      ,Down_Grade_Cosmetic
      ,Part_Number
      ,Series
      ,Demand_Category
      ,Billable_Watt
      ,Comments
      ,Trans_DateTime_year
      ,Trans_DateTime_qtr
      ,ShiftStart_Week
      ,ShiftStart_DateTime


