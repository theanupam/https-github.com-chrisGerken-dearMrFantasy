#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 1 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/MachineStopCategory/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 2 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/MachineStopCategory/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 3 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/MachineStopCategory/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 4 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/MachineStopCategory/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 5 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/MachineStopCategory/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.MachineStopCategory (MachineStopCategoryID smallint, MachineStopCategory varchar(508), Description varchar(508), MachineStageTypeID smallint, StopCategoryCode varchar(100), DisplayOrder smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/MachineStopCategory'"

