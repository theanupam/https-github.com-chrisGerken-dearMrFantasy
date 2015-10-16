#!/bin/bash

echo "#################################################3"
echo " "
date 

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/PartType
                else
                 echo "/MES/PartType not present in HDFS"
    fi

hadoop fs -test -d /MES/_SPML_ModuleInfo
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/_SPML_ModuleInfo
                else
                 echo "/MES/_SPML_ModuleInfo not present in HDFS"
    fi

hadoop fs -test -d /MES/Address
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Address
                else
                 echo "/MES/Address not present in HDFS"
    fi

hadoop fs -test -d /MES/BuildRecord
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/BuildRecord
                else
                 echo "/MES/BuildRecord not present in HDFS"
    fi

hadoop fs -test -d /MES/Customer
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Customer
                else
                 echo "/MES/Customer not present in HDFS"
    fi

hadoop fs -test -d /MES/Department
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Department
                else
                 echo "/MES/Department not present in HDFS"
    fi

hadoop fs -test -d /MES/InvChangeState
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/InvChangeState
                else
                 echo "/MES/InvChangeState not present in HDFS"
    fi

hadoop fs -test -d /MES/InventoryLabel
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/InventoryLabel
                else
                 echo "/MES/InventoryLabel not present in HDFS"
    fi

hadoop fs -test -d /MES/InventoryPack
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/InventoryPack
                else
                 echo "/MES/InventoryPack not present in HDFS"
    fi

hadoop fs -test -d /MES/InventoryPack_
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/InventoryPack_
                else
                 echo "MES/InventoryPack_ not present in HDFS"
    fi

hadoop fs -test -d /MES/InventoryPack_Custom
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/InventoryPack_Custom
                else
                 echo "/MES/InventoryPack_Custom not present in HDFS"
    fi

hadoop fs -test -d /MES/InvIsolatedReason
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/InvIsolatedReason
                else
                 echo "/MES/InvIsolatedReason not present in HDFS"
    fi

hadoop fs -test -d /MES/InvState
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/InvState
                else
                 echo "/MES/InvState not present in HDFS"
    fi

hadoop fs -test -d /MES/Job
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Job
                else
                 echo "/MES/Job not present in HDFS"
    fi

hadoop fs -test -d /MES/WO
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/WO
                else
                 echo "/MES/WO not present in HDFS"
    fi

hadoop fs -test -d /MES/Line
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Line
                else
                 echo "/MES/Line not present in HDFS"
    fi

hadoop fs -test -d /MES/LineGroup
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/LineGroup
                else
                 echo "/MES/LineGroup not present in HDFS"
    fi

hadoop fs -test -d /MES/LineInfo
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/LineInfo
                else
                 echo "/MES/LineInfo not present in HDFS"
    fi

hadoop fs -test -d /MES/LineSection
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/LineSection
                else
                 echo "/MES/LineSection not present in HDFS"
    fi

hadoop fs -test -d /MES/LineType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/LineType
                else
                 echo "/MES/LineType not present in HDFS"
    fi

hadoop fs -test -d /MES/Location
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Location
                else
                 echo "/MES/Location not present in HDFS"
    fi

hadoop fs -test -d /MES/LocationType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/LocationType
                else
                 echo "/MES/LocationType not present in HDFS"
    fi



hadoop fs -test -d /MES/MachineStage
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/MachineStage
                else
                 echo "/MES/MachineStage not present in HDFS"
    fi

hadoop fs -test -d /MES/MachineStageType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/MachineStageType
                else
                 echo "/MES/MachineStageType not present in HDFS"
    fi

hadoop fs -test -d /MES/MachineStop
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/MachineStop
                else
                 echo "/MES/MachineStop not present in HDFS"
    fi

hadoop fs -test -d /MES/MachineStopCategory
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/MachineStopCategory
                else
                 echo "/MES/MachineStopCategory not present in HDFS"
    fi

