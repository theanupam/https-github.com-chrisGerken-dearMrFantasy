
--DROP TABLE GoLive_N_SPWR_AGGR_FACT_CL
create table MES.GoLive_N_SPWR_AGGR_FACT_CL as
SELECT T2.*
       ,'N' as [Down_Grade_Isolated]
  FROM (
        SELECT  [ORG_ID]
               ,[Circuit_BM]
               ,[Cells_Module_Type]
               ,[Trans_shift_type]
               ,[Category]
               ,[InvState_Category]
               ,[Part_Number]
               ,[Series]
               ,[Demand_Category]
               ,[Billable_Watt]
               ,[Comments]
               ,YY_QTR_WK_DT
               ,'CLOSS-Q'                           as Fact_Source
               ,sum([Quantity])                     as Count_Quantity
          FROM (
               SELECT [ORG_ID]
                     ,[MachineLocation]             as [Circuit_BM]
                     ,[Cells_Module_Type]
                     ,[Trans_shift_type]
                     ,[Caused_By]                   as [Category]
                     ,[Scrap_MRB]                   as [InvState_Category]
                     ,[Part_Number]
                     ,[Series]
                     ,[Demand_Category]
                     ,[Billable_Watt]
                     ,[Comments]
                     ,concat(ltrim(rtrim(cast([Trans_DateTime_year] as str))), ' - Q', ltrim(rtrim(cast([Trans_DateTime_qtr] as str)))) as YY_QTR_WK_DT
                     ,[Quantity]
                 FROM MES.GoLive_N_SPWR_CELL_LOSS
                WHERE MachineLocation != 'NA' and ScarpLocation != 'NA'
               ) T1
         GROUP BY
                [ORG_ID]
               ,[Circuit_BM]
               ,[Cells_Module_Type]
               ,[Trans_shift_type]
               ,[Category]
               ,[InvState_Category]
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
               ,[Part_Number]
               ,[Series]
               ,[Demand_Category]
               ,[Billable_Watt]
               ,[Comments]
               ,YY_QTR_WK_DT
               ,'CLOSS-W'                           as Fact_Source
               ,sum([Quantity])                     as Count_Quantity
          FROM (
               SELECT [ORG_ID]
                     ,[MachineLocation]                              as [Circuit_BM]
                     ,[Cells_Module_Type]
                     ,[Trans_shift_type]
                     ,[Caused_By]                                    as [Category]
                     ,[Scrap_MRB]                                    as [InvState_Category]
                     ,[Part_Number]
                     ,[Series]
                     ,[Demand_Category]
                     ,[Billable_Watt]
                     ,[Comments]
                     ,concat('W', ltrim(rtrim(cast([ShiftStart_Week] as str)))) as YY_QTR_WK_DT
                     ,[Quantity]
                 FROM MES.GoLive_N_SPWR_CELL_LOSS
                WHERE MachineLocation != 'NA' and ScarpLocation != 'NA'
                  and [Trans_DateTime_year] = YEAR(current_date)
                  and [Trans_DateTime_qtr] = QUARTER(current_date) -- 1 /* TO BE REMOVED TO REFLECT CRRNT QTR */
                ) T1
         GROUP BY
                [ORG_ID]
               ,[Circuit_BM]
               ,[Cells_Module_Type]
               ,[Trans_shift_type]
               ,[Category]
               ,[InvState_Category]
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
               ,[Part_Number]
               ,[Series]
               ,[Demand_Category]
               ,[Billable_Watt]
               ,[Comments]
               ,YY_QTR_WK_DT
               ,'CLOSS-D'                           as Fact_Source
               ,sum([Quantity])                     as Count_Quantity
          FROM (
               SELECT [ORG_ID]
                     ,[MachineLocation]                              as [Circuit_BM]
                     ,[Cells_Module_Type]
                     ,[Trans_shift_type]
                     ,[Caused_By]                                    as [Category]
                     ,[Scrap_MRB]                                    as [InvState_Category]
                     ,[Part_Number]
                     ,[Series]
                     ,[Demand_Category]
                     ,[Billable_Watt]
                     ,[Comments]
                     ,date_format(ShiftStart_DateTime, 'dd-MM-yy')     as YY_QTR_WK_DT
                     ,[Quantity]
                 FROM MES.GoLive_N_SPWR_CELL_LOSS
                WHERE MachineLocation != 'NA' and ScarpLocation != 'NA'
                  and [Trans_DateTime_year] = YEAR(current_date)
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
               ,[Part_Number]
               ,[Series]
               ,[Demand_Category]
               ,[Billable_Watt]
               ,[Comments]
               ,YY_QTR_WK_DT
       ) T2

---------------------------------------------------------------------------------



