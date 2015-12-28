

DROP TABLE IF EXISTS MES.GoLive_N_SPWR_AGGR_FACT_DF_DAILY;

create table MES.GoLive_N_SPWR_AGGR_FACT_DF_DAILY as

SELECT ORG_ID
       ,Circuit_BM
       ,Cells_Module_Type
       ,Trans_shift_type
       ,Five_M               as Category
       ,InvState_Class       as InvState_Category
       ,IsolatedReason       as Down_Grade_Isolated
       ,Part_Number
       ,Series
       ,Demand_Category
       ,Billable_Watt
       ,Comments
       ,Trans_DateTime_year
       ,Trans_DateTime_qtr
       ,ShiftStart_Week
       ,ShiftStart_DateTime
       ,COUNT(*)               as Count_Quantity
 FROM MES.GoLive_N_SPWR_DEFECTS
 GROUP BY
        ORG_ID
       ,Circuit_BM
       ,Cells_Module_Type
       ,Trans_shift_type
       ,Five_M
       ,InvState_Class
       ,IsolatedReason
       ,Part_Number
       ,Series
       ,Demand_Category
       ,Billable_Watt
       ,Comments
       ,Trans_DateTime_year
       ,Trans_DateTime_qtr
       ,ShiftStart_Week
       ,ShiftStart_DateTime



