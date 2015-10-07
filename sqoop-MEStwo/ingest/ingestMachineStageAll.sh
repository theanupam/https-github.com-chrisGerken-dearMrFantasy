#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  1 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage. = MachineStage_Custom.)   WHERE \$CONDITIONS" --split-by MachineStage. --num-mappers 600  --target-dir /MEStwo/MachineStageAll/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  2 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage. = MachineStage_Custom.)   WHERE \$CONDITIONS" --split-by MachineStage. --num-mappers 600  --target-dir /MEStwo/MachineStageAll/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage. = MachineStage_Custom.)   WHERE \$CONDITIONS" --split-by MachineStage. --num-mappers 600  --target-dir /MEStwo/MachineStageAll/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  4 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage. = MachineStage_Custom.)   WHERE \$CONDITIONS" --split-by MachineStage. --num-mappers 600  --target-dir /MEStwo/MachineStageAll/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  5 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage. = MachineStage_Custom.)   WHERE \$CONDITIONS" --split-by MachineStage. --num-mappers 600  --target-dir /MEStwo/MachineStageAll/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.MachineStageAll ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/MachineStageAll'"

