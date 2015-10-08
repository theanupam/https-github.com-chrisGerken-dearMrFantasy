#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 1 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Shift/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 2 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Shift/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 3 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Shift/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 4 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Shift/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 5 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Shift/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.Shift (ShiftID int, ShiftTypeID smallint, ShiftPatternID smallint, FromDT timestamp, ToDT timestamp, Sequence smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/Shift'"