hadoop fs -test -d /MES/MachineStopReason
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/MachineStopReason
                else
                 echo "/MES/MachineStopReason not present in HDFS"
    fi

hadoop fs -test -d /MES/Operation
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Operation
                else
                 echo "MES/Operation not present in HDFS"
    fi

hadoop fs -test -d /MES/OperationType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/OperationType
                else
                 echo "/MES/OperationType not present in HDFS"
    fi

hadoop fs -test -d /MES/Part
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Part
                else
                 echo "/MES/Part not present in HDFS"
    fi

hadoop fs -test -d /MES/ScrapReason
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/ScrapReason
                else
                 echo "/MES/ScrapReason not present in HDFS"
    fi

hadoop fs -test -d /MES/Shift
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Shift
                else
                 echo "/MES/Shift not present in HDFS"
    fi

hadoop fs -test -d /MES/ShiftPattern
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/ShiftPattern
                else
                 echo "/MES/ShiftPattern not present in HDFS"
    fi

hadoop fs -test -d /MES/ShiftType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/ShiftType
                else
                 echo "/MES/ShiftType not present in HDFS"
    fi

hadoop fs -test -d /MES/Supplier
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Supplier
                else
                 echo "/MES/Supplier not present in HDFS"
    fi

hadoop fs -test -d /MES/Taglist
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Taglist
                else
                 echo "/MES/Taglist not present in HDFS"
    fi

hadoop fs -test -d /MES/Unit
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Unit
                else
                 echo "/MES/Unit not present in HDFS"
    fi

hadoop fs -test -d /MES/WORef
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/WORef
                else
                 echo "/MES/WORef not present in HDFS"
    fi

hadoop fs -test -d /MES/BuildRecord_
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/BuildRecord_
                else
                 echo "/MES/BuildRecord_ not present in HDFS"
    fi

hadoop fs -test -d /MES/Scrap
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Scrap
                else
                 echo "/MES/Scrap not present in HDFS"
    fi

hadoop fs -test -d /MES/Scrap_
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Scrap_
                else
                 echo "/MES/Scrap_ not present in HDFS"
    fi

hadoop fs -test -d /MES/MachineStop_
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/MachineStop_
                else
                 echo "/MES/MachineStop_ not present in HDFS"
    fi

hadoop fs -test -d /MES/Part_
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Part_
                else
                 echo "/MES/Part_ not present in HDFS"
    fi

hadoop fs -test -d /MES/Part_custom
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Part_custom
                else
                 echo "/MES/Part_custom not present in HDFS"
    fi

hadoop fs -test -d /MES/Machinestage_custom
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/Machinestage_custom
                else
                 echo "/MES/Machinestage_custom not present in HDFS"
    fi

hadoop fs -test -d /MES/InventoryLabel_
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/InventoryLabel_
                else
                 echo "/MES/InventoryLabel_ not present in HDFS"
    fi

hadoop fs -test -d /MES/InventoryLabel_custom
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MES/InventoryLabel_custom
                else
                 echo "/MES/InventoryLabel_custom not present in HDFS"
    fi





sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table PartType -m 1 --target-dir /MES/PartType/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table _SPML_moduleInfo -m 1 --target-dir /MES/_SPML_ModuleInfo/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Address -m 1 --target-dir /MES/Address/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table BuildRecord -m 1 --target-dir /MES/BuildRecord/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Customer -m 1 --target-dir /MES/Customer/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Department -m 1 --target-dir /MES/Department/ --direct  -- --schema dbo --validate


sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table InvChangeState -m 1 --target-dir /MES/InvChangeState/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table InventoryLabel -m 1 --target-dir /MES/InventoryLabel/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table InventoryPack -m 1 --target-dir /MES/InventoryPack/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table InventoryPack_ -m 1 --target-dir /MES/InventoryPack_/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table InventoryPack_Custom -m 1 --target-dir /MES/InventoryPack_Custom/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table InvIsolatedReason  -m 1 --target-dir /MES/InvIsolatedReason/ --direct  -- --schema dbo --validate


sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table InvState -m 1 --target-dir /MES/InvState/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Job -m 1 --target-dir /MES/Job/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table WO -m 1 --target-dir /MES/WO/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Line -m 1 --target-dir /MES/Line/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table LineGroup -m 1 --target-dir /MES/LineGroup/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table LineInfo -m 1 --target-dir /MES/LineInfo/ --direct  -- --schema dbo --validate


sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table LineSection -m 1 --target-dir /MES/LineSection/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table LineType -m 1 --target-dir /MES/LineType/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Location -m 1 --target-dir /MES/Location/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table LocationType -m 1 --target-dir /MES/LocationType/ --direct  -- --schema dbo --validate



sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table MachineStage -m 1 --target-dir /MES/MachineStage/ --direct  -- --schema dbo --validate


sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table MachineStageType -m 1 --target-dir /MES/MachineStageType/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table MachineStop -m 1 --target-dir /MES/MachineStop/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table MachineStopCategory -m 1 --target-dir /MES/MachineStopCategory/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table MachineStopReason -m 1 --target-dir /MES/MachineStopReason/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Operation -m 1 --target-dir /MES/Operation/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table OperationType -m 1 --target-dir /MES/OperationType/ --direct  -- --schema dbo --validate


sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Part -m 1 --target-dir /MES/Part/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table ScrapReason -m 1 --target-dir /MES/ScrapReason/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Shift -m 1 --target-dir /MES/Shift/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table ShiftPattern -m 1 --target-dir /MES/ShiftPattern/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table ShiftType -m 1 --target-dir /MES/ShiftType/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Supplier -m 1 --target-dir /MES/Supplier/ --direct  -- --schema dbo --validate


sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table TagList -m 1 --target-dir /MES/TagList/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Unit -m 1 --target-dir /MES/Unit/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table WORef -m 1 --target-dir /MES/WORef/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table BuildRecord_ -m 1 --target-dir /MES/BuildRecord_/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Scrap -m 1 --target-dir /MES/Scrap/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Scrap_ -m 1 --target-dir /MES/Scrap_/ --direct  -- --schema dbo --validate


sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table MachineStop_ -m 1 --target-dir /MES/MachineStop_/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Part_ -m 1 --target-dir /MES/Part_/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Part_custom -m 1 --target-dir /MES/Part_custom/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Machinestage_custom -m 1 --target-dir /MES/Machinestage_custom/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table InventoryLabel_ -m 1 --target-dir /MES/InventoryLabel_/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table InventoryLabel_custom -m 1 --target-dir /MES/InventoryLabel_custom/ --direct  -- --schema dbo --validate



set hive.execution.engine=tez;

hive

CREATE DATABASE IF NOT EXISTS MES;

Create External table IF NOT EXISTS MES.PartType (PartTypeID smallint, PartType varchar(254), Description varchar(254),PartTypeCode varchar(50), Variant1TagListID smallint, Variant2TagListID smallint,  Variant3TagListID smallint, Variant4TagListID smallint, Variant5TagListID smallint, Variant6TagListID smallint, Variant7TagListID smallint, Variant8TagListID smallint, Variant9TagListID smallint,  Variant10TagListID smallint,  Variant11TagListID smallint,  Variant12TagListID smallint,  Variant13TagListID smallint,  Variant14TagListID smallint,  Variant15TagListID smallint,  Variant16TagListID smallint,  Variant17TagListID smallint,  Variant18TagListID smallint,  Variant19TagListID smallint,  Variant20TagListID smallint, RfInventoryAccountingModeID tinyint) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/PartType/';


