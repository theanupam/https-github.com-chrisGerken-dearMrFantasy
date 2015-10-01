#!/bin/bash

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.LineSection (LineSectionID smallint, LineSection varchar(508), Description varchar(508), IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LineSection'"

