#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 1 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Supplier/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 2 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Supplier/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 3 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Supplier/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 4 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Supplier/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 5 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Supplier/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.Supplier (SupplierID smallint, Supplier varchar(508), SupplierCode varchar(508), AddressID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/Supplier'"

