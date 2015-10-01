#!/bin/bash


set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.LocationAll (LocationID int, Location varchar(508), LocationTypeID smallint, IsRetired tinyint, MaxQuantity float, LocationCode varchar(100), Description varchar(508), LocationType varchar(100), LocationTypeCode varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/'"

