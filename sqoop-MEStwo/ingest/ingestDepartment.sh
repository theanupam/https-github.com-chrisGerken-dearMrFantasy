#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 1 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Department/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 2 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Department/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 3 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Department/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 4 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Department/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 5 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Department/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.Department (DepartmentID smallint, Name varchar(508), DepartmentGroup varchar(508), Classification1 varchar(100), PlantID smallint, DepartmentCode varchar(100), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/Department'"

