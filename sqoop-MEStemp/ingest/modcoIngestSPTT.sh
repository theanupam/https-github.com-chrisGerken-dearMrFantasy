#!/bin/bash

echo "##################################################"
echo " "
date 
rm timings.txt
SCRIPTBEGINTIME=$SECONDS

echo " "
echo "##################################################"
echo "sqoop: _SPML_ModuleInfo "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     _SPML_ModuleInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ModuleInfoID,SerialNo,LaminateID,LaminateCreatedDT,LaminateOrderNo,LaminatePartNo,BINNo,CktFormBuildPart,CktFormBuildMachine,CktFormBuildDT,GlassBuildPart,GlassBuildDate,LaminationBuildMachine,LaminationBuildDT,ModuleID,ModuleCreatedDT,ModuleOrderNo,IntendedModulePartNo,IntendedModulePartDesc,FramingBuildPart,FramingBuildMachine,FramingBuildDT,JboxBuildPart,JboxBuildDT,FlashtestClassifiedDT,FinalModulePartNo,FinalModulePartDesc,ActualPower,ActualVocMod,ActualFF,PackedDT,InventoryState,JboxBuildMachine,ActualIsc,FlashtestBuildMachine,Komax1,Komax2,Komax3,GlassID,CellType,StringerOperator,CircuitOperator1,CircuitOperator2,TrimChangeReason,PowerChartGenerated,LaminateWoId,ModuleWoId,VisualStateId,RfInvStateId,ElTestDate,ElBuildMachine,ActualVmpMod,ActualImpMod,TrimBuildMachine,TrimBuildDT,CellThickness,PalletID,FlashTestID,PadLock,BtoCtoSerialNo,EvaUseByDT,IsBtoCto,IntendedModuleWOID, 4 as \"org_id\"  FROM dbo._SPML_ModuleInfo WHERE \$CONDITIONS" --split-by ModuleInfoID  --num-mappers 150 --target-dir /MEStemp/U_SPML_ModuleInfo/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER _SPML_ModuleInfo" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Address "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Address "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 4 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Address" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Customer "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Customer "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 4 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Customer/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Customer" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Department "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Department "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 4 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Department/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Department" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: InvIsolatedReason "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InvIsolatedReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 4 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvIsolatedReason/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER InvIsolatedReason" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: InvState "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InvState "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 4 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvState/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER InvState" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: LineGroup "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 4 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineGroup/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineGroup" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: LineInfo "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 4 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineInfo" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: LineSection "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineSection "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 4 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineSection/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineSection" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: LineType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineTypeID,LineType,Description,IsRetired,LineInfoPrecedence,BudgetChangeOver,BudgetEfficiency, 4 as \"org_id\"  FROM dbo.LineType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineType/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: MachineStageType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStageType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 4 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER MachineStageType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: MachineStop "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStop "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 4 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStop/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER MachineStop" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: MachineStopCategory "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStopCategory "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 4 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopCategory/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER MachineStopCategory" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: MachineStopReason "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStopReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 4 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReason/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER MachineStopReason" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Operation "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Operation "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 4 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Operation/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Operation" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: OperationType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     OperationType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 4 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OperationType/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER OperationType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: PartClassification "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 4 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartClassification/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER PartClassification" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: PartSubClassification "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartSubClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 4 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartSubClassification/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER PartSubClassification" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: PartType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartTypeID,PartType,Description,PartTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID,RfInventoryAccountingModeID, 4 as \"org_id\"  FROM dbo.PartType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartType/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER PartType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Shift "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Shift "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 4 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Shift/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Shift" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: ShiftPattern "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     ShiftPattern "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 4 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER ShiftPattern" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: ShiftType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     ShiftType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 4 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER ShiftType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Supplier "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Supplier "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 4 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Supplier/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Supplier" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: TagList "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     TagList "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT TagListID,ListName,VariantNo, 4 as \"org_id\"  FROM dbo.TagList WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagList/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER TagList" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Unit "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Unit "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 4 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Unit" >> timings.txt


echo "After simple table ingest: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt

set hive.execution.engine=tez;
echo " "
echo "##################################################"
echo "Hive: Conditionally create data base MEStemp"
echo "##################################################"
echo " "