Create External table IF NOT EXISTS MES.ScrapReason (ScrapReasonID smallint, ScrapReason varchar(50), Description varchar(254), MachineStageTypeID smallint, DefaultUnitID smallint, IsRetired tinyint) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/ScrapReason';


Create External table IF NOT EXISTS MES.Address (AddressID smallint, Address1 varchar(254), Address2 varchar(254), City varchar(50), County varchar(50), PostCode varchar(50), Country varchar(50))row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Address';


Create External table IF NOT EXISTS MES._SPML_ModuleInfo (ModuleInfoID int, SerialNo varchar(254), LaminateID int, LaminateCreatedDT datetime, LaminateOrderNo varchar(254), LaminatePartNo varchar(254), BINNO varchar(254), CktFormBuildPart varchar(254), CktFormBuildMachine varchar(254), CktFormBuildDT datetime, GlassBuildPart varchar(254), GlassBuildDate  datetime, LaminationBuildMachine varchar(254), LaminationBuildDT datetime, ModuleID int, ModuleCreatedDT datetime, ModuleOrderNo varchar(254), IntendedModulePartNo varchar(254), IntendedModulePartDesc varchar(254), FramingBuildPart varchar(254), FramingBuildMachine varchar(254), FramingBuildDT datetime, JboxBuildPart varchar(254), JboxBuildDT datetime, FlashtestClassifiedDT datetime, FinalModulePartNo varchar(254), FinalModulePartDesc varchar(254), ActualPower decimal, ActualVocMod decimal, ActualIFF decimal, PackedDT timestamp, InventoryState varchar(254), JboxBuildMachine varchar(254), ActualIsc decimal, FlashtestBuildMachine varchar(254), Komax1 varchar(254), Komax2 varchar(254), Komax3 varchar(254), GlassID int, CellType varchar(50), StringerOperator varchar(50), CircuitOperator1 varchar(50), CircuitOperator2 varchar(50), TrimChangeReason varchar(2000), PowerChartGenerated tinyint, LaminateWoId int, ModuleWoId int, VisualStateId smallint, RfInvStateId smallint, ElTestDate timestamp, ElBuildMachine varchar(254), ActualVmpMod decimal, ActualImpMod decimal, TrimBuildMachine varchar(254), TrimBuildDT timestamp, CellThickness varchar(254), PalletID bigint, FlashtestID int, PadLock string, BtoCtoSerialNo varchar(254), EvaUseByDT timestamp, IsBtoCto tinyint, IntendedModuleWOID int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/_SPML_ModuleInfo';

Create External table IF NOT EXISTS MES.BuildRecord (BuildRecordID int, InvPackCreatedID int, InvPackConsumedID int, QuantityUsed decimal, UnitID smallint, BuildDT timestamp, IsEdited tinyint, RevisionNo smallint, BuildMachineStageID smallint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/BuildRecord';

Create External table IF NOT EXISTS MES.Customer (CustomerID smallint, Customer varchar(254), Customercode varchar(254), AddressID smallint, RfLanguageID smallint) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Customer';

Create External table IF NOT EXISTS MES.Department (DepartmentID smallint, Name varchar(254), DepartmentGroup varchar(254), Classification1 varchar(50), PlantID smallint, DepartmentCode varchar(50), Address2 varchar(254), City varchar(50), County varchar(50), PostCode varchar(50), Country varchar(50) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Department';

Create External table IF NOT EXISTS MES.InvChangeState (InvChangeStateID int, InventoryPackID int, FromDT timestamp, ToDT timestamp, InvIsolatedReasonID smallint, Comments varchar(254), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, IsEdited tinyint, RevisionNo tinyint, OriginalLoginID smallint, EditedInvChangeStateID int, InvStateID smallint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InvChangeState';

Create External table IF NOT EXISTS MES.InventoryLabel (InventoryLabelID int, MachineStage varchar(254),PartNumber varchar(254),PartType varchar(254),QuantityOrdered decimal, WONumber varchar(254), InventoryPackNo varchar(254), CreatedFromDT timestamp, Quantity decimal, Unit varchar(20), Line varchar(254), LabelTemplate varchar(254), LabelsPerInventoryPack smallint, ItemsPerLayer decimal, LayersPerInventoryPack int, PrinterURL varchar(1024), PrintedDT Timestamp, ItemsPerInventoryPack decimal, ScannedDT timestamp, IsCancelled tinyint, OrderQuantityPacks int, LineShortName varchar(50), PackNo int, IsReprint tinyint, PartDescription varchar(254), LabelSaveDirectory varchar(254), JobID int, IsPrintLandscape tinyint, NoCopies smallint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InventoryLabel';

Create External table IF NOT EXISTS MES.InventoryPack (InventoryPackID int, InventoryPackNo varchar(254), WOID int, JobID int, CreatedFromDT timestamp, CreatedToDT timestamp, CreatedOnMachineStageID smallint, IsEdited tinyint, RevisionNo tinyint, PartID int, Quantity decimal, UnitID smallint, Ignored tinyint, InventoryPackIndex int, CustomerUniqueKey varchar(254), ReceivedDT timestamp, BirthDT timestamp, LastBuildRecord int, msrepl_tran_version string, CurrentQuantity decimal, QuantityAdjustment decimal, PositionNumber tinyint, LocationID int, InvStateID int, LocationFromDT timestamp)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InventoryPack';

Create External table IF NOT EXISTS MES.InventoryPack_ (InventoryPackID int, Comments varchar(254), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedInventoryPackID int, Reference1 varchar(254), Reference2 varchar(254), Reference3 varchar(254), Reference4 varchar(254),Reference5 varchar(254), Reference6 varchar(254), Reference7 varchar(254), Reference8 varchar(254), Reference9 varchar(254), Reference10 varchar(254), SupplierID smallint, SupplierReference varchar(254), UseByDT timestamp, UseAfterDT timestamp)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InventoryPack_';

Create External table IF NOT EXISTS MES.InventoryPack_custom (InventoryPackID int, Txn_date timestamp, OracleStatus tinyint, IntendedWOID int, FinalWOID int, OriginalQty decimal, Seq_Id int, From_Subinventory char(10), From_Locator char(40), To_Subinventory char(10), To_Locator char(40), ScrappedShiftID int, MachineLocationID int, ScrapReasonID smallint, ScrapLocationID int, LastInventoryLabelID int, ResealedDT timestamp, ModuleInfoID int, CrateID bigint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InventoryPack_custom';

Create External table IF NOT EXISTS MES.InvIsolatedReason (InvIsolatedReasonID smallint, PartTypeID smallint, IsolatedReason varchar(254), InvStateID smallint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InvIsolatedReason';

Create External table IF NOT EXISTS MES.InvState (InvStateID smallint, InvState varchar(254), Description varchar(254), RfInvStateID smallint, InvStateCode varchar(254), IsAddToProduction tinyint, IsAddToHFI tinyint, IsDefault tinyint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InvState';

Create External table IF NOT EXISTS MES.Job (JobID int, WOID int, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDt timestamp, PlannedDuration timestamp, EstimatedStartDT timestamp, EstimatedEndDT timestamp, EstimatedDuration timestamp, ScheduledSequence smallint, LineID smallint, ProductionStartDT timestamp, ProductionEndDT timestamp, TheoreticalCycleTime decimal, BudgetChangeOver int, QuantityOrdered decimal, IsCalculated tinyint, LineGroupID smallint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Job';

Create External table IF NOT EXISTS MES.WO (WOID int, WONumber varchar(254), RunNo smallint, PartID int, QuantityOrdered decimal, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDT timestamp, EstimatedStartDT timestamp, EstimatedEndDT timestamp, CustomerID smallint, IsDiscrete tinyint, Reference1 varchar(50), Reference2 varchar(50), Reference3 varchar(50), Reference4 varchar(50), Reference5 varchar(50), WORefID int)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/WO';

Create External table IF NOT EXISTS MES.Line (LineID smallint, Line varchar(254), Description varchar(254), LineTypeID smallint, IsRetired tinyint, RfIntervalModeID tinyint, IsOEEInventoryIsolation tinyint, IsOEEInventoryReintroduction tinyint, IsCountOutputInventory tinyint, IsCountInputInventory tinyint, IsLineInfoSweepEnabled tinyint, IsWOOnSingleJob tinyint, LineShortName varchar(50), CurrentLineInfoID int, LastLineInfoID int, RfInvCreatedDateModeID tinyint, RfEndJobInvModeID tinyint, CurrentJobID int, IsScrapAsQualityLoss tinyint, IsScrapInProductionCounts tinyint, LineDownCostPerHour decimal, IsContributeLineGroupOutput tinyint,IsContributeLineGroupWaste tinyint, IsContributedLineGroupDowntime tinyint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Line';

Create External table IF NOT EXISTS MES.LineGroup (LineGroupID smallint, LineGroup varchar(50), LineGroupCode varchar(50), Description varchar(254), OEETarget decimal, WasteTarget decimal, Reference1 varchar(254), Reference2 varchar(254), Reference3 varchar(254), Reference4 varchar(254), Reference5 varchar(254))row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/LineGroup';

Create External table IF NOT EXISTS MES.LineInfo (LineInfoID int, RfLineInfoEventID tinyint, LineID smallint, ShiftID int, WOID int, FromDT timestamp, ToDT timestamp, rfDayHourPeriodID int, TotalTime int, ExcludedTime int, SToperations int, STInduced int, DTTechnical int, DTOperations int, DTQuality int, DownTime int, StopTime int, RunTime int, NotRunTime int, TheoreticalCycleTime decimal, QuantityScrap decimal, QuantityGood decimal, ModifiedDT timestamp, LoginID smallint, QuantityIn decimal, TotalInventoryProduced decimal, TotalInventoryReintroduced decimal, NetQuantityProduced decimal, QuantityLineSpoilage decimal, TotalSpoilage decimal, AccountedSpoilage decimal, TotalInventoryIsolated decimal, ProductionStopJobID int, TotalUnitsProduced decimal, BottleNeckMachineStageID smallint, InventoryIn int, InterProdStopTime int, InProdStopTime int, QuantityUnitsIn decimal, QuantityInventoryIn decimal, TotalQuantityProduced decimal, TotalPacksProduced int, TotalPacksIsolated int, TotalPacksReintroduced int, TotalPacksMade int, ValidState tinyint, LineGroupID smallint, LineGroupShiftID int, LineGroupBottleneckID smallint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/LineInfo';

Create External table IF NOT EXISTS MES.LineSection (LineSectionID smallint, LineSection varchar(254), Description varchar(254),IsRetired tinyint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/LineSection';

Create External table IF NOT EXISTS MES.LineType (LineTypeID smallint, LineType varchar(254), Description varchar(254), IsRetired tinyint, LineInfoPrecedence tinyint, BudgetChangeOver int, BudgetEfficiency decimal)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/LineType';

Create External table IF NOT EXISTS MES.Location (LocationID int, Location varchar(254), LocationTypeID smallint, IsRetired tinyint, MaxQuantity decimal, LocationCode varchar(50), Description varchar(254))row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Location';

Create External table IF NOT EXISTS MES.LocationType (LocationTypeID smallint, LocationType varchar(50), LocationTypeCode varchar(50), Description varchar(254))row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/LocationType';



Create External table IF NOT EXISTS MES.MachineStage (MachineStageID smallint, MachineStageTypeID smallint, Name varchar(254), IsRetired tinyint, DepartmentID smallint, Description varchar(254), CurrentShiftPatternID smallint, NoHeads smallint, IsOEEBottleNeck tinyint, IsProductionOutput tinyint, MachineStopID int, StoppedScreenThreshold smallint, LineSectionID smallint, IsDiscrete tinyint, RfDownTimeCollectionModeID tinyint, RfSpoilageCollectionModeID tinyint, RfProdcutionCollectionModeID tinyint, LastBuildRecord int, CurrentJobID int)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/MachineStage';

Create External table IF NOT EXISTS MES.MachineStageType (MachineStageTypeID smallint, Name varchar(254), Description varchar(254), MachineStageTypeCode varchar(50))row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/MachineStageType';

Create External table IF NOT EXISTS MES.MachineStop (MachineStopID int, MachineStopReasonID smallint, FromDT timestamp, ToDT timestamp, MachineStageID smallint, IsEdited tinyint, RevisionNo tinyint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/MachineStop';

Create External table IF NOT EXISTS MES.MachineStopCategory (MachineStopCategoryID smallint, MachineStopCategory varchar(254), Description varchar(254), MachineStageTypeID smallint, StopCategoryCode varchar(50), DisplayOrder smallint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/MachineStopCategory';

Create External table IF NOT EXISTS MES.MachineStopReason (MachineStopReasonID smallint, StopReason varchar(254), Description varchar(254), MachineStageTypeID smallint, IsPlanned tinyint, StopCode varchar(50), RfMachineStopClassID tinyint, RfLineStopReasonTypeID smallint, MachineStopCategoryID smallint, IsRetired tinyint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/MachineStopReason';

Create External table IF NOT EXISTS MES.Operation (OperationID int, OperationTypeID smallint, MachineStageID smallint, JobID int)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Operation';

Create External table IF NOT EXISTS MES.OperationType (OperationTypeID smallint, OperationType varchar(254), OperationTypeCode varchar(50), Description varchar(254), PartTypeID smallint, Sequence smallint, IsOptional tinyint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/OperationType';

Create External table IF NOT EXISTS MES.Part (PartID int, PartNumber varchar(254), Description varchar(254), IsRetired tinyint, BaseUnitID smallint, PartTypeID smallint, Reference1 varchar(254), Reference2 varchar(254), Reference3 varchar(254), Reference4 varchar(254), Reference5 varchar(254), Variant1 varchar(100), Variant2 varchar(100), Variant3 varchar(100), Variant4 varchar(100), Variant5 varchar(100), Variant6 varchar(100), Variant7 varchar(100), Variant7 varchar(100), Variant8 varchar(100), Variant9 varchar(100), Variant10 varchar(100), Variant11 varchar(100), Variant12 varchar(100), Variant13 varchar(100), Variant14 varchar(100), Variant15 varchar(100), Variant16 varchar(100), Variant17 varchar(100), Variant18 varchar(100), Variant19 varchar(100), Variant20 varchar(100))row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Part';

Create External table IF NOT EXISTS MES.BuildRecord_ (BuildRecordID int, Comments varchar(254), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, EditedBuildRecordID int, OriginalLoginID smallint, Reference1 varchar(254), Reference2 varchar(254), Reference3 varchar(254), Reference4 varchar(254), Reference5 varchar(254))row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/BuildRecord_';

Create External table IF NOT EXISTS MES.Shift (ShiftID int, ShiftTypeID smallint, ShiftPatternID smallint, FromDT timestamp, ToDT timestamp, Sequence smallint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Shift';

Create External table IF NOT EXISTS MES.ShiftPattern (ShiftPatternID smallint, ShiftPattern varchar(50), PatternDuration int, IsPatternDirty tinyint, IsCustomPeriod tinyint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/ShiftPattern';

Create External table IF NOT EXISTS MES.ShiftType (ShiftTypeID smallint, Name varchar(50), Description varchar(254), IsNonWorking tinyint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/ShiftType';

Create External table IF NOT EXISTS MES.Supplier (SupplierID smallint, Supplier varchar(254), SupplierCode varchar(254), AddressID smallint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Supplier';

Create External table IF NOT EXISTS MES.TagList (TagListID smallint, ListName varchar(50), VariantNo tinyint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/TagList';

Create External table IF NOT EXISTS MES.Unit (UnitID smallint, Unit varchar(20), Description varchar(254))row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Unit';

Create External table IF NOT EXISTS MES.WORef (WORefID int, WOReference varchar(254))row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/WORef';

Create External table IF NOT EXISTS MES.Scrap (ScrapID int, ScrapReasonID smallint, PartID int, Quantity decimal, UnitID smallint, DT timestamp, MachineStageID smallint, IsEdited tinyint, RevisionNo tinyint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Scrap';


Create External table IF NOT EXISTS MES.Scrap_ (ScrapID int, CollectionQuantity decimal, CollectionUnitID smallint, Comments varchar(254), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedScrapID int, Reference1 varchar(254), Reference2 varchar(254), Reference3 varchar(254), Reference4 varchar(254),Reference5 varchar(254))row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Scrap_';

Create External table IF NOT EXISTS MES.MachineStop_ (MachineStopID int, StopComments varchar(1024), StartComments varchar(254), StartLoginID smallint, StopLoginID smallint, OpenedStopDT timestamp, SavedStopDT timestamp, OpenedStartDT timestamp, SavedStartDT timestamp, OriginalLoginID smallint, EditedMachineStopID int)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/MachineStop_';

Create External table IF NOT EXISTS MES.Part_ (PartID int, TheoreticalSpeed decimal, LabelsPerInventoryPack smallint, ItemsPerInventoryPack decimal, ItemsPerLayer decimal, LayersPerInventorypack int, PackingCode varchar(50), LabelTemplate varchar(254), ProductionInstructions varchar(1000), QualityInstructions varchar(1000), CustomerPartNo varchar(254), CustomerPartDescription varchar(254), LabelText1 varchar(254), LabelText2 varchar(254),LabelText3 varchar(254), UnitPrice1 decimal, UnitPrice2 decimal, LegacyPartNo varchar(254), CreateDT timestamp, ModifiedDT timestamp, LoginID smallint, PartRevisionNo varchar(50),PartClassificationID smallint, LastPurchaseCost decimal, AveragePurchaseCost decimal, StandardPurchaseCost decimal, StandardManufactureCOst decimal, StandardSaleCost decimal, PartSubClassificationID smallint, CreatedInvUseByPeriod int, CreatedInvUseAfterPeriod int)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Part_';

Create External table IF NOT EXISTS MES.Part_custom (PartID int, Txn_date timestamp, Inventory_Item_Id int, Item_Type_Description varchar(254))row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Part_custom';

Create External table IF NOT EXISTS MES.Machinestage_custom (MachineStageID smallint, ModuleDatabase varchar(50), IntendedWOID int, MachineStageCode varchar(50), CurrentlaminateSize int, Color varchar(50), ModifiedDT timestamp, CleanState int, CleaningLaminateSize varchar(25), CleaningCycleNo int, CleaningLaminatePartID int)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Machinestage_custom';

Create External table IF NOT EXISTS MES.InventoryLabel_ (InventoryLabelID int, LabelColour varchar(25), EANCode varchar(20), CusNum int, PackingCode varchar(50), CustomerPartNo varchar(254), CustomerPartDescription varchar(254), LabelText1 varchar(254), LabelText2 varchar(254), LabelText3 varchar(254), Customer varchar(254), Address1 varchar(254), Address2 varchar(254), City varchar(25), County varchar(25), PostCode varchar(25), Country varchar(25))row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InventoryLabel_';

Create External table IF NOT EXISTS MES.InventoryLabel_custom (InventoryLabelID int, InventoryPackID int)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InventoryLabel_custom';

