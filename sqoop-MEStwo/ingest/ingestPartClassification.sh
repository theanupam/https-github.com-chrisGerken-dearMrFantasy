#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 1 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/PartClassification/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 2 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/PartClassification/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 3 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/PartClassification/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 4 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/PartClassification/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 5 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/PartClassification/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.PartClassification (PartClassificationID smallint, PartClassification varchar(508), RfPartClassificationID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/PartClassification'"

