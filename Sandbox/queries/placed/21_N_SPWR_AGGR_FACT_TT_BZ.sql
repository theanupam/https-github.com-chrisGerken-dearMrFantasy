
--DROP TABLE GoLive_N_SPWR_AGGR_FACT_TT
create table MES.GoLive_N_SPWR_AGGR_FACT_TT as 

SELECT T2.*
  FROM (
        SELECT  [ORG_ID]
               ,[Circuit_BM]
               ,[Cells_Module_Type]
               ,[Trans_shift_type]
               ,[Category]
               ,[InvState_Category]
               ,[Down_Grade_Isolated]
               ,[Part_Number]
               ,[Series]
               ,[Demand_Category]
               ,[Billable_Watt]
               ,[Comments]
               ,YY_QTR_WK_DT
               ,'TTOUT-Q'                           as Fact_Source
               ,COUNT(*)                            as Count_Quantity
          FROM (
               SELECT [ORG_ID]
                     ,[CktFormBuildMachine]         as [Circuit_BM]
                     ,[Cells_Module_Type]
                     ,[Trans_shift_type]
                     ,[InventoryState]              as [Category]
                     ,[InvState]                    as [InvState_Category]
                     ,[Down_Grade_Cosmetic]         as [Down_Grade_Isolated]
                     ,[Part_Number]
                     ,[Series]
                     ,[Demand_Category]
                     ,[Billable_Watt]
                     ,[Comments]
                     ,concat(ltrim(rtrim(cast([Trans_DateTime_year] as str))), ' - Q', ltrim(rtrim(cast([Trans_DateTime_qtr] as str)))) as YY_QTR_WK_DT
                 FROM MES.GoLive_N_SPWR_TEST_OUTS
               ) T1
         GROUP BY
                [ORG_ID]
               ,[Circuit_BM]
               ,[Cells_Module_Type]
               ,[Trans_shift_type]
               ,[Category]
               ,[InvState_Category]
               ,[Down_Grade_Isolated]
               ,[Part_Number]
               ,[Series]
               ,[Demand_Category]
               ,[Billable_Watt]
               ,[Comments]
               ,YY_QTR_WK_DT
        UNION
        SELECT  [ORG_ID]
               ,[Circuit_BM]
               ,[Cells_Module_Type]
               ,[Trans_shift_type]
               ,[Category]
               ,[InvState_Category]
               ,[Down_Grade_Isolated]
               ,[Part_Number]
               ,[Series]
               ,[Demand_Category]
               ,[Billable_Watt]
               ,[Comments]
               ,YY_QTR_WK_DT
               ,'TTOUT-W'                           as Fact_Source
               ,COUNT(*)                            as Count_Quantity
          FROM (
               SELECT [ORG_ID]
                     ,[CktFormBuildMachine]                          as [Circuit_BM]
                     ,[Cells_Module_Type]
                     ,[Trans_shift_type]
                     ,[InventoryState]                               as [Category]
                     ,[InvState]                                     as [InvState_Category]
                     ,[Down_Grade_Cosmetic]                          as [Down_Grade_Isolated]
                     ,[Part_Number]
                     ,[Series]
                     ,[Demand_Category]
                     ,[Billable_Watt]
                     ,[Comments]
                     ,concat('W', ltrim(rtrim(cast([ShiftStart_Week] as str)))) as YY_QTR_WK_DT
                 FROM MES.GoLive_N_SPWR_TEST_OUTS
                WHERE [Trans_DateTime_year] = YEAR(current_date)
                  and [Trans_DateTime_qtr] = QUARTER(current_date) -- 1 /* TO BE REMOVED TO REFLECT CRRNT QTR */
                ) T1
         GROUP BY
                [ORG_ID]
               ,[Circuit_BM]
               ,[Cells_Module_Type]
               ,[Trans_shift_type]
               ,[Category]
               ,[InvState_Category]
               ,[Down_Grade_Isolated]
               ,[Part_Number]
               ,[Series]
               ,[Demand_Category]
               ,[Billable_Watt]
               ,[Comments]
               ,YY_QTR_WK_DT
        UNION
        SELECT  [ORG_ID]
               ,[Circuit_BM]
               ,[Cells_Module_Type]
               ,[Trans_shift_type]
               ,[Category]
               ,[InvState_Category]
               ,[Down_Grade_Isolated]
               ,[Part_Number]
               ,[Series]
               ,[Demand_Category]
               ,[Billable_Watt]
               ,[Comments]
               ,YY_QTR_WK_DT
               ,'TTOUT-D'                           as Fact_Source
               ,COUNT(*)                            as Count_Quantity
          FROM (
               SELECT [ORG_ID]
                     ,[CktFormBuildMachine]                          as [Circuit_BM]
                     ,[Cells_Module_Type]
                     ,[Trans_shift_type]
                     ,[InventoryState]                               as [Category]
                     ,[InvState]                                     as [InvState_Category]
                     ,[Down_Grade_Cosmetic]                          as [Down_Grade_Isolated]
                     ,[Part_Number]
                     ,[Series]
                     ,[Demand_Category]
                     ,[Billable_Watt]
                     ,[Comments]
                     ,date_format(ShiftStart_DateTime, 'dd-MM-yy')     as YY_QTR_WK_DT
                 FROM MES.GoLive_N_SPWR_TEST_OUTS
                WHERE [Trans_DateTime_year] = YEAR(current_date)
                  and [Trans_DateTime_qtr] = QUARTER(current_date) -- 1 /* TO BE REMOVED TO REFLECT CRRNT QTR */
                  and [ShiftStart_Week] = WEEKOFYEAR(current_date)   -- 3 /* TO BE REMOVED TO REFLECT CRRNT WEEK */
                ) T1
         GROUP BY
                [ORG_ID]
               ,[Circuit_BM]
               ,[Cells_Module_Type]
               ,[Trans_shift_type]
               ,[Category]
               ,[InvState_Category]
               ,[Down_Grade_Isolated]
               ,[Part_Number]
               ,[Series]
               ,[Demand_Category]
               ,[Billable_Watt]
               ,[Comments]
               ,YY_QTR_WK_DT
       ) T2

