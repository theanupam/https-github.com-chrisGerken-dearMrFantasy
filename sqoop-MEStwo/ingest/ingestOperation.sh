#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 1 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Operation/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 2 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Operation/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 3 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Operation/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 4 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Operation/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 5 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Operation/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.Operation (OperationID int, OperationTypeID smallint, MachineStageID smallint, JobID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/Operation'"

