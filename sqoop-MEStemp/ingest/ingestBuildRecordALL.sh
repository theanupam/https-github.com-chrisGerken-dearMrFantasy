#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT BuildRecord.BuildRecordID, BuildRecord.InvPackCreatedID, BuildRecord.InvPackConsumedID, BuildRecord.QuantityUsed, BuildRecord.UnitID, BuildRecord.BuildDT, BuildRecord.IsEdited, BuildRecord.RevisionNo, BuildRecord.BuildMachineStageID, BuildRecord_.Comments, BuildRecord_.LoginID, BuildRecord_.OpenedDT, BuildRecord_.SavedDT, BuildRecord_.EditedBuildRecordID, BuildRecord_.OriginalLoginID, BuildRecord_.Reference1, BuildRecord_.Reference2, BuildRecord_.Reference3, BuildRecord_.Reference4, BuildRecord_.Reference5,  1 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord.BuildRecordID = BuildRecord_.BuildRecordID)   WHERE \$CONDITIONS" --split-by BuildRecord.BuildRecordID --num-mappers 600  --target-dir /MEStemp/BuildRecordALL/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT BuildRecord.BuildRecordID, BuildRecord.InvPackCreatedID, BuildRecord.InvPackConsumedID, BuildRecord.QuantityUsed, BuildRecord.UnitID, BuildRecord.BuildDT, BuildRecord.IsEdited, BuildRecord.RevisionNo, BuildRecord.BuildMachineStageID, BuildRecord_.Comments, BuildRecord_.LoginID, BuildRecord_.OpenedDT, BuildRecord_.SavedDT, BuildRecord_.EditedBuildRecordID, BuildRecord_.OriginalLoginID, BuildRecord_.Reference1, BuildRecord_.Reference2, BuildRecord_.Reference3, BuildRecord_.Reference4, BuildRecord_.Reference5,  2 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord.BuildRecordID = BuildRecord_.BuildRecordID)   WHERE \$CONDITIONS" --split-by BuildRecord.BuildRecordID --num-mappers 600  --target-dir /MEStemp/BuildRecordALL/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT BuildRecord.BuildRecordID, BuildRecord.InvPackCreatedID, BuildRecord.InvPackConsumedID, BuildRecord.QuantityUsed, BuildRecord.UnitID, BuildRecord.BuildDT, BuildRecord.IsEdited, BuildRecord.RevisionNo, BuildRecord.BuildMachineStageID, BuildRecord_.Comments, BuildRecord_.LoginID, BuildRecord_.OpenedDT, BuildRecord_.SavedDT, BuildRecord_.EditedBuildRecordID, BuildRecord_.OriginalLoginID, BuildRecord_.Reference1, BuildRecord_.Reference2, BuildRecord_.Reference3, BuildRecord_.Reference4, BuildRecord_.Reference5,  3 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord.BuildRecordID = BuildRecord_.BuildRecordID)   WHERE \$CONDITIONS" --split-by BuildRecord.BuildRecordID --num-mappers 600  --target-dir /MEStemp/BuildRecordALL/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT BuildRecord.BuildRecordID, BuildRecord.InvPackCreatedID, BuildRecord.InvPackConsumedID, BuildRecord.QuantityUsed, BuildRecord.UnitID, BuildRecord.BuildDT, BuildRecord.IsEdited, BuildRecord.RevisionNo, BuildRecord.BuildMachineStageID, BuildRecord_.Comments, BuildRecord_.LoginID, BuildRecord_.OpenedDT, BuildRecord_.SavedDT, BuildRecord_.EditedBuildRecordID, BuildRecord_.OriginalLoginID, BuildRecord_.Reference1, BuildRecord_.Reference2, BuildRecord_.Reference3, BuildRecord_.Reference4, BuildRecord_.Reference5,  4 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord.BuildRecordID = BuildRecord_.BuildRecordID)   WHERE \$CONDITIONS" --split-by BuildRecord.BuildRecordID --num-mappers 600  --target-dir /MEStemp/BuildRecordALL/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT BuildRecord.BuildRecordID, BuildRecord.InvPackCreatedID, BuildRecord.InvPackConsumedID, BuildRecord.QuantityUsed, BuildRecord.UnitID, BuildRecord.BuildDT, BuildRecord.IsEdited, BuildRecord.RevisionNo, BuildRecord.BuildMachineStageID, BuildRecord_.Comments, BuildRecord_.LoginID, BuildRecord_.OpenedDT, BuildRecord_.SavedDT, BuildRecord_.EditedBuildRecordID, BuildRecord_.OriginalLoginID, BuildRecord_.Reference1, BuildRecord_.Reference2, BuildRecord_.Reference3, BuildRecord_.Reference4, BuildRecord_.Reference5,  5 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord.BuildRecordID = BuildRecord_.BuildRecordID)   WHERE \$CONDITIONS" --split-by BuildRecord.BuildRecordID --num-mappers 600  --target-dir /MEStemp/BuildRecordALL/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.BuildRecordALL (BuildRecordID int, InvPackCreatedID int, InvPackConsumedID int, QuantityUsed float, UnitID smallint, BuildDT timestamp, IsEdited tinyint, RevisionNo smallint, BuildMachineStageID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, EditedBuildRecordID int, OriginalLoginID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/BuildRecordALL'"

