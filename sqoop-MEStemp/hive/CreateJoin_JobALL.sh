#!/bin/bash


set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.JobALL (JobID int, WOID int, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDT timestamp, PlannedDuration float, EstimatedStartDT timestamp, EstimatedEndDT timestamp, EstimatedDuration float, ScheduledSequence smallint, LineID smallint, ProductionStartDT timestamp, ProductionEndDT timestamp, TheoreticalCycleTime float, BudgetChangeOver int, QuantityOrdered float, IsCalculated tinyint, LineGroupID smallint, JobInstructions varchar(2048), ReleaseDT timestamp, ReleaseLoginID smallint, StartLoginID smallint, EndLoginID smallint, Comments varchar(2000), ModifiedDt timestamp, ModifiedLoginID smallint, StoppedReason varchar(508), SkippedReason varchar(508), SkippedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/JobALL'"

