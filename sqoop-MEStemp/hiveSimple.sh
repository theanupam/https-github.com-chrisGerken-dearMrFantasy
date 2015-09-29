#!/bin/bash

echo "##################################################"
echo " "
date 
rm timings.txt
SCRIPTBEGINTIME=$SECONDS

hadoop fs -test -d /MEStemp
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r -skipTrash /MEStemp
                else
                 echo "/MEStemp not present in HDFS"
    fi

echo " "
echo "##################################################"
echo "sqoop: Address "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 1 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Address" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Customer "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 1 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Customer/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Customer" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Department "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 1 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Department/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Department" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InvIsolatedReason "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 1 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvIsolatedReason/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest InvIsolatedReason" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InvState "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 1 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvState/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest InvState" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LineGroup "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 1 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineGroup/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LineGroup" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LineInfo "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 1 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LineInfo" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LineSection "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LineSectionID,LineSection,Description,IsRetired, 1 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineSection/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LineSection" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LineType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LineTypeID,LineType,Description,IsRetired,LineInfoPrecedence,BudgetChangeOver,BudgetEfficiency, 1 as \"org_id\"  FROM dbo.LineType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LineType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStageType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 1 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MachineStageType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStop "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 1 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStop/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MachineStop" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStopCategory "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 1 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopCategory/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MachineStopCategory" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStopReason "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 1 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReason/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MachineStopReason" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Operation "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 1 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Operation/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Operation" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OperationType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 1 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OperationType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OperationType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: PartClassification "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 1 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartClassification/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest PartClassification" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: PartSubClassification "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 1 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartSubClassification/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest PartSubClassification" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: PartType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PartTypeID,PartType,Description,PartTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID,RfInventoryAccountingModeID, 1 as \"org_id\"  FROM dbo.PartType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest PartType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Shift "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 1 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Shift/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Shift" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ShiftPattern "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 1 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ShiftPattern" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ShiftType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 1 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ShiftType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Supplier "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 1 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Supplier/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Supplier" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TagList "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT TagListID,ListName,VariantNo, 1 as \"org_id\"  FROM dbo.TagList WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagList/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TagList" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Unit "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT UnitID,Unit,Description, 1 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Unit" >> timings.txt

set hive.execution.engine=tez;
echo " "
echo "##################################################"
echo "Hive: Conditionally create data base MEStemp"
echo "##################################################"
echo " "

