#!/bin/bash

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.TagList (TagListID smallint, ListName varchar(100), VariantNo tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagList'"

