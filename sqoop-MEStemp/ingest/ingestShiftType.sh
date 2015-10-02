#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 1 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 2 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 3 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 4 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 5 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.ShiftType (ShiftTypeID smallint, Name varchar(100), Description varchar(508), IsNonWorking tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ShiftType'"

