-- BZ: This file is just putting together 4 tables into GoLive_N_SPWR_AGGR_FACT_FINAL
-- BZ: it is also altering the column type for 4 columns

-- Datatype mismatch on Circuit_BM and Category

-- alter table GoLive_N_SPWR_AGGR_FACT_CL alter column Circuit_BM [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_CL alter column Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_CL alter column InvState_Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_CL alter column Down_Grade_Isolated [nvarchar](254) NULL;

-- alter table GoLive_N_SPWR_AGGR_FACT_EL alter column Circuit_BM [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_EL alter column Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_EL alter column InvState_Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_EL alter column Down_Grade_Isolated [nvarchar](254) NULL;

-- alter table GoLive_N_SPWR_AGGR_FACT_DF alter column Circuit_BM [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_DF alter column Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_DF alter column InvState_Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_DF alter column Down_Grade_Isolated [nvarchar](254) NULL;

-- alter table GoLive_N_SPWR_AGGR_FACT_TT alter column Circuit_BM [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_TT alter column Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_TT alter column InvState_Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_TT alter column Down_Grade_Isolated [nvarchar](254) NULL;

-- load all aggregate data into GoLive_N_SPWR_AGGR_FACT_FINAL
-- (16065 row(s) affected)

DROP TABLE IF EXISTS MES.GoLive_N_SPWR_AGGR_FACT_FINAL;

create table MES.GoLive_N_SPWR_AGGR_FACT_FINAL as
SELECT T1.*
  FROM
       (SELECT
              Billable_Watt,
              Category,
              Cells_Module_Type,
              Circuit_BM,
              Count_Quantity,
              Demand_Category,
              Down_Grade_Isolated,
              Fact_Source,
              InvState_Category,
              ORG_ID,
              Part_Number,
              Series,
              Comments,
              Trans_shift_type,
              YY_QTR_WK_DT
         FROM MES.GoLive_N_SPWR_AGGR_FACT_EL
        UNION
        SELECT
              Billable_Watt,
              Category,
              Cells_Module_Type,
              Circuit_BM,
              Count_Quantity,
              Demand_Category,
              Down_Grade_Isolated,
              Fact_Source,
              InvState_Category,
              ORG_ID,
              Part_Number,
              Series,
              Comments,
              Trans_shift_type,
              YY_QTR_WK_DT
        FROM MES.GoLive_N_SPWR_AGGR_FACT_TT
        UNION
        SELECT
              Billable_Watt,
              Category,
              Cells_Module_Type,
              Circuit_BM,
              Count_Quantity,
              Demand_Category,
              Down_Grade_Isolated,
              Fact_Source,
              InvState_Category,
              ORG_ID,
              Part_Number,
              Series,
              Comments,
              Trans_shift_type,
              YY_QTR_WK_DT
         from MES.GoLive_N_SPWR_AGGR_FACT_DF
        UNION
        SELECT
              Billable_Watt,
              Category,
              Cells_Module_Type,
              Circuit_BM,
              Count_Quantity,
              Demand_Category,
              Down_Grade_Isolated,
              Fact_Source,
              InvState_Category,
              ORG_ID,
              Part_Number,
              Series,
              Comments,
              Trans_shift_type,
              YY_QTR_WK_DT
         from MES.GoLive_N_SPWR_AGGR_FACT_CL ) T1


