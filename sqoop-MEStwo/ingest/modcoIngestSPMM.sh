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
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ModuleInfoID,SerialNo,LaminateID,LaminateCreatedDT,LaminateOrderNo,LaminatePartNo,BINNo,CktFormBuildPart,CktFormBuildMachine,CktFormBuildDT,GlassBuildPart,GlassBuildDate,LaminationBuildMachine,LaminationBuildDT,ModuleID,ModuleCreatedDT,ModuleOrderNo,IntendedModulePartNo,IntendedModulePartDesc,FramingBuildPart,FramingBuildMachine,FramingBuildDT,JboxBuildPart,JboxBuildDT,FlashtestClassifiedDT,FinalModulePartNo,FinalModulePartDesc,ActualPower,ActualVocMod,ActualFF,PackedDT,InventoryState,JboxBuildMachine,ActualIsc,FlashtestBuildMachine,Komax1,Komax2,Komax3,GlassID,CellType,StringerOperator,CircuitOperator1,CircuitOperator2,TrimChangeReason,PowerChartGenerated,LaminateWoId,ModuleWoId,VisualStateId,RfInvStateId,ElTestDate,ElBuildMachine,ActualVmpMod,ActualImpMod,TrimBuildMachine,TrimBuildDT,CellThickness,PalletID,FlashTestID,PadLock,BtoCtoSerialNo,EvaUseByDT, 2 as \"org_id\"  FROM dbo._SPML_ModuleInfo WHERE \$CONDITIONS" --split-by ModuleInfoID  --num-mappers 600 --target-dir /MEStwo/U_SPML_ModuleInfo/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER _SPML_ModuleInfo" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Address "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Address "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 2 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Address/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Address" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Customer "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Customer "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 2 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Customer/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Customer" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Department "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Department "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 2 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Department/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Department" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: InvChangeState "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InvChangeState "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvChangeStateID,InventoryPackID,FromDT,ToDT,InvIsolatedReasonID,Comments,LoginID,OpenedDT,SavedDT,IsEdited,RevisionNo,OriginalLoginID,EditedInvChangeStateID,InvStateID, 2 as \"org_id\"  FROM dbo.InvChangeState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvChangeState/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER InvChangeState" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: InvIsolatedReason "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InvIsolatedReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 2 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvIsolatedReason/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER InvIsolatedReason" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: InvState "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InvState "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 2 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/InvState/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER InvState" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: LineGroup "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 2 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineGroup/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineGroup" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: LineInfo "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 2 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineInfo/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineInfo" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: LineSection "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineSection "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 2 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineSection/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineSection" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: LineType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineTypeID,LineType,Description,IsRetired,LineInfoPrecedence,BudgetChangeOver,BudgetEfficiency, 2 as \"org_id\"  FROM dbo.LineType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineType/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: MachineStageType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStageType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 2 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/MachineStageType/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER MachineStageType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: MachineStopCategory "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStopCategory "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 2 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/MachineStopCategory/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER MachineStopCategory" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: MachineStopReason "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStopReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 2 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/MachineStopReason/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER MachineStopReason" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Operation "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Operation "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 2 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Operation/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Operation" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: OperationType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     OperationType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 2 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/OperationType/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER OperationType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: PartClassification "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 2 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/PartClassification/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER PartClassification" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: PartSubClassification "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartSubClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 2 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/PartSubClassification/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER PartSubClassification" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: PartType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartTypeID,PartType,Description,PartTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID,RfInventoryAccountingModeID, 2 as \"org_id\"  FROM dbo.PartType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/PartType/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER PartType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: ScrapReason "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     ScrapReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ScrapReasonID,ScrapReason,Description,MachineStageTypeID,DefaultUnitID,IsRetired, 2 as \"org_id\"  FROM dbo.ScrapReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/ScrapReason/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER ScrapReason" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Shift "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Shift "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 2 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Shift/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Shift" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: ShiftPattern "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     ShiftPattern "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 2 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/ShiftPattern/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER ShiftPattern" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: ShiftType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     ShiftType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 2 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/ShiftType/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER ShiftType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Supplier "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Supplier "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 2 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Supplier/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Supplier" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: TagList "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     TagList "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT TagListID,ListName,VariantNo, 2 as \"org_id\"  FROM dbo.TagList WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/TagList/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER TagList" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Unit "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Unit "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 2 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/Unit/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Unit" >> timings.txt


