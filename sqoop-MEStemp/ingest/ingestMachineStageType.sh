#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 1 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 2 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 3 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 4 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 5 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStageType (MachineStageTypeID smallint, Name varchar(508), Description varchar(508), MachineStageTypeCode varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStageType'"

