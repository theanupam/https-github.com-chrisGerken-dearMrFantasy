#!/bin/bash

set hive.execution.engine=tez;
echo " "
echo "##################################################"
echo "Hive: Conditionally create data base MEStwo"
echo "##################################################"
echo " "

hive -e "CREATE DATABASE IF NOT EXISTS MEStwo"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.LineGroup (LineGroupID smallint, LineGroup varchar(100), LineGroupCode varchar(100), Description varchar(508), OEETarget float, WasteTarget float, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/LineGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineInfo"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.LineInfo (LineInfoID int, RfLineInfoEventID tinyint, LineID smallint, ShiftID int, WOID int, FromDT timestamp, ToDT timestamp, rfDayHourPeriodID int, TotalTime int, ExcludedTime int, ScheduledTime int, STOperations int, STInduced int, DTTechnical int, DTOperations int, DTQuality int, DownTime int, StopTime int, RunTime int, NotRunTime int, TheoreticalCycleTime float, QuantityScrap float, QuantityGood float, ModifiedDT timestamp, LoginID smallint, QuantityIn float, TotalInventoryProduced float, TotalInventoryReintroduced float, NetQuantityProduced float, QuantityInLineSpoilage float, TotalSpoilage float, AccountedSpoilage float, TotalInventoryIsolated float, ProductionStopJobID int, TotalUnitsProduced float, BottleNeckMachineStageID smallint, InventoryIn int, InterProdStopTime int, InProdStopTime int, QuantityUnitsIn float, QuantityInventoryIn float, TotalQuantityProduced float, TotalPacksProduced int, TotalPacksIsolated int, TotalPacksReintroduced int, TotalPacksMade int, ValidState tinyint, LineGroupID smallint, LineGroupShiftID int, LineGroupBottleneckID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/LineInfo'"




echo " "
echo "##################################################"
echo "Hive: Conditionally create table BuildRecordALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.BuildRecordALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/BuildRecordALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryLabelALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.InventoryLabelALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/InventoryLabelALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryPackALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.InventoryPackALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/InventoryPackALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table JobALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.JobALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/JobALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.LineALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/LineALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LocationAll"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.LocationAll ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/LocationAll'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStageAll"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.MachineStageAll ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/MachineStageAll'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.PartALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/PartALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table WOALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.WOALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/WOALL'"