echo "After simple table ingest: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt

set hive.execution.engine=tez;
echo " "
echo "##################################################"
echo "Hive: Conditionally create data base MEStwo"
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
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT BuildRecord.BuildRecordID, BuildRecord.InvPackCreatedID, BuildRecord.InvPackConsumedID, BuildRecord.QuantityUsed, BuildRecord.UnitID, BuildRecord.BuildDT, BuildRecord.IsEdited, BuildRecord.RevisionNo, BuildRecord.BuildMachineStageID, BuildRecord_.Comments, BuildRecord_.LoginID, BuildRecord_.OpenedDT, BuildRecord_.SavedDT, BuildRecord_.EditedBuildRecordID, BuildRecord_.OriginalLoginID, BuildRecord_.Reference1, BuildRecord_.Reference2, BuildRecord_.Reference3, BuildRecord_.Reference4, BuildRecord_.Reference5,  2 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord.BuildRecordID = BuildRecord_.BuildRecordID)   WHERE \$CONDITIONS" --split-by BuildRecord.BuildRecordID --num-mappers 600  --target-dir /MEStwo/BuildRecordALL/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila BuildRecordALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryLabelALL " from InventoryLabel, InventoryLabel_, InventoryLabel_custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InventoryLabelALL " from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryLabel.InventoryLabelID, InventoryLabel.MachineStage, InventoryLabel.PartNumber, InventoryLabel.PartType, InventoryLabel.QuantityOrdered, InventoryLabel.WONumber, InventoryLabel.InventoryPackNo, InventoryLabel.CreatedFromDT, InventoryLabel.Quantity, InventoryLabel.Unit, InventoryLabel.Line, InventoryLabel.LabelTemplate, InventoryLabel.LabelsPerInventoryPack, InventoryLabel.ItemsPerLayer, InventoryLabel.LayersPerInventoryPack, InventoryLabel.PrinterURL, InventoryLabel.PrintedDT, InventoryLabel.ItemsPerInventoryPack, InventoryLabel.ScannedDT, InventoryLabel.IsCancelled, InventoryLabel.OrderQuantityPacks, InventoryLabel.LineShortName, InventoryLabel.PackNo, InventoryLabel.IsReprint, InventoryLabel.PartDescription, InventoryLabel.LabelSaveDirectory, InventoryLabel.JobID, InventoryLabel.IsPrintLandscape, InventoryLabel.NoCopies, InventoryLabel_.LabelColour, InventoryLabel_.EANCode, InventoryLabel_.CusNum, InventoryLabel_.PackingCode, InventoryLabel_.CustomerPartNo, InventoryLabel_.CustomerPartDescription, InventoryLabel_.LabelText1, InventoryLabel_.LabelText2, InventoryLabel_.LabelText3, InventoryLabel_.Customer, InventoryLabel_.Address1, InventoryLabel_.Address2, InventoryLabel_.City, InventoryLabel_.County, InventoryLabel_.PostCode, InventoryLabel_.Country, InventoryLabel_custom.InventoryPackID,  2 as \"org_id\" FROM InventoryLabel FULL JOIN InventoryLabel_ ON (InventoryLabel.InventoryLabelID = InventoryLabel_.InventoryLabelID) FULL JOIN InventoryLabel_custom ON (InventoryLabel.InventoryLabelID = InventoryLabel_custom.InventoryLabelID)   WHERE \$CONDITIONS" --split-by InventoryLabel.InventoryLabelID --num-mappers 600  --target-dir /MEStwo/InventoryLabelALL/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila InventoryLabelALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryPackALL " from InventoryPack, InventoryPack_, InventoryPack_Custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InventoryPackALL " from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryPack.InventoryPackID, InventoryPack.InventoryPackNo, InventoryPack.WOID, InventoryPack.JobID, InventoryPack.CreatedFromDT, InventoryPack.CreatedToDT, InventoryPack.CreatedOnMachineStageID, InventoryPack.IsEdited, InventoryPack.RevisionNo, InventoryPack.PartID, InventoryPack.Quantity, InventoryPack.UnitID, InventoryPack.Ignored, InventoryPack.InventoryPackIndex, InventoryPack.CustomerUniqueKey, InventoryPack.ReceivedDT, InventoryPack.BirthDT, InventoryPack.LastBuildRecordID, InventoryPack.msrepl_tran_version, InventoryPack.CurrentQuantity, InventoryPack.QuantityAdjustment, InventoryPack.PositionNumber, InventoryPack.LocationID, InventoryPack.InvStateID, InventoryPack.LocationFromDT, InventoryPack_.Comments, InventoryPack_.LoginID, InventoryPack_.OpenedDT, InventoryPack_.SavedDT, InventoryPack_.OriginalLoginID, InventoryPack_.EditedInventoryPackID, InventoryPack_.Reference1, InventoryPack_.Reference2, InventoryPack_.Reference3, InventoryPack_.Reference4, InventoryPack_.Reference5, InventoryPack_.Reference6, InventoryPack_.Reference7, InventoryPack_.Reference8, InventoryPack_.Reference9, InventoryPack_.Reference10, InventoryPack_.SupplierID, InventoryPack_.SupplierReference, InventoryPack_.UseByDT, InventoryPack_.UseAfterDT, InventoryPack_Custom.Txn_date, InventoryPack_Custom.OracleStatus, InventoryPack_Custom.IntendedWOID, InventoryPack_Custom.FinalWOID, InventoryPack_Custom.OriginalQty, InventoryPack_Custom.Seq_Id, InventoryPack_Custom.From_Subinventory, InventoryPack_Custom.From_Locator, InventoryPack_Custom.To_Subinventory, InventoryPack_Custom.To_Locator, InventoryPack_Custom.ScrappedShiftID, InventoryPack_Custom.LastInventoryLabelID, InventoryPack_Custom.ScrapLocationID, InventoryPack_Custom.MachineLocationID, InventoryPack_Custom.ScrapReasonID, InventoryPack_Custom.ModuleInfoID, InventoryPack_Custom.ResealedDT,  2 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack.InventoryPackID = InventoryPack_.InventoryPackID) FULL JOIN InventoryPack_Custom ON (InventoryPack.InventoryPackID = InventoryPack_Custom.InventoryPackId)   WHERE \$CONDITIONS" --split-by InventoryPack.InventoryPackID --num-mappers 600  --target-dir /MEStwo/InventoryPackALL/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila InventoryPackALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: JobALL " from Job, Job_, Job_Custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     JobALL " from Job, Job_, Job_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Job.JobID, Job.WOID, Job.RfJobStatusID, Job.DeadlineDT, Job.ActualStartDT, Job.ActualEndDT, Job.PlannedStartDT, Job.PlannedEndDT, Job.PlannedDuration, Job.EstimatedStartDT, Job.EstimatedEndDT, Job.EstimatedDuration, Job.ScheduledSequence, Job.LineID, Job.ProductionStartDT, Job.ProductionEndDT, Job.TheoreticalCycleTime, Job.BudgetChangeOver, Job.QuantityOrdered, Job.IsCalculated, Job.LineGroupID, Job_.JobInstructions, Job_.ReleaseDT, Job_.ReleaseLoginID, Job_.StartLoginID, Job_.EndLoginID, Job_.Comments, Job_.ModifiedDt, Job_.ModifiedLoginID, Job_.StoppedReason, Job_.SkippedReason, Job_.SkippedDT,  2 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job.JobID = Job_.JobID) FULL JOIN Job_Custom ON (Job.JobID = Job_Custom.JobID)   WHERE \$CONDITIONS" --split-by Job.JobID --num-mappers 600  --target-dir /MEStwo/JobALL/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila JobALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LineALL " from Line, Line_
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineALL " from Line, Line_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Line.LineID, Line.Line, Line.Description, Line.LineTypeID, Line.IsRetired, Line.RfIntervalModeID, Line.IsOEEInventoryIsolation, Line.IsOEEInventoryReintroduction, Line.IsCountOutputInventory, Line.IsCountInputInventory, Line.IsLineInfoSweepEnabled, Line.IsWOOnSingleJob, Line.LineShortName, Line.CurrentLineInfoID, Line.LastLineInfoID, Line.RfInvCreatedDateModeID, Line.RfEndJobInvModeID, Line.CurrentJobID, Line.IsScrapAsQualityLoss, Line.IsScrapInProductionCounts, Line.LineDownCostPerHour, Line.IsContributeLineGroupOutput, Line.IsContributeLineGroupWaste, Line.IsContributeLineGroupDowntime, Line_.OEETarget, Line_.WasteTarget, Line_.Reference1, Line_.Reference2, Line_.Reference3, Line_.Reference4, Line_.Reference5,  2 as \"org_id\" FROM Line FULL JOIN Line_ ON (Line.LineID = Line_.LineID)   WHERE \$CONDITIONS" --split-by Line.LineID --num-mappers 600  --target-dir /MEStwo/LineALL/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila LineALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LocationAll " from Location, LocationType
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LocationAll " from Location, LocationType"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Location.LocationID, Location.Location, Location.LocationTypeID, Location.IsRetired, Location.MaxQuantity, Location.LocationCode, Location.Description, LocationType.LocationType, LocationType.LocationTypeCode,  2 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location.LocationID = LocationType.LocationTypeID)   WHERE \$CONDITIONS" --split-by Location.LocationID --num-mappers 600  --target-dir /MEStwo/LocationAll/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila LocationAll" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStageAll " from MachineStage, MachineStage_Custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStageAll " from MachineStage, MachineStage_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStage.MachineStageID, MachineStage.MachineStageTypeID, MachineStage.Name, MachineStage.IsRetired, MachineStage.DepartmentID, MachineStage.Description, MachineStage.CurrentShiftPatternID, MachineStage.NoHeads, MachineStage.IsOEEBottleNeck, MachineStage.IsProductionOutput, MachineStage.MachineStopID, MachineStage.StoppedScreenThreshold, MachineStage.LineSectionID, MachineStage.IsDiscrete, MachineStage.RfDowntimeCollectionModeID, MachineStage.RfSpoilageCollectionModeID, MachineStage.RfProductionCollectionModeID, MachineStage.LastBuildRecordID, MachineStage.CurrentJobID, MachineStage_Custom.ModuleDatabase, MachineStage_Custom.IntendedWOID, MachineStage_Custom.MachineStageCode,  2 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage.MachineStageID = MachineStage_Custom.MachineStageID)   WHERE \$CONDITIONS" --split-by MachineStage.MachineStageID --num-mappers 600  --target-dir /MEStwo/MachineStageAll/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila MachineStageAll" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStopAll " from MachineStop, MachineStop_
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStopAll " from MachineStop, MachineStop_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStop.MachineStopID, MachineStop.MachineStopReasonID, MachineStop.FromDT, MachineStop.ToDT, MachineStop.MachineStageID, MachineStop.IsEdited, MachineStop.RevisionNo, MachineStop_.StopComments, MachineStop_.StartComments, MachineStop_.StartLoginID, MachineStop_.StopLoginID, MachineStop_.OpenedStopDT, MachineStop_.SavedStopDT, MachineStop_.OpenedStartDT, MachineStop_.SavedStartDT, MachineStop_.OriginalLoginID, MachineStop_.EditedMachineStopID,  2 as \"org_id\" FROM MachineStop FULL JOIN MachineStop_ ON (MachineStop.MachineStopID = MachineStop_.MachineStopID)   WHERE \$CONDITIONS" --split-by MachineStop.MachineStopID --num-mappers 600  --target-dir /MEStwo/MachineStopAll/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila MachineStopAll" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: PartALL " from Part, Part_, Part_custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartALL " from Part, Part_, Part_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Part.PartID, Part.PartNumber, Part.Description, Part.IsRetired, Part.BaseUnitID, Part.PartTypeID, Part.Reference1, Part.Reference2, Part.Reference3, Part.Reference4, Part.Reference5, Part.Variant1, Part.Variant2, Part.Variant3, Part.Variant4, Part.Variant5, Part.Variant6, Part.Variant7, Part.Variant8, Part.Variant9, Part.Variant10, Part.Variant11, Part.Variant12, Part.Variant13, Part.Variant14, Part.Variant15, Part.Variant16, Part.Variant17, Part.Variant18, Part.Variant19, Part.Variant20, Part_.TheoreticalSpeed, Part_.LabelsPerInventoryPack, Part_.ItemsPerInventoryPack, Part_.ItemsPerLayer, Part_.LayersPerInventoryPack, Part_.PackingCode, Part_.LabelTemplate, Part_.ProductionInstructions, Part_.QualityInstructions, Part_.CustomerPartNo, Part_.CustomerPartDescription, Part_.LabelText1, Part_.LabelText2, Part_.LabelText3, Part_.UnitPrice1, Part_.UnitPrice2, Part_.LegacyPartNo, Part_.CreateDT, Part_.ModifiedDT, Part_.LoginID, Part_.PartRevisionNo, Part_.PartClassificationID, Part_.LastPurchaseCost, Part_.AveragePurchaseCost, Part_.StandardPurchaseCost, Part_.StandardManufactureCost, Part_.StandardSaleCost, Part_.PartSubClassificationID, Part_.CreatedInvUseByPeriod, Part_.CreatedInvUseAfterPeriod, Part_custom.Txn_date, Part_custom.Inventory_Item_Id, Part_custom.Item_Type_Description,  2 as \"org_id\" FROM Part FULL JOIN Part_ ON (Part.PartID = Part_.PartID) FULL JOIN Part_custom ON (Part.PartID = Part_custom.PartID)   WHERE \$CONDITIONS" --split-by Part.PartID --num-mappers 600  --target-dir /MEStwo/PartALL/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila PartALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: WOALL " from WO, WO_
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     WOALL " from WO, WO_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT WO.WOID, WO.WONumber, WO.RunNo, WO.PartID, WO.QuantityOrdered, WO.RfJobStatusID, WO.DeadlineDT, WO.ActualStartDT, WO.ActualEndDT, WO.PlannedStartDT, WO.PlannedEndDT, WO.EstimatedStartDT, WO.EstimatedEndDT, WO.CustomerID, WO.IsDiscrete, WO.Reference1, WO.Reference2, WO.Reference3, WO.Reference4, WO.Reference5, WO.WORefID, WO_.CustomerOrderNo, WO_.LabelsPerInventoryPack, WO_.ItemsPerInventoryPack, WO_.ItemsPerLayer, WO_.LayersPerInventoryPack, WO_.PackingCode, WO_.LabelTemplate, WO_.LabelColour, WO_.EANCode, WO_.CusStartNum, WO_.CusEndNum, WO_.CustomerPartNo, WO_.CustomerPartDescription, WO_.LabelText1, WO_.LabelText2, WO_.LabelText3, WO_.PrinterURL, WO_.BOMVariantID,  2 as \"org_id\" FROM WO FULL JOIN WO_ ON (WO.WOID = WO_.WOID)   WHERE \$CONDITIONS" --split-by WO.WOID --num-mappers 600  --target-dir /MEStwo/WOALL/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila WOALL" >> timings.txt


echo "After joined table ingest: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt

echo "Script execution time: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt


