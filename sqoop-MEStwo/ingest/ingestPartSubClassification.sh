#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 1 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/PartSubClassification/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 2 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/PartSubClassification/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 3 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/PartSubClassification/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 4 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/PartSubClassification/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 5 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/PartSubClassification/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.PartSubClassification (PartSubClassificationID smallint, PartSubClassification varchar(508), PartClassificationID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/PartSubClassification'"

