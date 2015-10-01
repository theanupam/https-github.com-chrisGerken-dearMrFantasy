#!/bin/bash

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStageType (MachineStageTypeID smallint, Name varchar(508), Description varchar(508), MachineStageTypeCode varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStageType'"

