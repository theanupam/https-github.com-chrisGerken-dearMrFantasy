--DROP TABLE GoLive_N_SPWR_AGGR_FACT_EL_DAILY
create table MES.GoLive_N_SPWR_AGGR_FACT_EL_DAILY as

SELECT [ORG_ID]
       ,[ElOut_Station]               as [Circuit_BM]
       ,[Cells_Module_Type]
       ,[Trans_shift_type]
       ,[Category]                    as [Category]
       ,NULL                          as [InvState_Category]
       ,'N'                           as [Down_Grade_Isolated]
       ,[Part_Number]
       ,[Series]
       ,[Demand_Category]
       ,[Billable_Watt]
       ,[Comments]
       ,Trans_DateTime_year
       ,Trans_DateTime_qtr
       ,ShiftStart_Week
       ,ShiftStart_DateTime
       ,COUNT(*)                      as Count_Quantity
 FROM MES.GoLive_N_SPWR_EL_OUTS
 GROUP BY
        [ORG_ID]
       ,[ElOut_Station]
       ,[Cells_Module_Type]
       ,[Trans_shift_type]
       ,[Category]
       ,[Part_Number]
       ,[Series]
       ,[Demand_Category]
       ,[Billable_Watt]
       ,[Comments]
       ,Trans_DateTime_year
       ,Trans_DateTime_qtr
       ,ShiftStart_Week
       ,ShiftStart_DateTime