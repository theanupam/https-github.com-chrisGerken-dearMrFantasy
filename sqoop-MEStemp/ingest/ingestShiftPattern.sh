#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 1 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 2 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 3 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 4 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 5 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.ShiftPattern (ShiftPatternID smallint, ShiftPattern varchar(100), PatternDuration int, IsPatternDirty tinyint, IsCustomPeriod tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ShiftPattern'"

