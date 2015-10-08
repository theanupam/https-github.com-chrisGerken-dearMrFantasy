#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 1 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/OperationType/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 2 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/OperationType/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 3 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/OperationType/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 4 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/OperationType/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 5 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/OperationType/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.OperationType (OperationTypeID smallint, OperationType varchar(508), OperationTypeCode varchar(100), Description varchar(508), PartTypeID smallint, Sequence smallint, IsOptional tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/OperationType'"

