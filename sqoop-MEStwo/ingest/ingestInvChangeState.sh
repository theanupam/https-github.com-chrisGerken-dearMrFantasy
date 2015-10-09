#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvChangeStateID,InventoryPackID,FromDT,ToDT,InvIsolatedReasonID,Comments,LoginID,OpenedDT,SavedDT,IsEdited,RevisionNo,OriginalLoginID,EditedInvChangeStateID,InvStateID, 1 as \"org_id\"  FROM dbo.InvChangeState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvChangeState/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvChangeStateID,InventoryPackID,FromDT,ToDT,InvIsolatedReasonID,Comments,LoginID,OpenedDT,SavedDT,IsEdited,RevisionNo,OriginalLoginID,EditedInvChangeStateID,InvStateID, 2 as \"org_id\"  FROM dbo.InvChangeState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvChangeState/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvChangeStateID,InventoryPackID,FromDT,ToDT,InvIsolatedReasonID,Comments,LoginID,OpenedDT,SavedDT,IsEdited,RevisionNo,OriginalLoginID,EditedInvChangeStateID,InvStateID, 3 as \"org_id\"  FROM dbo.InvChangeState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvChangeState/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvChangeStateID,InventoryPackID,FromDT,ToDT,InvIsolatedReasonID,Comments,LoginID,OpenedDT,SavedDT,IsEdited,RevisionNo,OriginalLoginID,EditedInvChangeStateID,InvStateID, 4 as \"org_id\"  FROM dbo.InvChangeState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvChangeState/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvChangeStateID,InventoryPackID,FromDT,ToDT,InvIsolatedReasonID,Comments,LoginID,OpenedDT,SavedDT,IsEdited,RevisionNo,OriginalLoginID,EditedInvChangeStateID,InvStateID, 5 as \"org_id\"  FROM dbo.InvChangeState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvChangeState/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.InvChangeState (InvChangeStateID int, InventoryPackID int, FromDT timestamp, ToDT timestamp, InvIsolatedReasonID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, IsEdited tinyint, RevisionNo tinyint, OriginalLoginID smallint, EditedInvChangeStateID int, InvStateID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/InvChangeState'"

