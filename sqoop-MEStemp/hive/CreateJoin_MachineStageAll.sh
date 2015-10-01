#!/bin/bash


set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStageAll (MachineStageID smallint, MachineStageTypeID smallint, Name varchar(508), IsRetired tinyint, DepartmentID smallint, Description varchar(508), CurrentShiftPatternID smallint, NoHeads smallint, IsOEEBottleNeck tinyint, IsProductionOutput tinyint, MachineStopID int, StoppedScreenThreshold smallint, LineSectionID smallint, IsDiscrete tinyint, RfDowntimeCollectionModeID tinyint, RfSpoilageCollectionModeID tinyint, RfProductionCollectionModeID tinyint, LastBuildRecordID int, CurrentJobID int, ModuleDatabase varchar(100), IntendedWOID int, MachineStageCode varchar(100), CurrentLaminateSize int, Color varchar(100), ModifiedDT timestamp, CleanState int, CleaningCycleNo int, CleaningLaminatePartID int, CleaningLaminateSize int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStageAll'"

