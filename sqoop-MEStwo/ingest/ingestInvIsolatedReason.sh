#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 1 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvIsolatedReason/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 2 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvIsolatedReason/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 3 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvIsolatedReason/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 4 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvIsolatedReason/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 5 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvIsolatedReason/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.InvIsolatedReason (InvIsolatedReasonID smallint, PartTypeID smallint, IsolatedReason varchar(508), InvStateID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/InvIsolatedReason'"

