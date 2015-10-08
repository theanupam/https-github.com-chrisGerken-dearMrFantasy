#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 1 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Customer/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 2 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Customer/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 3 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Customer/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 4 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Customer/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 5 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Customer/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.Customer (CustomerID smallint, Customer varchar(508), CustomerCode varchar(508), AddressID smallint, RfLanguageID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/Customer'"

