#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  1 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location. = LocationType.)   WHERE \$CONDITIONS" --split-by Location. --num-mappers 600  --target-dir /MEStwo/LocationAll/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  2 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location. = LocationType.)   WHERE \$CONDITIONS" --split-by Location. --num-mappers 600  --target-dir /MEStwo/LocationAll/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location. = LocationType.)   WHERE \$CONDITIONS" --split-by Location. --num-mappers 600  --target-dir /MEStwo/LocationAll/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  4 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location. = LocationType.)   WHERE \$CONDITIONS" --split-by Location. --num-mappers 600  --target-dir /MEStwo/LocationAll/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  5 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location. = LocationType.)   WHERE \$CONDITIONS" --split-by Location. --num-mappers 600  --target-dir /MEStwo/LocationAll/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.LocationAll ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/LocationAll'"

