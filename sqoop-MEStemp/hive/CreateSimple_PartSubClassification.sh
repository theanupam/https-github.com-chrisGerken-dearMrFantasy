#!/bin/bash

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.PartSubClassification (PartSubClassificationID smallint, PartSubClassification varchar(508), PartClassificationID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/PartSubClassification'"

