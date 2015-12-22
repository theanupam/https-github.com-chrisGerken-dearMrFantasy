
--DROP TABLE GoLive_N_SPWR_AGGR_FACT_DF
create table MES.GoLive_N_SPWR_AGGR_FACT_DF as
SELECT T2.*
  FROM (
        SELECT T1.* ,
               'SCARP-Q' as Fact_Source,
               COUNT(*)  as Count_Quantity
          FROM (
               SELECT [ORG_ID]
                     ,[Circuit_BM]
                     ,[Cells_Module_Type]
                     ,[Trans_shift_type]
                     ,[Five_M]               as [Category]
                     ,[InvState_Class]       as [InvState_Category]
                     ,[IsolatedReason]       as [Down_Grade_Isolated]
                     ,[Part_Number]
                     ,[Series]
                     ,[Demand_Category]
                     ,[Billable_Watt]
                     ,[Comments]
                     ,concat(ltrim(rtrim(cast([Trans_DateTime_year] as str))), ' - Q', ltrim(rtrim(cast([Trans_DateTime_qtr] as str)))) as YY_QTR_WK_DT
                 FROM MES.GoLive_N_SPWR_DEFECTS
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
        SELECT T1.* , 
               'SCARP-W' as Fact_Source, 
               COUNT(*) as Count_Quantity
          FROM (
               SELECT [ORG_ID]
                     ,[Circuit_BM]
                     ,[Cells_Module_Type]
                     ,[Trans_shift_type]
                     ,[Five_M]               as [Category]
                     ,[InvState_Class]       as [InvState_Category]
                     ,[IsolatedReason]       as [Down_Grade_Isolated]
                     ,[Part_Number]
                     ,[Series]
                     ,[Demand_Category]
                     ,[Billable_Watt]
                     ,[Comments]
                     ,concat('W', ltrim(rtrim(cast([ShiftStart_Week] as str)))) as YY_QTR_WK_DT
                 FROM MES.GoLive_N_SPWR_DEFECTS
                where [Trans_DateTime_year] = YEAR(current_date)
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
        SELECT T1.* , 
               'SCARP-D' as Fact_Source, 
               COUNT(*) as Count_Quantity
          FROM (
               SELECT [ORG_ID]
                     ,[Circuit_BM]
                     ,[Cells_Module_Type]
                     ,[Trans_shift_type]
                     ,[Five_M]               as [Category]
                     ,[InvState_Class]       as [InvState_Category]
                     ,[IsolatedReason]       as [Down_Grade_Isolated]
                     ,[Part_Number]
                     ,[Series]
                     ,[Demand_Category]
                     ,[Billable_Watt]
                     ,[Comments]
                     ,date_format(ShiftStart_DateTime, 'dd-MM-yy')     as YY_QTR_WK_DT
                 FROM MES.GoLive_N_SPWR_DEFECTS
                 where
                       [Trans_DateTime_year] = YEAR(current_date)
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



