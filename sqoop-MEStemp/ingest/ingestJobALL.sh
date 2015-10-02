#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Job.JobID, Job.WOID, Job.RfJobStatusID, Job.DeadlineDT, Job.ActualStartDT, Job.ActualEndDT, Job.PlannedStartDT, Job.PlannedEndDT, Job.PlannedDuration, Job.EstimatedStartDT, Job.EstimatedEndDT, Job.EstimatedDuration, Job.ScheduledSequence, Job.LineID, Job.ProductionStartDT, Job.ProductionEndDT, Job.TheoreticalCycleTime, Job.BudgetChangeOver, Job.QuantityOrdered, Job.IsCalculated, Job.LineGroupID, Job_.JobInstructions, Job_.ReleaseDT, Job_.ReleaseLoginID, Job_.StartLoginID, Job_.EndLoginID, Job_.Comments, Job_.ModifiedDt, Job_.ModifiedLoginID, Job_.StoppedReason, Job_.SkippedReason, Job_.SkippedDT,  1 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job.JobID = Job_.JobID) FULL JOIN Job_Custom ON (Job.JobID = Job_Custom.JobID)   WHERE \$CONDITIONS" --split-by Job.JobID --num-mappers 16  --target-dir /MEStemp/JobALL/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Job.JobID, Job.WOID, Job.RfJobStatusID, Job.DeadlineDT, Job.ActualStartDT, Job.ActualEndDT, Job.PlannedStartDT, Job.PlannedEndDT, Job.PlannedDuration, Job.EstimatedStartDT, Job.EstimatedEndDT, Job.EstimatedDuration, Job.ScheduledSequence, Job.LineID, Job.ProductionStartDT, Job.ProductionEndDT, Job.TheoreticalCycleTime, Job.BudgetChangeOver, Job.QuantityOrdered, Job.IsCalculated, Job.LineGroupID, Job_.JobInstructions, Job_.ReleaseDT, Job_.ReleaseLoginID, Job_.StartLoginID, Job_.EndLoginID, Job_.Comments, Job_.ModifiedDt, Job_.ModifiedLoginID, Job_.StoppedReason, Job_.SkippedReason, Job_.SkippedDT,  2 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job.JobID = Job_.JobID) FULL JOIN Job_Custom ON (Job.JobID = Job_Custom.JobID)   WHERE \$CONDITIONS" --split-by Job.JobID --num-mappers 16  --target-dir /MEStemp/JobALL/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Job.JobID, Job.WOID, Job.RfJobStatusID, Job.DeadlineDT, Job.ActualStartDT, Job.ActualEndDT, Job.PlannedStartDT, Job.PlannedEndDT, Job.PlannedDuration, Job.EstimatedStartDT, Job.EstimatedEndDT, Job.EstimatedDuration, Job.ScheduledSequence, Job.LineID, Job.ProductionStartDT, Job.ProductionEndDT, Job.TheoreticalCycleTime, Job.BudgetChangeOver, Job.QuantityOrdered, Job.IsCalculated, Job.LineGroupID, Job_.JobInstructions, Job_.ReleaseDT, Job_.ReleaseLoginID, Job_.StartLoginID, Job_.EndLoginID, Job_.Comments, Job_.ModifiedDt, Job_.ModifiedLoginID, Job_.StoppedReason, Job_.SkippedReason, Job_.SkippedDT,  3 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job.JobID = Job_.JobID) FULL JOIN Job_Custom ON (Job.JobID = Job_Custom.JobID)   WHERE \$CONDITIONS" --split-by Job.JobID --num-mappers 16  --target-dir /MEStemp/JobALL/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Job.JobID, Job.WOID, Job.RfJobStatusID, Job.DeadlineDT, Job.ActualStartDT, Job.ActualEndDT, Job.PlannedStartDT, Job.PlannedEndDT, Job.PlannedDuration, Job.EstimatedStartDT, Job.EstimatedEndDT, Job.EstimatedDuration, Job.ScheduledSequence, Job.LineID, Job.ProductionStartDT, Job.ProductionEndDT, Job.TheoreticalCycleTime, Job.BudgetChangeOver, Job.QuantityOrdered, Job.IsCalculated, Job.LineGroupID, Job_.JobInstructions, Job_.ReleaseDT, Job_.ReleaseLoginID, Job_.StartLoginID, Job_.EndLoginID, Job_.Comments, Job_.ModifiedDt, Job_.ModifiedLoginID, Job_.StoppedReason, Job_.SkippedReason, Job_.SkippedDT,  4 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job.JobID = Job_.JobID) FULL JOIN Job_Custom ON (Job.JobID = Job_Custom.JobID)   WHERE \$CONDITIONS" --split-by Job.JobID --num-mappers 16  --target-dir /MEStemp/JobALL/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Job.JobID, Job.WOID, Job.RfJobStatusID, Job.DeadlineDT, Job.ActualStartDT, Job.ActualEndDT, Job.PlannedStartDT, Job.PlannedEndDT, Job.PlannedDuration, Job.EstimatedStartDT, Job.EstimatedEndDT, Job.EstimatedDuration, Job.ScheduledSequence, Job.LineID, Job.ProductionStartDT, Job.ProductionEndDT, Job.TheoreticalCycleTime, Job.BudgetChangeOver, Job.QuantityOrdered, Job.IsCalculated, Job.LineGroupID, Job_.JobInstructions, Job_.ReleaseDT, Job_.ReleaseLoginID, Job_.StartLoginID, Job_.EndLoginID, Job_.Comments, Job_.ModifiedDt, Job_.ModifiedLoginID, Job_.StoppedReason, Job_.SkippedReason, Job_.SkippedDT,  5 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job.JobID = Job_.JobID) FULL JOIN Job_Custom ON (Job.JobID = Job_Custom.JobID)   WHERE \$CONDITIONS" --split-by Job.JobID --num-mappers 16  --target-dir /MEStemp/JobALL/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.JobALL (JobID int, WOID int, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDT timestamp, PlannedDuration float, EstimatedStartDT timestamp, EstimatedEndDT timestamp, EstimatedDuration float, ScheduledSequence smallint, LineID smallint, ProductionStartDT timestamp, ProductionEndDT timestamp, TheoreticalCycleTime float, BudgetChangeOver int, QuantityOrdered float, IsCalculated tinyint, LineGroupID smallint, JobInstructions varchar(2048), ReleaseDT timestamp, ReleaseLoginID smallint, StartLoginID smallint, EndLoginID smallint, Comments varchar(2000), ModifiedDt timestamp, ModifiedLoginID smallint, StoppedReason varchar(508), SkippedReason varchar(508), SkippedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/JobALL'"

