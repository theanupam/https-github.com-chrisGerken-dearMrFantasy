#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ScrapReasonID,ScrapReason,Description,MachineStageTypeID,DefaultUnitID,IsRetired, 1 as \"org_id\"  FROM dbo.ScrapReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/ScrapReason/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ScrapReasonID,ScrapReason,Description,MachineStageTypeID,DefaultUnitID,IsRetired, 2 as \"org_id\"  FROM dbo.ScrapReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/ScrapReason/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ScrapReasonID,ScrapReason,Description,MachineStageTypeID,DefaultUnitID,IsRetired, 3 as \"org_id\"  FROM dbo.ScrapReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/ScrapReason/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ScrapReasonID,ScrapReason,Description,MachineStageTypeID,DefaultUnitID,IsRetired, 4 as \"org_id\"  FROM dbo.ScrapReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/ScrapReason/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ScrapReasonID,ScrapReason,Description,MachineStageTypeID,DefaultUnitID,IsRetired, 5 as \"org_id\"  FROM dbo.ScrapReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/ScrapReason/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.ScrapReason (ScrapReasonID smallint, ScrapReason varchar(100), Description varchar(508), MachineStageTypeID smallint, DefaultUnitID smallint, IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/ScrapReason'"

