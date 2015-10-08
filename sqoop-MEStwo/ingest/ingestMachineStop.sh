#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 1 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/MachineStop/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 2 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/MachineStop/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 3 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/MachineStop/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 4 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/MachineStop/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 5 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/MachineStop/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.MachineStop (MachineStopID int, MachineStopReasonID smallint, FromDT timestamp, ToDT timestamp, MachineStageID smallint, IsEdited tinyint, RevisionNo tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/MachineStop'"

