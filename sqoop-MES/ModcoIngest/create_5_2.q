-- BZ: This file is just putting together 4 tables into GoLive_N_SPWR_AGGR_FACT_FINAL
-- BZ: it is also altering the column type for 4 columns

-- Datatype mismatch on Circuit_BM and Category

-- alter table GoLive_N_SPWR_AGGR_FACT_CL_DAILY alter column Circuit_BM [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_CL_DAILY alter column Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_CL_DAILY alter column InvState_Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_CL_DAILY alter column Down_Grade_Isolated [nvarchar](254) NULL;

-- alter table GoLive_N_SPWR_AGGR_FACT_EL_DAILY alter column Circuit_BM [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_EL_DAILY alter column Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_EL_DAILY alter column InvState_Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_EL_DAILY alter column Down_Grade_Isolated [nvarchar](254) NULL;

-- alter table GoLive_N_SPWR_AGGR_FACT_DF_DAILY alter column Circuit_BM [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_DF_DAILY alter column Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_DF_DAILY alter column InvState_Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_DF_DAILY alter column Down_Grade_Isolated [nvarchar](254) NULL;

-- alter table GoLive_N_SPWR_AGGR_FACT_TT_DAILY alter column Circuit_BM [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_TT_DAILY alter column Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_TT_DAILY alter column InvState_Category [nvarchar](254) NULL;
-- alter table GoLive_N_SPWR_AGGR_FACT_TT_DAILY alter column Down_Grade_Isolated [nvarchar](254) NULL;

-- load all aggregate data into GoLive_N_SPWR_AGGR_FACT_FINAL_DAILY
-- (16065 row(s) affected)

DROP TABLE IF EXISTS MES.GoLive_N_SPWR_AGGR_FACT_FINAL_DAILY;

create table MES.GoLive_N_SPWR_AGGR_FACT_FINAL_DAILY as
SELECT T1.*
  FROM
       (SELECT
              'ELOUT-D'             as Fact_Source,
              Billable_Watt,
              Category,
              Cells_Module_Type,
              Circuit_BM,
              Count_Quantity,
              Demand_Category,
              Down_Grade_Isolated,
              InvState_Category,
              ORG_ID,
              Part_Number,
              Series,
              Comments,
              Trans_shift_type,
              Trans_DateTime_year,
              Trans_DateTime_qtr,
              ShiftStart_Week,
              ShiftStart_DateTime
         FROM MES.GoLive_N_SPWR_AGGR_FACT_EL_DAILY
        UNION
        SELECT
              'TTOUT-D'             as Fact_Source,
              Billable_Watt,
              Category,
              Cells_Module_Type,
              Circuit_BM,
              Count_Quantity,
              Demand_Category,
              Down_Grade_Isolated,
              InvState_Category,
              ORG_ID,
              Part_Number,
              Series,
              Comments,
              Trans_shift_type,
              Trans_DateTime_year,
              Trans_DateTime_qtr,
              ShiftStart_Week,
              ShiftStart_DateTime
        FROM MES.GoLive_N_SPWR_AGGR_FACT_TT_DAILY
        UNION
        SELECT
              'SCARP-D'             as Fact_Source,
              Billable_Watt,
              Category,
              Cells_Module_Type,
              Circuit_BM,
              Count_Quantity,
              Demand_Category,
              Down_Grade_Isolated,
              InvState_Category,
              ORG_ID,
              Part_Number,
              Series,
              Comments,
              Trans_shift_type,
              Trans_DateTime_year,
              Trans_DateTime_qtr,
              ShiftStart_Week,
              ShiftStart_DateTime
         from MES.GoLive_N_SPWR_AGGR_FACT_DF_DAILY
        UNION
        SELECT
              'CLOSS-D'             as Fact_Source,
              Billable_Watt,
              Category,
              Cells_Module_Type,
              Circuit_BM,
              Count_Quantity,
              Demand_Category,
              Down_Grade_Isolated,
              InvState_Category,
              ORG_ID,
              Part_Number,
              Series,
              Comments,
              Trans_shift_type,
              Trans_DateTime_year,
              Trans_DateTime_qtr,
              ShiftStart_Week,
              ShiftStart_DateTime
         from MES.GoLive_N_SPWR_AGGR_FACT_CL_DAILY ) T1;