hive -e "CREATE DATABASE IF NOT EXISTS MEStemp"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Address"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Address (AddressID smallint, Address1 varchar(508), Address2 varchar(508), City varchar(100), County varchar(100), PostCode varchar(100), Country varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Address'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Customer"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Customer (CustomerID smallint, Customer varchar(508), CustomerCode varchar(508), AddressID smallint, RfLanguageID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Customer'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Department"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Department (DepartmentID smallint, Name varchar(508), DepartmentGroup varchar(508), Classification1 varchar(100), PlantID smallint, DepartmentCode varchar(100), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Department'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InvIsolatedReason"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InvIsolatedReason (InvIsolatedReasonID smallint, PartTypeID smallint, IsolatedReason varchar(508), InvStateID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InvIsolatedReason'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InvState"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InvState (InvStateID smallint, InvState varchar(508), Description varchar(508), RfInvStateID smallint, InvStateCode varchar(508), IsAddToProduction tinyint, IsAddToHFI tinyint, IsDefault tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InvState'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LineGroup (LineGroupID smallint, LineGroup varchar(100), LineGroupCode varchar(100), Description varchar(508), OEETarget float, WasteTarget float, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LineGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineInfo"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LineInfo (LineInfoID int, RfLineInfoEventID tinyint, LineID smallint, ShiftID int, WOID int, FromDT timestamp, ToDT timestamp, rfDayHourPeriodID int, TotalTime int, ExcludedTime int, ScheduledTime int, STOperations int, STInduced int, DTTechnical int, DTOperations int, DTQuality int, DownTime int, StopTime int, RunTime int, NotRunTime int, TheoreticalCycleTime float, QuantityScrap float, QuantityGood float, ModifiedDT timestamp, LoginID smallint, QuantityIn float, TotalInventoryProduced float, TotalInventoryReintroduced float, NetQuantityProduced float, QuantityInLineSpoilage float, TotalSpoilage float, AccountedSpoilage float, TotalInventoryIsolated float, ProductionStopJobID int, TotalUnitsProduced float, BottleNeckMachineStageID smallint, InventoryIn int, InterProdStopTime int, InProdStopTime int, QuantityUnitsIn float, QuantityInventoryIn float, TotalQuantityProduced float, TotalPacksProduced int, TotalPacksIsolated int, TotalPacksReintroduced int, TotalPacksMade int, ValidState tinyint, LineGroupID smallint, LineGroupShiftID int, LineGroupBottleneckID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LineInfo'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineSection"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LineSection (LineSectionID smallint, LineSection varchar(508), Description varchar(508), IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LineSection'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LineType (LineTypeID smallint, LineType varchar(508), Description varchar(508), IsRetired tinyint, LineInfoPrecedence tinyint, BudgetChangeOver int, BudgetEfficiency float,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LineType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStageType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStageType (MachineStageTypeID smallint, Name varchar(508), Description varchar(508), MachineStageTypeCode varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStageType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStop"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStop (MachineStopID int, MachineStopReasonID smallint, FromDT timestamp, ToDT timestamp, MachineStageID smallint, IsEdited tinyint, RevisionNo tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStop'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStopCategory"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStopCategory (MachineStopCategoryID smallint, MachineStopCategory varchar(508), Description varchar(508), MachineStageTypeID smallint, StopCategoryCode varchar(100), DisplayOrder smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStopCategory'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStopReason"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStopReason (MachineStopReasonID smallint, StopReason varchar(508), Description varchar(508), MachineStageTypeID smallint, IsPlanned tinyint, StopCode varchar(100), RfMachineStopClassID tinyint, RfLineStopReasonTypeID smallint, MachineStopCategoryID smallint, IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStopReason'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Operation"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Operation (OperationID int, OperationTypeID smallint, MachineStageID smallint, JobID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Operation'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OperationType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OperationType (OperationTypeID smallint, OperationType varchar(508), OperationTypeCode varchar(100), Description varchar(508), PartTypeID smallint, Sequence smallint, IsOptional tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OperationType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartClassification"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.PartClassification (PartClassificationID smallint, PartClassification varchar(508), RfPartClassificationID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/PartClassification'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartSubClassification"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.PartSubClassification (PartSubClassificationID smallint, PartSubClassification varchar(508), PartClassificationID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/PartSubClassification'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.PartType (PartTypeID smallint, PartType varchar(508), Description varchar(508), PartTypeCode varchar(100), Variant1TagListID smallint, Variant2TagListID smallint, Variant3TagListID smallint, Variant4TagListID smallint, Variant5TagListID smallint, Variant6TagListID smallint, Variant7TagListID smallint, Variant8TagListID smallint, Variant9TagListID smallint, Variant10TagListID smallint, Variant11TagListID smallint, Variant12TagListID smallint, Variant13TagListID smallint, Variant14TagListID smallint, Variant15TagListID smallint, Variant16TagListID smallint, Variant17TagListID smallint, Variant18TagListID smallint, Variant19TagListID smallint, Variant20TagListID smallint, RfInventoryAccountingModeID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/PartType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Shift"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Shift (ShiftID int, ShiftTypeID smallint, ShiftPatternID smallint, FromDT timestamp, ToDT timestamp, Sequence smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Shift'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ShiftPattern"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ShiftPattern (ShiftPatternID smallint, ShiftPattern varchar(100), PatternDuration int, IsPatternDirty tinyint, IsCustomPeriod tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ShiftPattern'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ShiftType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ShiftType (ShiftTypeID smallint, Name varchar(100), Description varchar(508), IsNonWorking tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ShiftType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Supplier"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Supplier (SupplierID smallint, Supplier varchar(508), SupplierCode varchar(508), AddressID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Supplier'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagList"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagList (TagListID smallint, ListName varchar(100), VariantNo tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagList'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Unit"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Unit (UnitID smallint, Unit varchar(40), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Unit'"



SCRIPTENDTIME=$SECONDS
echo "Script execution time: $(($SCRIPTBEGINTIME - $SCRIPTENDTIME)) seconds." >> timings.txt


