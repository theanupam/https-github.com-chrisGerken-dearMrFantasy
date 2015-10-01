#!/bin/bash

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.Supplier (SupplierID smallint, Supplier varchar(508), SupplierCode varchar(508), AddressID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Supplier'"

