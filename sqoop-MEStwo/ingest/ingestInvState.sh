#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 1 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvState/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 2 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvState/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 3 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvState/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 4 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvState/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 5 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvState/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.InvState (InvStateID smallint, InvState varchar(508), Description varchar(508), RfInvStateID smallint, InvStateCode varchar(508), IsAddToProduction tinyint, IsAddToHFI tinyint, IsDefault tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/InvState'"

