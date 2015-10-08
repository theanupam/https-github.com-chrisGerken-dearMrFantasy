#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 1 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineSection/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 2 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineSection/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 3 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineSection/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 4 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineSection/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 5 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineSection/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.LineSection (LineSectionID smallint, LineSection varchar(508), Description varchar(508), IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/LineSection'"