echo "After simple table define: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: BuildRecordALL " from BuildRecord, BuildRecord_
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     BuildRecordALL " from BuildRecord, BuildRecord_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT BuildRecord.BuildRecordID, BuildRecord.InvPackCreatedID, BuildRecord.InvPackConsumedID, BuildRecord.QuantityUsed, BuildRecord.UnitID, BuildRecord.BuildDT, BuildRecord.IsEdited, BuildRecord.RevisionNo, BuildRecord.BuildMachineStageID, BuildRecord_.Comments, BuildRecord_.LoginID, BuildRecord_.OpenedDT, BuildRecord_.SavedDT, BuildRecord_.EditedBuildRecordID, BuildRecord_.OriginalLoginID, BuildRecord_.Reference1, BuildRecord_.Reference2, BuildRecord_.Reference3, BuildRecord_.Reference4, BuildRecord_.Reference5,  4 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord.BuildRecordID = BuildRecord_.BuildRecordID)   WHERE \$CONDITIONS" --split-by BuildRecord.BuildRecordID --num-mappers 150  --target-dir /MEStemp/BuildRecordALL/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse BuildRecordALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryLabelALL " from InventoryLabel, InventoryLabel_, InventoryLabel_custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InventoryLabelALL " from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryLabel.InventoryLabelID, InventoryLabel.MachineStage, InventoryLabel.PartNumber, InventoryLabel.PartType, InventoryLabel.QuantityOrdered, InventoryLabel.WONumber, InventoryLabel.InventoryPackNo, InventoryLabel.CreatedFromDT, InventoryLabel.Quantity, InventoryLabel.Unit, InventoryLabel.Line, InventoryLabel.LabelTemplate, InventoryLabel.LabelsPerInventoryPack, InventoryLabel.ItemsPerLayer, InventoryLabel.LayersPerInventoryPack, InventoryLabel.PrinterURL, InventoryLabel.PrintedDT, InventoryLabel.ItemsPerInventoryPack, InventoryLabel.ScannedDT, InventoryLabel.IsCancelled, InventoryLabel.OrderQuantityPacks, InventoryLabel.LineShortName, InventoryLabel.PackNo, InventoryLabel.IsReprint, InventoryLabel.PartDescription, InventoryLabel.LabelSaveDirectory, InventoryLabel.JobID, InventoryLabel.IsPrintLandscape, InventoryLabel.NoCopies, InventoryLabel_.LabelColour, InventoryLabel_.EANCode, InventoryLabel_.CusNum, InventoryLabel_.PackingCode, InventoryLabel_.CustomerPartNo, InventoryLabel_.CustomerPartDescription, InventoryLabel_.LabelText1, InventoryLabel_.LabelText2, InventoryLabel_.LabelText3, InventoryLabel_.Customer, InventoryLabel_.Address1, InventoryLabel_.Address2, InventoryLabel_.City, InventoryLabel_.County, InventoryLabel_.PostCode, InventoryLabel_.Country, InventoryLabel_custom.InventoryPackID,  4 as \"org_id\" FROM InventoryLabel FULL JOIN InventoryLabel_ ON (InventoryLabel.InventoryLabelID = InventoryLabel_.InventoryLabelID) FULL JOIN InventoryLabel_custom ON (InventoryLabel.InventoryLabelID = InventoryLabel_custom.InventoryLabelID)   WHERE \$CONDITIONS" --split-by InventoryLabel.InventoryLabelID --num-mappers 150  --target-dir /MEStemp/InventoryLabelALL/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse InventoryLabelALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryPackALL " from InventoryPack, InventoryPack_, InventoryPack_Custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InventoryPackALL " from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryPack.InventoryPackID, InventoryPack.InventoryPackNo, InventoryPack.WOID, InventoryPack.JobID, InventoryPack.CreatedFromDT, InventoryPack.CreatedToDT, InventoryPack.CreatedOnMachineStageID, InventoryPack.IsEdited, InventoryPack.RevisionNo, InventoryPack.PartID, InventoryPack.Quantity, InventoryPack.UnitID, InventoryPack.Ignored, InventoryPack.InventoryPackIndex, InventoryPack.CustomerUniqueKey, InventoryPack.ReceivedDT, InventoryPack.BirthDT, InventoryPack.LastBuildRecordID, InventoryPack.msrepl_tran_version, InventoryPack.CurrentQuantity, InventoryPack.QuantityAdjustment, InventoryPack.PositionNumber, InventoryPack.LocationID, InventoryPack.InvStateID, InventoryPack.LocationFromDT, InventoryPack_.Comments, InventoryPack_.LoginID, InventoryPack_.OpenedDT, InventoryPack_.SavedDT, InventoryPack_.OriginalLoginID, InventoryPack_.EditedInventoryPackID, InventoryPack_.Reference1, InventoryPack_.Reference2, InventoryPack_.Reference3, InventoryPack_.Reference4, InventoryPack_.Reference5, InventoryPack_.Reference6, InventoryPack_.Reference7, InventoryPack_.Reference8, InventoryPack_.Reference9, InventoryPack_.Reference10, InventoryPack_.SupplierID, InventoryPack_.SupplierReference, InventoryPack_.UseByDT, InventoryPack_.UseAfterDT, InventoryPack_Custom.Txn_date, InventoryPack_Custom.OracleStatus, InventoryPack_Custom.IntendedWOID, InventoryPack_Custom.FinalWOID, InventoryPack_Custom.OriginalQty, InventoryPack_Custom.Seq_Id, InventoryPack_Custom.From_Subinventory, InventoryPack_Custom.From_Locator, InventoryPack_Custom.To_Subinventory, InventoryPack_Custom.To_Locator, InventoryPack_Custom.ScrappedShiftID, InventoryPack_Custom.LastInventoryLabelID, InventoryPack_Custom.ScrapLocationID, InventoryPack_Custom.MachineLocationID, InventoryPack_Custom.ScrapReasonID, InventoryPack_Custom.ModuleInfoID, InventoryPack_Custom.ResealedDT, InventoryPack_Custom.CrateID,  4 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack.InventoryPackID = InventoryPack_.InventoryPackID) FULL JOIN InventoryPack_Custom ON (InventoryPack.InventoryPackID = InventoryPack_Custom.InventoryPackId)   WHERE \$CONDITIONS" --split-by InventoryPack.InventoryPackID --num-mappers 150  --target-dir /MEStemp/InventoryPackALL/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse InventoryPackALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: JobALL " from Job, Job_, Job_Custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     JobALL " from Job, Job_, Job_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Job.JobID, Job.WOID, Job.RfJobStatusID, Job.DeadlineDT, Job.ActualStartDT, Job.ActualEndDT, Job.PlannedStartDT, Job.PlannedEndDT, Job.PlannedDuration, Job.EstimatedStartDT, Job.EstimatedEndDT, Job.EstimatedDuration, Job.ScheduledSequence, Job.LineID, Job.ProductionStartDT, Job.ProductionEndDT, Job.TheoreticalCycleTime, Job.BudgetChangeOver, Job.QuantityOrdered, Job.IsCalculated, Job.LineGroupID, Job_.JobInstructions, Job_.ReleaseDT, Job_.ReleaseLoginID, Job_.StartLoginID, Job_.EndLoginID, Job_.Comments, Job_.ModifiedDt, Job_.ModifiedLoginID, Job_.StoppedReason, Job_.SkippedReason, Job_.SkippedDT,  4 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job.JobID = Job_.JobID) FULL JOIN Job_Custom ON (Job.JobID = Job_Custom.JobID)   WHERE \$CONDITIONS" --split-by Job.JobID --num-mappers 150  --target-dir /MEStemp/JobALL/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse JobALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LineALL " from Line, Line_
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineALL " from Line, Line_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Line.LineID, Line.Line, Line.Description, Line.LineTypeID, Line.IsRetired, Line.RfIntervalModeID, Line.IsOEEInventoryIsolation, Line.IsOEEInventoryReintroduction, Line.IsCountOutputInventory, Line.IsCountInputInventory, Line.IsLineInfoSweepEnabled, Line.IsWOOnSingleJob, Line.LineShortName, Line.CurrentLineInfoID, Line.LastLineInfoID, Line.RfInvCreatedDateModeID, Line.RfEndJobInvModeID, Line.CurrentJobID, Line.IsScrapAsQualityLoss, Line.IsScrapInProductionCounts, Line.LineDownCostPerHour, Line.IsContributeLineGroupOutput, Line.IsContributeLineGroupWaste, Line.IsContributeLineGroupDowntime, Line_.OEETarget, Line_.WasteTarget, Line_.Reference1, Line_.Reference2, Line_.Reference3, Line_.Reference4, Line_.Reference5,  4 as \"org_id\" FROM Line FULL JOIN Line_ ON (Line.LineID = Line_.LineID)   WHERE \$CONDITIONS" --split-by Line.LineID --num-mappers 150  --target-dir /MEStemp/LineALL/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse LineALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LocationAll " from Location, LocationType
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LocationAll " from Location, LocationType"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Location.LocationID, Location.Location, Location.LocationTypeID, Location.IsRetired, Location.MaxQuantity, Location.LocationCode, Location.Description, LocationType.LocationType, LocationType.LocationTypeCode,  4 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location.LocationID = LocationType.LocationTypeID)   WHERE \$CONDITIONS" --split-by Location.LocationID --num-mappers 150  --target-dir /MEStemp/LocationAll/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse LocationAll" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStageAll " from MachineStage, MachineStage_Custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStageAll " from MachineStage, MachineStage_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStage.MachineStageID, MachineStage.MachineStageTypeID, MachineStage.Name, MachineStage.IsRetired, MachineStage.DepartmentID, MachineStage.Description, MachineStage.CurrentShiftPatternID, MachineStage.NoHeads, MachineStage.IsOEEBottleNeck, MachineStage.IsProductionOutput, MachineStage.MachineStopID, MachineStage.StoppedScreenThreshold, MachineStage.LineSectionID, MachineStage.IsDiscrete, MachineStage.RfDowntimeCollectionModeID, MachineStage.RfSpoilageCollectionModeID, MachineStage.RfProductionCollectionModeID, MachineStage.LastBuildRecordID, MachineStage.CurrentJobID, MachineStage_Custom.ModuleDatabase, MachineStage_Custom.IntendedWOID, MachineStage_Custom.MachineStageCode, MachineStage_Custom.CurrentLaminateSize, MachineStage_Custom.Color, MachineStage_Custom.ModifiedDT, MachineStage_Custom.CleanState, MachineStage_Custom.CleaningCycleNo, MachineStage_Custom.CleaningLaminatePartID, MachineStage_Custom.CleaningLaminateSize,  4 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage.MachineStageID = MachineStage_Custom.MachineStageID)   WHERE \$CONDITIONS" --split-by MachineStage.MachineStageID --num-mappers 150  --target-dir /MEStemp/MachineStageAll/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse MachineStageAll" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: PartALL " from Part, Part_, Part_custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartALL " from Part, Part_, Part_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Part.PartID, Part.PartNumber, Part.Description, Part.IsRetired, Part.BaseUnitID, Part.PartTypeID, Part.Reference1, Part.Reference2, Part.Reference3, Part.Reference4, Part.Reference5, Part.Variant1, Part.Variant2, Part.Variant3, Part.Variant4, Part.Variant5, Part.Variant6, Part.Variant7, Part.Variant8, Part.Variant9, Part.Variant10, Part.Variant11, Part.Variant12, Part.Variant13, Part.Variant14, Part.Variant15, Part.Variant16, Part.Variant17, Part.Variant18, Part.Variant19, Part.Variant20, Part_.TheoreticalSpeed, Part_.LabelsPerInventoryPack, Part_.ItemsPerInventoryPack, Part_.ItemsPerLayer, Part_.LayersPerInventoryPack, Part_.PackingCode, Part_.LabelTemplate, Part_.ProductionInstructions, Part_.QualityInstructions, Part_.CustomerPartNo, Part_.CustomerPartDescription, Part_.LabelText1, Part_.LabelText2, Part_.LabelText3, Part_.UnitPrice1, Part_.UnitPrice2, Part_.LegacyPartNo, Part_.CreateDT, Part_.ModifiedDT, Part_.LoginID, Part_.PartRevisionNo, Part_.PartClassificationID, Part_.LastPurchaseCost, Part_.AveragePurchaseCost, Part_.StandardPurchaseCost, Part_.StandardManufactureCost, Part_.StandardSaleCost, Part_.PartSubClassificationID, Part_.CreatedInvUseByPeriod, Part_.CreatedInvUseAfterPeriod, Part_custom.Txn_date, Part_custom.Inventory_Item_Id, Part_custom.Item_Type_Description,  4 as \"org_id\" FROM Part FULL JOIN Part_ ON (Part.PartID = Part_.PartID) FULL JOIN Part_custom ON (Part.PartID = Part_custom.PartID)   WHERE \$CONDITIONS" --split-by Part.PartID --num-mappers 150  --target-dir /MEStemp/PartALL/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse PartALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: WOALL " from WO, WO_
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     WOALL " from WO, WO_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT WO.WOID, WO.WONumber, WO.RunNo, WO.PartID, WO.QuantityOrdered, WO.RfJobStatusID, WO.DeadlineDT, WO.ActualStartDT, WO.ActualEndDT, WO.PlannedStartDT, WO.PlannedEndDT, WO.EstimatedStartDT, WO.EstimatedEndDT, WO.CustomerID, WO.IsDiscrete, WO.Reference1, WO.Reference2, WO.Reference3, WO.Reference4, WO.Reference5, WO.WORefID, WO_.CustomerOrderNo, WO_.LabelsPerInventoryPack, WO_.ItemsPerInventoryPack, WO_.ItemsPerLayer, WO_.LayersPerInventoryPack, WO_.PackingCode, WO_.LabelTemplate, WO_.LabelColour, WO_.EANCode, WO_.CusStartNum, WO_.CusEndNum, WO_.CustomerPartNo, WO_.CustomerPartDescription, WO_.LabelText1, WO_.LabelText2, WO_.LabelText3, WO_.PrinterURL, WO_.BOMVariantID,  4 as \"org_id\" FROM WO FULL JOIN WO_ ON (WO.WOID = WO_.WOID)   WHERE \$CONDITIONS" --split-by WO.WOID --num-mappers 150  --target-dir /MEStemp/WOALL/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse WOALL" >> timings.txt


echo "After joined table ingest: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt

echo "Script execution time: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt


