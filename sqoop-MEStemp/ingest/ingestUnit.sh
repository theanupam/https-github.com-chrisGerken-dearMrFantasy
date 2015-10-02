#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 1 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 2 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 3 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 4 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 5 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.Unit (UnitID smallint, Unit varchar(40), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Unit'"

