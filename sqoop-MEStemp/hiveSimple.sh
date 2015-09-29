#!/bin/bash

echo "##################################################"
echo " "
date 
rm timings.txt

hadoop fs -test -d /MEStemp
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r -skipTrash /MEStemp
                else
                 echo "/MEStemp not present in HDFS"
    fi

echo " "
echo "##################################################"
echo "sqoop: _SP_Crate "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT CrateID,CrateNo,PartID,Quantity,CurrentQuantity,Locked,Complete,CreatedDT,CompletedDT,MachineStageID,CrateIndex,MirrorPartID,PadLock, 1 as \"org_id\"  FROM dbo._SP_Crate WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/_SP_Crate/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest _SP_Crate" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: _SP_CrateLabel "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT _SP_CrateLabelID,CrateID,MachineStage,PartNumber,InvState,CrateNo,CreatedDT,CompleteDT,Quantity,LabelTemplate,PrinterURL,PrintedDT,ScannedDT,IsCancelled,IsReprint,PartDescription,LabelSaveDirectory,IsPrintLandscape,NoCopies,LabelsPerInventoryPack, 1 as \"org_id\"  FROM dbo._SP_CrateLabel WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/_SP_CrateLabel/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest _SP_CrateLabel" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: _SP_LkInvIsolatedReasonMST "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkInvIsolatedReasonMSTID,InvIsolatedReasonID,MachineStageTypeID, 1 as \"org_id\"  FROM dbo._SP_LkInvIsolatedReasonMST WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/_SP_LkInvIsolatedReasonMST/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest _SP_LkInvIsolatedReasonMST" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: _SP_Pallet "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PalletID,PalletNo,PartID,InvStateID,Quantity,CurrentQuantity,Locked,Complete,CreatedDT,CompletedDT,MachineStageID,PrincipleWOID,PalletIndex,ModulePartID,Merged,PadLock,IsBtoCto, 1 as \"org_id\"  FROM dbo._SP_Pallet WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/_SP_Pallet/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest _SP_Pallet" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: _SP_PalletLabel "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT _SP_PalletLabelID,PalletID,MachineStage,PartNumber,InvState,PalletNo,CreatedDT,CompleteDT,Quantity,LabelTemplate,PrinterURL,PrintedDT,ScannedDT,IsCancelled,IsReprint,PartDescription,LabelSaveDirectory,IsPrintLandscape,NoCopies,LabelsPerInventoryPack, 1 as \"org_id\"  FROM dbo._SP_PalletLabel WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/_SP_PalletLabel/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest _SP_PalletLabel" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: _SP_SEQ_LPN "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SeqID,SeqVal, 1 as \"org_id\"  FROM dbo._SP_SEQ_LPN WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/_SP_SEQ_LPN/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest _SP_SEQ_LPN" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: _SPML_ModuleInfo "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ModuleInfoID,SerialNo,LaminateID,LaminateCreatedDT,LaminateOrderNo,LaminatePartNo,BINNo,CktFormBuildPart,CktFormBuildMachine,CktFormBuildDT,GlassBuildPart,GlassBuildDate,LaminationBuildMachine,LaminationBuildDT,ModuleID,ModuleCreatedDT,ModuleOrderNo,IntendedModulePartNo,IntendedModulePartDesc,FramingBuildPart,FramingBuildMachine,FramingBuildDT,JboxBuildPart,JboxBuildDT,FlashtestClassifiedDT,FinalModulePartNo,FinalModulePartDesc,ActualPower,ActualVocMod,ActualFF,PackedDT,InventoryState,JboxBuildMachine,ActualIsc,FlashtestBuildMachine,Komax1,Komax2,Komax3,GlassID,CellType,StringerOperator,CircuitOperator1,CircuitOperator2,TrimChangeReason,PowerChartGenerated,LaminateWoId,ModuleWoId,VisualStateId,RfInvStateId,ElTestDate,ElBuildMachine,ActualVmpMod,ActualImpMod,TrimBuildMachine,TrimBuildDT,CellThickness,PalletID,FlashTestID,PadLock,BtoCtoSerialNo,EvaUseByDT,IsBtoCto,IntendedModuleWOID, 1 as \"org_id\"  FROM dbo._SPML_ModuleInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/_SPML_ModuleInfo/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest _SPML_ModuleInfo" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AcqCtxVarClass "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcqCtxVarClassID,AcquisitionContextID,VariableTypeClassID,IsOS,IsOC, 1 as \"org_id\"  FROM dbo.AcqCtxVarClass WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AcqCtxVarClass/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AcqCtxVarClass" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Acquisition "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcquisitionID,Acquisition,AcquisitionCode,Description, 1 as \"org_id\"  FROM dbo.Acquisition WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Acquisition/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Acquisition" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AcquisitionAttributeType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcquisitionAttributeTypeID,AcquisitionVariantID,AttributeTypeID,EntryOrder,Formula,IsExplicitStep, 1 as \"org_id\"  FROM dbo.AcquisitionAttributeType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AcquisitionAttributeType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AcquisitionAttributeType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AcquisitionChain "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcquisitionChainID,AcquisitionChain,Description, 1 as \"org_id\"  FROM dbo.AcquisitionChain WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AcquisitionChain/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AcquisitionChain" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AcquisitionContext "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStageID,AcquisitionVariantID,LastMeasurementSetID,AcquisitionContextID,LastDoneDT,IsAttrOC,IsCriticalDefect, 1 as \"org_id\"  FROM dbo.AcquisitionContext WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AcquisitionContext/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AcquisitionContext" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AcquisitionDevice "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcquisitionDeviceID,AcquisitionVariableTypeID,WorkstationConfigID,Instructions,ImageURI,RfSourceID,DataDeviceID,DeviceArgs,DeviceOutput,FillMode,Preset,Multiplier,PreprocessingFunction,IsManualTrigger,IsManualConfirm, 1 as \"org_id\"  FROM dbo.AcquisitionDevice WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AcquisitionDevice/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AcquisitionDevice" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AcquisitionGroup "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcquisitionGroupID,AcquisitionGroup,Description,AcquisitionGroupCode,LoginID,ModifiedDT, 1 as \"org_id\"  FROM dbo.AcquisitionGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AcquisitionGroup/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AcquisitionGroup" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AcquisitionVariableType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcquisitionVariableTypeID,AcquisitionVariantID,VariableTypeID,NoHeads,NoSamples,NoPositions,EntryOrder,Formula, 1 as \"org_id\"  FROM dbo.AcquisitionVariableType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AcquisitionVariableType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AcquisitionVariableType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AcquisitionVariant "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcquisitionVariantID,AcquisitionID,MeasurementSetTagProfileID,PartInstanceTagProfileID,DefectTagProfileID,RfAcquisitionClassID,RfDataCollectionFreqID,DataCollectionPeriod,IsRetired,AcqPlan,VMTPID,CauseActionTPID,Variant,PartTypeID,RevisionNo,IsEdited,HeadAlias,CauseTagListID,ActionTagListID,IsMeasuredWhenProduced,IsInvPackCheck,IsEBATrigger, 1 as \"org_id\"  FROM dbo.AcquisitionVariant WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AcquisitionVariant/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AcquisitionVariant" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AcquisitionVariant_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcquisitionVariantID,FromDT,ToDT,DataEntryURI,SPCURI,AcquisitionImageURI,LoginID,ModifiedDT,Comments,Instructions,PartID,Variant1,Variant2,Variant3,Variant4,Variant5,Variant6,Variant7,Variant8,Variant9,Variant10,Variant11,Variant12,Variant13,Variant14,Variant15,ToolTypeID,NoCavities,Documents,IsSuspendable,IsRotatableStepPlan,EBAReference,Variant16,Variant17,Variant18,Variant19,Variant20, 1 as \"org_id\"  FROM dbo.AcquisitionVariant_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AcquisitionVariant_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AcquisitionVariant_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Action "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ActionID,RfSpecialActionTypeID,ActionTypeID,ActionSubTypeID,ActionPlanID,ActionPlanCode,ActionName,Description,ActionOrder,RfPriorityID,SubmitterID,SubmittedDT,OwnerID,ActionStatusID,ClosedDT,ModifiedDT,LoginID,IsEdited,RevisionNo,DueDT,DeadlineDT,ExpiryDT,SortOrder, 1 as \"org_id\"  FROM dbo.Action WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Action/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Action" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ActionNote "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ActionNoteID,ActionID,Note,Comments,NoteDT,LoginID,Reference1,Reference2,Reference3, 1 as \"org_id\"  FROM dbo.ActionNote WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ActionNote/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ActionNote" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ActionPlan "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ActionPlanID,RfSpecialActionTypeID,ActionTypeID,ActionSubTypeID,ActionPlanCode,ActionName,Description,ActionPlanOrder,RfPriorityID,IsRetired,VariableTypeID,AttributeTypeID,IsCompulsory,SortOrder,IsOCApplicable,IsOSApplicable, 1 as \"org_id\"  FROM dbo.ActionPlan WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ActionPlan/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ActionPlan" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ActionStatus "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ActionStatusID,ActionStatus,ConditionalFormat,IsClosedState, 1 as \"org_id\"  FROM dbo.ActionStatus WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ActionStatus/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ActionStatus" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ActionSubType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ActionSubTypeID,ActionSubType,ActionTypeID,Description,SubActionTypeCode,ReportOrder,Format,IsRetired, 1 as \"org_id\"  FROM dbo.ActionSubType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ActionSubType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ActionSubType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ActionType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ActionTypeID,ActionType,Description,ActionTypeCode,ReportOrder,Format, 1 as \"org_id\"  FROM dbo.ActionType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ActionType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ActionType" >> timings.txt
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
echo "sqoop: Asset "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AssetID,AssetName,RfAssetTypeID,LineID,MachineStageID,ToolID,GaugeID,PartID,InventoryPackID,LocationID,IsRetired,CostCentreID,ManufacturerID,SupplierID,AcquiredDT,PONumber,OrderedDT,ExpectedDeliveryDT,ExpectedFirstUseDT,EndUseDT,EndUseReason,PurchaseCost,DefaultLocationID,Comments, 1 as \"org_id\"  FROM dbo.Asset WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Asset/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Asset" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AssetCountType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AssetCountTypeID,AssetCountType,Description, 1 as \"org_id\"  FROM dbo.AssetCountType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AssetCountType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AssetCountType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AssetCycleCount "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AssetCycleCountID,AssetID,RfDayPeriodID,Count,AssetCountTypeID, 1 as \"org_id\"  FROM dbo.AssetCycleCount WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AssetCycleCount/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AssetCycleCount" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AssetExplosion "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AssetID,ParentAssetID,SubAssetID,Lvl,SortOrder,Comments,AssetLevelID, 1 as \"org_id\"  FROM dbo.AssetExplosion WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AssetExplosion/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AssetExplosion" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AssetLevel "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AssetLevelID,AssetID,SubAssetID,Sequence,Comments,FromDT, 1 as \"org_id\"  FROM dbo.AssetLevel WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AssetLevel/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AssetLevel" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Attribute "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AttributeID,AttributeTypeID,ProductID, 1 as \"org_id\"  FROM dbo.Attribute WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Attribute/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Attribute" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AttributeType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AttributeTypeID,ProductTypeID,Name,Description,ImageURI,RfAttributeClassID,IsPassFail,IsRaiseCA,LikelyCauses,Impact,Weighting,Reference1,Reference2,Reference3,Reference4,Reference5,AttributeTypeCode, 1 as \"org_id\"  FROM dbo.AttributeType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AttributeType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AttributeType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AttributeTypeGroup "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AttributeTypeGroupID,Name,Description,AttributeTypeGroupCode, 1 as \"org_id\"  FROM dbo.AttributeTypeGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AttributeTypeGroup/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AttributeTypeGroup" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AVAttribute "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcquisitionVariantID,TargetSampleSize,RfAttrStudyTypeID,Instructions,ImageURI,NoHeads,RfSourceID,DataDeviceID,DeviceArgs,DeviceOutput, 1 as \"org_id\"  FROM dbo.AVAttribute WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AVAttribute/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AVAttribute" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: AVDataEntryOptions "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcquisitionVariantID,RfVarGridStyleID,IsPITCols,IsPISNoCol,RfAttrGridStyleID,IsStepGrid,IsAttrSkipStep,ShowAttrInfoTip,UseAttrImagePicker,AttrGridContextMenu,IsPISerial,AutoGenerateSerialNo,PITSampling,MSTSampling,VAInterlace,IsExplicitHS,SampleSizeMode,OnDataCommitGoTo,IsDisableOOSWarnings,StepEditPolicy,DisableKeyboardOverride,ChainToStopped,DisplayPlan,AttrPassFailDefault,VariableSaveMode,AttrCellClick, 1 as \"org_id\"  FROM dbo.AVDataEntryOptions WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/AVDataEntryOptions/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest AVDataEntryOptions" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: BOMExplosion "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PartID,ParentPartID,SubPartID,BOMItemID,SubPartQuantityTotal,SubPartUnitID,RfInvPackTraceabilityID,Lvl,SortOrder,SubPartQuantity,BOMVariantID,Instructions,RfBOMItemTypeID,IsAllowExceedBOMQty, 1 as \"org_id\"  FROM dbo.BOMExplosion WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/BOMExplosion/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest BOMExplosion" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: BOMItem "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT BOMItemID,BOMVariantID,PartID,SubPartID,SubPartQuantity,SubPartUnitID,RfInvPackTraceabilityID,Sequence,Instructions,RfBOMItemTypeID,IsDefault,IsAllowExceedBOMQty,Reference1,Reference2,Reference3,Reference4,Reference5, 1 as \"org_id\"  FROM dbo.BOMItem WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/BOMItem/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest BOMItem" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: BOMVariant "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT BOMVariantID,BOMVariant,PartID,IsDefault,BOMVariantIndex,IsRetired,LoginID,DT, 1 as \"org_id\"  FROM dbo.BOMVariant WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/BOMVariant/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest BOMVariant" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: BuildRecord "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT BuildRecordID,InvPackCreatedID,InvPackConsumedID,QuantityUsed,UnitID,BuildDT,IsEdited,RevisionNo,BuildMachineStageID, 1 as \"org_id\"  FROM dbo.BuildRecord WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/BuildRecord/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest BuildRecord" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: BuildRecord_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT BuildRecordID,Comments,LoginID,OpenedDT,SavedDT,EditedBuildRecordID,OriginalLoginID,Reference1,Reference2,Reference3,Reference4,Reference5, 1 as \"org_id\"  FROM dbo.BuildRecord_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/BuildRecord_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest BuildRecord_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: CauseAction "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT CauseActionID,MeasurementSetID,IsAttributes,IndividualDefectID,AttributeTypeID,Cause,Action,DT,VarChartOCID,RfIsOSID,VarMeasurementID,VariableTypeID,IsEdited,RevisionNo,ProductID,AcquisitionID,MachineStageID,RfAttributeClassID,HeadNo,SampleNo,PositionNo,RfAcquisitionClassID,SPCChartComponentID,SPCRuleID,RfCauseActionStateID,TAGMSVALUE1,TAGMSTYPE1ID,CreateDT,AcknowledgeDT,CloseDT, 1 as \"org_id\"  FROM dbo.CauseAction WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/CauseAction/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CauseAction" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: CauseAction_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT CauseActionID,Comments,LoginID,OpenedDT,SavedDT,OriginalLoginID,EditedCauseActionID, 1 as \"org_id\"  FROM dbo.CauseAction_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/CauseAction_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CauseAction_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Comments "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT CommentsID,LoginID,DT,Subject,Comments, 1 as \"org_id\"  FROM dbo.Comments WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Comments/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Comments" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: CommonFault "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT CommonFaultID,CommonFault,Description,LineTypeID,MachineStageTypeID,ToolTypeID,GaugeTypeID,PartTypeID,RfAssetTypeID, 1 as \"org_id\"  FROM dbo.CommonFault WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/CommonFault/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CommonFault" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Concern "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ConcernID,ConcernStatusID,ConcernTypeID,RaisedDT,ClosedDT,SeverityID,DueDate,ConcernOwnerID,DepartmentOwnerID,CustomerID,CustomerContact,CustomerReference,AffectOnCustomer,PartTypeID,PartID,WOID,LineID,ProductionFromDT,ShiftID,QuantityAffected,QuantityUsed,InvIsolatedReasonID,Cost,LoginID,ModifiedDT,Concern,SubmitterLoginID,CustomerProduct,RfCurrencyID,MachineStageID,Reference1,Reference2,Reference3,RfConcernApplicationTypeID,HeadNo,ProductionToDT,QuantityFound,QuantityReturned,QuantityScrapped,QuantitySorted,SupplierID,ToolID,VariableTypeID,AttributeTypeID,ClosedByLoginID, 1 as \"org_id\"  FROM dbo.Concern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Concern/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Concern" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ConcernStatus "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ConcernStatusID,ConcernStatus,ConditionalFormat,IsClosedState, 1 as \"org_id\"  FROM dbo.ConcernStatus WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ConcernStatus/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ConcernStatus" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ConcernType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ConcernTypeID,ConcernType,Description,ConcernTypeCode,Format, 1 as \"org_id\"  FROM dbo.ConcernType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ConcernType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ConcernType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: CostCentre "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT CostCentreID,CostCentre,Description, 1 as \"org_id\"  FROM dbo.CostCentre WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/CostCentre/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CostCentre" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: CRN_AcquisitionVariableType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcquisitionVariableTypeID,JobCommentLength,RfTorqueDirectionID,RfCycleEndTimeID,ThresholdTorque,RfMeasurementTypeID,RfFrequencyResponseID,UnitID,AuditAngle,CrnAdapterID, 1 as \"org_id\"  FROM dbo.CRN_AcquisitionVariableType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/CRN_AcquisitionVariableType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CRN_AcquisitionVariableType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: CrnAdapter "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT CrnAdapterID,Length,ModifiedDT, 1 as \"org_id\"  FROM dbo.CrnAdapter WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/CrnAdapter/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CrnAdapter" >> timings.txt
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
echo "sqoop: DefectCount "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT DefectCountID,MeasurementSetID,HeadNo,DefectCount,Ignored,AttributeTypeID,ProductID, 1 as \"org_id\"  FROM dbo.DefectCount WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/DefectCount/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DefectCount" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: DefectCountP "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT DefectCountPID,MeasurementSetPID,HeadNo,DefectCount,Ignored,AttributeTypeID,ProductID, 1 as \"org_id\"  FROM dbo.DefectCountP WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/DefectCountP/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DefectCountP" >> timings.txt
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
echo "sqoop: Document "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT DocumentID,FileName,Description,MimeType,Attachment,UploadDT,LoginID,DocumentTypeID, 1 as \"org_id\"  FROM dbo.Document WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Document/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Document" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: DocumentType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT DocumentTypeID,DocumentType, 1 as \"org_id\"  FROM dbo.DocumentType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/DocumentType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DocumentType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: dtproperties "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT id,objectid,property,value,uvalue,lvalue,version, 1 as \"org_id\"  FROM dbo.dtproperties WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/dtproperties/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest dtproperties" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: EBATrigger "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT EBATriggerID,RfTriggerTypeID,ContextDictionary,TriggerOwnerID,CreateDT,ProcessedDT,RfWatchProcessStateID,Message,TotalTime,OracleInsertTime,OracleConnectionTime,OracleInsertStatement, 1 as \"org_id\"  FROM dbo.EBATrigger WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/EBATrigger/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest EBATrigger" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ELData_Acq "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MeasurementSetID,SerialNo,BINNo,Komax1,CktFormBuildMachine,ElBuildMachine,Comments,DT,NumCells,CellHole,LiftedTab,MultipleCrack,DiagonalCrack,ReversePolarity,ShatteredCell,ShortedPasteBusbar,ShortedPasteMiddle,ShortedPasteUnknown,VerticalCrack,VisibleCrackFab,VisibleCrackMod,Weird,CellReplacementFab,CellReplacementMod,TouchUpthenGood,WipethenGood,Rework, 1 as \"org_id\"  FROM dbo.ELData_Acq WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ELData_Acq/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ELData_Acq" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ELData_Acq_Buffer "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MeasurementSetID,SerialNo,BINNo,Komax1,CktFormBuildMachine,ElBuildMachine,Comments,DT,NumCells,CellHole,LiftedTab,MultipleCrack,DiagonalCrack,ReversePolarity,ShatteredCell,ShortedPasteBusbar,ShortedPasteMiddle,ShortedPasteUnknown,VerticalCrack,VisibleCrackFab,VisibleCrackMod,Weird,CellReplacementFab,CellReplacementMod,TouchUpthenGood,WipethenGood,Rework, 1 as \"org_id\"  FROM dbo.ELData_Acq_Buffer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ELData_Acq_Buffer/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ELData_Acq_Buffer" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ELData_CellInfo "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ConsumesCells,ModuleID,BINNo,Variant1,CktFormBuildDT, 1 as \"org_id\"  FROM dbo.ELData_CellInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ELData_CellInfo/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ELData_CellInfo" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ELData_CellInfo_Buffer "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ConsumesCells,ModuleID,BINNo,Variant1,CktFormBuildDT, 1 as \"org_id\"  FROM dbo.ELData_CellInfo_Buffer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ELData_CellInfo_Buffer/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ELData_CellInfo_Buffer" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Fault "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT FaultID,Fault,FaultComments,AssetID,MaintenanceWorkID,ReportedByLoginID,FaultReportedDT,CommonFaultID,FaultStateID,TimeToRespond,TimeToRepair,TimeResponseToRepair,RevisionNo,IsEdited,LoginID,ModifiedDT,Cause,MachineStopID,Symptoms, 1 as \"org_id\"  FROM dbo.Fault WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Fault/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Fault" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: FaultState "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT FaultStateID,FaultID,FromDT,ToDT,FaultStatusID,Comments,LoginID,OpenedDT,SavedDT,IsEdited,RevisionNo,OriginalLoginID,EditedFaultStateID, 1 as \"org_id\"  FROM dbo.FaultState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/FaultState/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest FaultState" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: FaultStatus "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT FaultStatusID,FaultStatus,Description,RfFaultStatusID, 1 as \"org_id\"  FROM dbo.FaultStatus WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/FaultStatus/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest FaultStatus" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Gauge "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT GaugeID,Gauge,GaugeTypeID,DataDeviceID,SerialNo,SupplierID,DatePurchased, 1 as \"org_id\"  FROM dbo.Gauge WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Gauge/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Gauge" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: GaugeType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT GaugeTypeID,GaugeType, 1 as \"org_id\"  FROM dbo.GaugeType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/GaugeType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest GaugeType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: IndividualDefect "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT IndividualDefectID,PartInstanceID,Ignored,DefectCount,MeasurementSetID,AttributeTypeID,ProductID, 1 as \"org_id\"  FROM dbo.IndividualDefect WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/IndividualDefect/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest IndividualDefect" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InvChangeState "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT InvChangeStateID,InventoryPackID,FromDT,ToDT,InvIsolatedReasonID,Comments,LoginID,OpenedDT,SavedDT,IsEdited,RevisionNo,OriginalLoginID,EditedInvChangeStateID,InvStateID, 1 as \"org_id\"  FROM dbo.InvChangeState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvChangeState/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest InvChangeState" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryAtLocation "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT InventoryAtLocationID,LocationID,InventoryPackID,FromDT,ToDT,IsEdited,RevisionNo,EditedInvAtLocationID,MovedByLoginID,ModifiedDT,Reference1,Reference2,Reference3, 1 as \"org_id\"  FROM dbo.InventoryAtLocation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InventoryAtLocation/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest InventoryAtLocation" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryLabel "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT InventoryLabelID,MachineStage,PartNumber,PartType,QuantityOrdered,WONumber,InventoryPackNo,CreatedFromDT,Quantity,Unit,Line,LabelTemplate,LabelsPerInventoryPack,ItemsPerLayer,LayersPerInventoryPack,PrinterURL,PrintedDT,ItemsPerInventoryPack,ScannedDT,IsCancelled,OrderQuantityPacks,LineShortName,PackNo,IsReprint,PartDescription,LabelSaveDirectory,JobID,IsPrintLandscape,NoCopies, 1 as \"org_id\"  FROM dbo.InventoryLabel WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InventoryLabel/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest InventoryLabel" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryLabel_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT InventoryLabelID,LabelColour,EANCode,CusNum,PackingCode,CustomerPartNo,CustomerPartDescription,LabelText1,LabelText2,LabelText3,Customer,Address1,Address2,City,County,PostCode,Country, 1 as \"org_id\"  FROM dbo.InventoryLabel_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InventoryLabel_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest InventoryLabel_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryLabel_custom "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT InventoryLabelID,InventoryPackID, 1 as \"org_id\"  FROM dbo.InventoryLabel_custom WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InventoryLabel_custom/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest InventoryLabel_custom" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryPack "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT InventoryPackID,InventoryPackNo,WOID,JobID,CreatedFromDT,CreatedToDT,CreatedOnMachineStageID,IsEdited,RevisionNo,PartID,Quantity,UnitID,Ignored,InventoryPackIndex,CustomerUniqueKey,ReceivedDT,BirthDT,LastBuildRecordID,msrepl_tran_version,CurrentQuantity,QuantityAdjustment,PositionNumber,LocationID,InvStateID,LocationFromDT, 1 as \"org_id\"  FROM dbo.InventoryPack WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InventoryPack/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest InventoryPack" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryPack_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT InventoryPackID,Comments,LoginID,OpenedDT,SavedDT,OriginalLoginID,EditedInventoryPackID,Reference1,Reference2,Reference3,Reference4,Reference5,Reference6,Reference7,Reference8,Reference9,Reference10,SupplierID,SupplierReference,UseByDT,UseAfterDT, 1 as \"org_id\"  FROM dbo.InventoryPack_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InventoryPack_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest InventoryPack_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryPack_Custom "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT InventoryPackId,Txn_date,OracleStatus,IntendedWOID,FinalWOID,OriginalQty,Seq_Id,From_Subinventory,From_Locator,To_Subinventory,To_Locator,ScrappedShiftID,LastInventoryLabelID,ScrapLocationID,MachineLocationID,ScrapReasonID,ModuleInfoID,ResealedDT,CrateID, 1 as \"org_id\"  FROM dbo.InventoryPack_Custom WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InventoryPack_Custom/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest InventoryPack_Custom" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryUsage "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT InventoryUsageID,JobID,MachineStageID,InventoryPackID,FromDT,ToDT,IsEdited,RevisionNo,IsReintroduced,Quantity, 1 as \"org_id\"  FROM dbo.InventoryUsage WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InventoryUsage/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest InventoryUsage" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryUsage_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT InventoryUsageID,StartUsingComments,StopUsingComments,StartLoginID,StopLoginID,OpenedStartDT,OpenedEndDT,SavedStartDT,SavedEndDT,OriginalLoginID,EditedInventoryUsageID,Reference1,Reference2,Reference3,Reference4,Reference5, 1 as \"org_id\"  FROM dbo.InventoryUsage_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InventoryUsage_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest InventoryUsage_" >> timings.txt
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
echo "sqoop: Job "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT JobID,WOID,RfJobStatusID,DeadlineDT,ActualStartDT,ActualEndDT,PlannedStartDT,PlannedEndDT,PlannedDuration,EstimatedStartDT,EstimatedEndDT,EstimatedDuration,ScheduledSequence,LineID,ProductionStartDT,ProductionEndDT,TheoreticalCycleTime,BudgetChangeOver,QuantityOrdered,IsCalculated,LineGroupID, 1 as \"org_id\"  FROM dbo.Job WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Job/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Job" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Job_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT JobID,JobInstructions,ReleaseDT,ReleaseLoginID,StartLoginID,EndLoginID,Comments,ModifiedDt,ModifiedLoginID,StoppedReason,SkippedReason,SkippedDT, 1 as \"org_id\"  FROM dbo.Job_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Job_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Job_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Job_Custom "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT JobID, 1 as \"org_id\"  FROM dbo.Job_Custom WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Job_Custom/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Job_Custom" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Line "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LineID,Line,Description,LineTypeID,IsRetired,RfIntervalModeID,IsOEEInventoryIsolation,IsOEEInventoryReintroduction,IsCountOutputInventory,IsCountInputInventory,IsLineInfoSweepEnabled,IsWOOnSingleJob,LineShortName,CurrentLineInfoID,LastLineInfoID,RfInvCreatedDateModeID,RfEndJobInvModeID,CurrentJobID,IsScrapAsQualityLoss,IsScrapInProductionCounts,LineDownCostPerHour,IsContributeLineGroupOutput,IsContributeLineGroupWaste,IsContributeLineGroupDowntime, 1 as \"org_id\"  FROM dbo.Line WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Line/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Line" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Line_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LineID,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 1 as \"org_id\"  FROM dbo.Line_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Line_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Line_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Line_Custom "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LineID, 1 as \"org_id\"  FROM dbo.Line_Custom WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Line_Custom/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Line_Custom" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LineCell "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LineCellID,LineID,IsPartNumber,IsWONumber,IsCustomer,IsDescription,IsHeader,IsRows,ConfigLayout,IsClickable,IsStopJob,IsStartJob,IsEditable,IsStartNextJob,IsWORef1,IsWORef2,IsWORef3,IsWorkInstruction, 1 as \"org_id\"  FROM dbo.LineCell WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineCell/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LineCell" >> timings.txt
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
echo "sqoop: LineInfo_custom "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LineInfoID,CellsProduced, 1 as \"org_id\"  FROM dbo.LineInfo_custom WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo_custom/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LineInfo_custom" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LineInfoRecalc "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LineInfoID,ModifiedDT,IsOEEInventoryIsolation,IsOEEInventoryReintroduction,IsOEESpoilage,IsOEEDowntime,IsOEEInventoryProduction,NoBottlenecks,BottleneckMachineStageID,IsCountOutputInventory,IsCountInputInventory,IsOEEProductionUnits,LoginID,SessionID,PlantID, 1 as \"org_id\"  FROM dbo.LineInfoRecalc WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfoRecalc/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LineInfoRecalc" >> timings.txt
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
echo "sqoop: LkACAChain "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcquisitionChainID,AcquisitionContextID,Sequence,LkACAChainID, 1 as \"org_id\"  FROM dbo.LkACAChain WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkACAChain/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkACAChain" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkAGAV "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AcquisitionGroupID,AcquisitionVariantID,Sequence,LkAGAVID, 1 as \"org_id\"  FROM dbo.LkAGAV WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkAGAV/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkAGAV" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkATATG "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AttributeTypeGroupID,AttributeTypeID,LkATATGID, 1 as \"org_id\"  FROM dbo.LkATATG WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkATATG/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkATATG" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkCDefInCView "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCChartDefID,SPCChartSetViewID,Sequence,LkCDefInCViewID, 1 as \"org_id\"  FROM dbo.LkCDefInCView WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkCDefInCView/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkCDefInCView" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkConcernAction "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LKConcernActionID,ConcernID,ActionID, 1 as \"org_id\"  FROM dbo.LkConcernAction WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkConcernAction/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkConcernAction" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkConcernDocument "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ConcernID,DocumentID,LKConcernDocumentID, 1 as \"org_id\"  FROM dbo.LkConcernDocument WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkConcernDocument/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkConcernDocument" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LKConcernInventoryPack "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LKConcernInventoryPackID,ConcernID,InventoryPackID, 1 as \"org_id\"  FROM dbo.LKConcernInventoryPack WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LKConcernInventoryPack/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LKConcernInventoryPack" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkConcernRootCause "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkConcernRootCauseID,RootCauseID,ConcernID, 1 as \"org_id\"  FROM dbo.LkConcernRootCause WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkConcernRootCause/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkConcernRootCause" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LKCSetCDef "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCChartSetID,SPCChartDefID,Sequence,LkCSetCDefID, 1 as \"org_id\"  FROM dbo.LKCSetCDef WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LKCSetCDef/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LKCSetCDef" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkCutBySPCRule "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCRuleID,RfCutByID,LkCutBySPCRuleID, 1 as \"org_id\"  FROM dbo.LkCutBySPCRule WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkCutBySPCRule/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkCutBySPCRule" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkDocumentAsset "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkDocumentAssetID,DocumentID,AssetID, 1 as \"org_id\"  FROM dbo.LkDocumentAsset WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkDocumentAsset/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkDocumentAsset" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkDocumentInvPack "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkDocumentInvPackID,DocumentID,InventoryPackID, 1 as \"org_id\"  FROM dbo.LkDocumentInvPack WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkDocumentInvPack/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkDocumentInvPack" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkDocumentMaintProc "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkDocumentMaintProcID,DocumentID,MaintenanceProcedureID, 1 as \"org_id\"  FROM dbo.LkDocumentMaintProc WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkDocumentMaintProc/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkDocumentMaintProc" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkDocumentWIProc "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkDocumentWIProcID,WorkInstructionProcedureID,DocumentID, 1 as \"org_id\"  FROM dbo.LkDocumentWIProc WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkDocumentWIProc/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkDocumentWIProc" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkDocumentWIStep "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkDocumentWIStepID,WorkInstructionStepID,DocumentID, 1 as \"org_id\"  FROM dbo.LkDocumentWIStep WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkDocumentWIStep/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkDocumentWIStep" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkFaultMaintWork "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenanceWorkID,FaultID, 1 as \"org_id\"  FROM dbo.LkFaultMaintWork WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkFaultMaintWork/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkFaultMaintWork" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkInvPackInvPack "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkInvPackInvPackID,InventoryPackFromID,InventoryPackToID,RfInventoryLinkTypeID,LoginID,ModifiedDT, 1 as \"org_id\"  FROM dbo.LkInvPackInvPack WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkInvPackInvPack/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkInvPackInvPack" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkLineLineGroup "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkLineLineGroupID,LineGroupID,LineID, 1 as \"org_id\"  FROM dbo.LkLineLineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkLineLineGroup/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkLineLineGroup" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkLLS "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LineID,LineSectionID,LkLLSID, 1 as \"org_id\"  FROM dbo.LkLLS WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkLLS/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkLLS" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkLocationMachineStage "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkLocationMachineStageId,MachineStageId,LocationId,IsLocationIn,IsLocationOut, 1 as \"org_id\"  FROM dbo.LkLocationMachineStage WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkLocationMachineStage/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkLocationMachineStage" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkMachineStagePrinter "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkMachineStagePrinterID,MachineStageID,PrinterID, 1 as \"org_id\"  FROM dbo.LkMachineStagePrinter WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkMachineStagePrinter/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkMachineStagePrinter" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkMaintProcPersonnel "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkMaintProcPersonnelID,MaintenanceProcedureID,PersonnelID, 1 as \"org_id\"  FROM dbo.LkMaintProcPersonnel WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkMaintProcPersonnel/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkMaintProcPersonnel" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkMGMS "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStageID,MachineGroupID,LkMGMSID, 1 as \"org_id\"  FROM dbo.LkMGMS WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkMGMS/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkMGMS" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkMPGMP "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkMPGMPID,MaintenanceProcedureGroupID,MaintenanceProcedureID, 1 as \"org_id\"  FROM dbo.LkMPGMP WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkMPGMP/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkMPGMP" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkMSRGMSR "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStopReasonGroupID,MachineStopReasonID,LkMSRGMSRID, 1 as \"org_id\"  FROM dbo.LkMSRGMSR WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkMSRGMSR/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkMSRGMSR" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkOpTMST "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OperationTypeID,MachineStageTypeID,LkOpTMSTID,PassName, 1 as \"org_id\"  FROM dbo.LkOpTMST WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkOpTMST/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkOpTMST" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkOpTPartTConsumed "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PartTypeID,OperationTypeID,IsInventoryCarriedOver,LkOpTPartTConsumedID, 1 as \"org_id\"  FROM dbo.LkOpTPartTConsumed WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkOpTPartTConsumed/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkOpTPartTConsumed" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkPartAlternatePart "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkPartAlternatePartID,AlternatePartID,PartID,PartToAlternatePartRatio, 1 as \"org_id\"  FROM dbo.LkPartAlternatePart WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkPartAlternatePart/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkPartAlternatePart" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkPartDocument "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkPartDocumentID,PartID,DocumentID, 1 as \"org_id\"  FROM dbo.LkPartDocument WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkPartDocument/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkPartDocument" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkPartLineSection "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PartID,LineSectionID,LkPartLineSectionID,TheoreticalCycleTime, 1 as \"org_id\"  FROM dbo.LkPartLineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkPartLineSection/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkPartLineSection" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkPartSupplier "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkPartSupplierID,PartID,SupplierID, 1 as \"org_id\"  FROM dbo.LkPartSupplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkPartSupplier/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkPartSupplier" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LKPartUnit "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PartID,UnitID,LkPartUnitID, 1 as \"org_id\"  FROM dbo.LKPartUnit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LKPartUnit/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LKPartUnit" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkRootCauseAction "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkRootCauseActionID,RootCauseID,ActionID, 1 as \"org_id\"  FROM dbo.LkRootCauseAction WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkRootCauseAction/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkRootCauseAction" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LKShiftMachineStage "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkShiftMachineStageID,MachineStageID,ShiftID, 1 as \"org_id\"  FROM dbo.LKShiftMachineStage WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LKShiftMachineStage/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LKShiftMachineStage" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkSPCCSVR "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCCalcStyleID,RfViolationRuleID,RfChartComponentID,LkSPCCSVRID,RuleRange,RuleGroup, 1 as \"org_id\"  FROM dbo.LkSPCCSVR WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkSPCCSVR/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkSPCCSVR" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LKSPCStatsStyleRfSPCStat_CUS "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT RfSPCStatID,SPCStatsStyleID,LkSPCStatsStyleRfSPCStatID, 1 as \"org_id\"  FROM dbo.LKSPCStatsStyleRfSPCStat_CUS WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LKSPCStatsStyleRfSPCStat_CUS/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LKSPCStatsStyleRfSPCStat_CUS" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkSRGSR "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkSRGSRID,ScrapReasonGroupID,ScrapReasonID, 1 as \"org_id\"  FROM dbo.LkSRGSR WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkSRGSR/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkSRGSR" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkToolTypeOpType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolTypeID,OperationTypeID,MaxNoTools,LkToolTypeOpTypeID, 1 as \"org_id\"  FROM dbo.LkToolTypeOpType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkToolTypeOpType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkToolTypeOpType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkTSTC "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolStateID,ToolCavityID,RfToolCavityStatusID,ToolCavityStateReasonID,IsCavityChangeState,LkTSTCID, 1 as \"org_id\"  FROM dbo.LkTSTC WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkTSTC/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkTSTC" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkTTG "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolGroupID,ToolID,LkTTGID, 1 as \"org_id\"  FROM dbo.LkTTG WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkTTG/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkTTG" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkUCTGUCT "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkUCTGUCTID,UnitCountTypeGroupID,UnitCountTypeID, 1 as \"org_id\"  FROM dbo.LkUCTGUCT WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkUCTGUCT/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkUCTGUCT" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkVCOCVRule "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT VarChartOCID,RfViolationRuleID,LkVCOCVRuleID, 1 as \"org_id\"  FROM dbo.LkVCOCVRule WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkVCOCVRule/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkVCOCVRule" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkVTVTG "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT VariableTypeGroupID,VariableTypeID,LkVTVTGID, 1 as \"org_id\"  FROM dbo.LkVTVTG WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkVTVTG/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkVTVTG" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkWIRBuildRecord "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkWIRBuildRecordID,WorkInstructionResultID,BuildRecordID, 1 as \"org_id\"  FROM dbo.LkWIRBuildRecord WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkWIRBuildRecord/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkWIRBuildRecord" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LkWIRMSetReq "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LkWIRMSetReqID,WorkInstructionResultID,MeasurementSetRequiredID, 1 as \"org_id\"  FROM dbo.LkWIRMSetReq WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LkWIRMSetReq/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LkWIRMSetReq" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Location "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LocationID,Location,LocationTypeID,IsRetired,MaxQuantity,LocationCode,Description, 1 as \"org_id\"  FROM dbo.Location WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Location/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Location" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LocationType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT LocationTypeID,LocationType,LocationTypeCode,Description, 1 as \"org_id\"  FROM dbo.LocationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LocationType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest LocationType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineGroup "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineGroupID,MachineGroup,Description,IsRetired,RfMachineGroupTypeID, 1 as \"org_id\"  FROM dbo.MachineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineGroup/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MachineGroup" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStage "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStageID,MachineStageTypeID,Name,IsRetired,DepartmentID,Description,CurrentShiftPatternID,NoHeads,IsOEEBottleNeck,IsProductionOutput,MachineStopID,StoppedScreenThreshold,LineSectionID,IsDiscrete,RfDowntimeCollectionModeID,RfSpoilageCollectionModeID,RfProductionCollectionModeID,LastBuildRecordID,CurrentJobID, 1 as \"org_id\"  FROM dbo.MachineStage WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStage/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MachineStage" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStage_Custom "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStageID,ModuleDatabase,IntendedWOID,MachineStageCode,CurrentLaminateSize,Color,ModifiedDT,CleanState,CleaningCycleNo,CleaningLaminatePartID,CleaningLaminateSize, 1 as \"org_id\"  FROM dbo.MachineStage_Custom WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStage_Custom/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MachineStage_Custom" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStageCell "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStageCellID,MachineStageID,IsCreator,IsConsumer,IsLabeller,IsAutoBatchNo,IsPackConsumer,IsResortConsumer,IsNonJob,IsToolShowCavities,IsInvPackPackNo,IsInvPackPartNo,IsInvPackPartDesc,IsInvPackPartType,IsInvPackQty,IsInvPackHeader,IsInvPackRows,IsInvPackState,IsInvPackReason,IsAcqDblck,AcqGrid,CustomPage,IsClickable,IsDrillable, 1 as \"org_id\"  FROM dbo.MachineStageCell WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageCell/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MachineStageCell" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStageEvent "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStageEventID,LoginID,DT,MachineStageID,MachineStageEventTypeID,Comments, 1 as \"org_id\"  FROM dbo.MachineStageEvent WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageEvent/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MachineStageEvent" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStageEventType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStageEventTypeID,MachineStageEventType,Description,MachineStageTypeID,MachineStageEventTypeCode,IsAlarm,AlarmText, 1 as \"org_id\"  FROM dbo.MachineStageEventType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageEventType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MachineStageEventType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStageInvPosition "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStageInvPositionId,MachineStageId,Position,PositionNumber, 1 as \"org_id\"  FROM dbo.MachineStageInvPosition WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageInvPosition/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MachineStageInvPosition" >> timings.txt
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
echo "sqoop: MachineStop_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStopID,StopComments,StartComments,StartLoginID,StopLoginID,OpenedStopDT,SavedStopDT,OpenedStartDT,SavedStartDT,OriginalLoginID,EditedMachineStopID, 1 as \"org_id\"  FROM dbo.MachineStop_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStop_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MachineStop_" >> timings.txt
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
echo "sqoop: MachineStopReasonGroup "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MachineStopReasonGroupID,MachineStopReasonGroup,Description,MachineStopReasonGroupCode, 1 as \"org_id\"  FROM dbo.MachineStopReasonGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReasonGroup/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MachineStopReasonGroup" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintenanceManHourPlanned "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenanceManHourPlannedID,MaintenanceProcedureID,PlannedManHours,PersonnelGroupID,SupplierID,SupplierCost, 1 as \"org_id\"  FROM dbo.MaintenanceManHourPlanned WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintenanceManHourPlanned/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintenanceManHourPlanned" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintenanceManHours "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenanceManHoursID,MaintenanceWorkID,WorkerLoginID,ActualManHours,RevisionNo,IsEdited,ModifiedDT,SupplierID,SupplierCost,PersonnelGroupID, 1 as \"org_id\"  FROM dbo.MaintenanceManHours WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintenanceManHours/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintenanceManHours" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintenancePartPlanned "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenancePartPlannedID,MaintenanceProcedureStepID,PartID,PlannedCost,IsOptional,Quantity,UnitID, 1 as \"org_id\"  FROM dbo.MaintenancePartPlanned WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintenancePartPlanned/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintenancePartPlanned" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintenancePartUsed "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenancePartUsedID,MaintenanceWorkID,MaintenanceProcedureResultID,PartID,Cost,DT,LoginID,Quantity,UnitID,InventoryPackID, 1 as \"org_id\"  FROM dbo.MaintenancePartUsed WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintenancePartUsed/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintenancePartUsed" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintenanceProcedure "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenanceProcedureID,MaintenanceProcedure,PartID,ResponsibleDepartmentID,BudgetWorkDone,PlannedManHours,PlannedDuration,MaintenanceProcedureCode,AdvanceWarningPeriod,SchedulingWindow,PlannedMachineStageDowntime,PlannedLineDowntime,SubPartID,CreatedDT,CreatedLoginID,RfMaintenanceWorkTypeID,CostCentreID,IsAutoAuthoriseWork,IsRetired,IsToolTakenOutOfService, 1 as \"org_id\"  FROM dbo.MaintenanceProcedure WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintenanceProcedure/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintenanceProcedure" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintenanceProcedureGroup "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenanceProcedureGroupID,MaintenanceProcedureGroup,Description, 1 as \"org_id\"  FROM dbo.MaintenanceProcedureGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintenanceProcedureGroup/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintenanceProcedureGroup" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintenanceProcedureResult "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenanceProcedureResultID,MaintenanceProcedureStepID,MaintenanceWorkID,Result,ResultPassFail,Comments,DT,CheckedByLoginID,MaintenanceProcedureStep,StepOrder,SubPartID,Component,RfMaintenanceCheckTypeID,RfSpecialActionTypeID,Test,USL,LSL,PersonnelGroupID,SupplierID,Nom,Units,DecPlaces, 1 as \"org_id\"  FROM dbo.MaintenanceProcedureResult WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintenanceProcedureResult/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintenanceProcedureResult" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintenanceProcedureRevision "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenanceProcedureRevisionID,MaintenanceProcedureID,FromDT,ToDT,IsEdited,RevisionNo,LoginID,ModifiedDT,RevisedMaintProcID, 1 as \"org_id\"  FROM dbo.MaintenanceProcedureRevision WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintenanceProcedureRevision/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintenanceProcedureRevision" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintenanceProcedureStep "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenanceProcedureStepID,MaintenanceProcedureStep,MaintenanceProcedureRevisionID,StepOrder,SubPartID,Component,RfMaintenanceCheckTypeID,RfSpecialActionTypeID,Test,USL,LSL,PersonnelGroupID,SupplierID,Nom,Units,DecPlaces, 1 as \"org_id\"  FROM dbo.MaintenanceProcedureStep WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintenanceProcedureStep/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintenanceProcedureStep" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintenanceReason "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenanceReasonID,MaintenanceReason, 1 as \"org_id\"  FROM dbo.MaintenanceReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintenanceReason/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintenanceReason" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintenanceWork "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenanceWorkID,MaintenanceWO,AssetID,MaintenanceProcedureID,MaintenanceProcedureRevisionID,MaintProcScheduleOnAssetID,RfMaintenanceWorkTypeID,AdhocWorkToDo,MaintProcScheduleOnAssetNo,MaintenanceWorkStatusID,ActualStartDT,ActualEndDT,ActualManHours,PlannedStartDT,PlannedEndDT,PlannedManHours,OwnerLoginID,ActualLabourCost,PlannedLabourCost,RfCurrencyID,PartsCost,LineDownCost,Priority,MaintenanceReasonID,IsPlannedDateLockedByUser,EBATriggerID,PeriodDueDT,RunHoursDueDT,PartsBasedDueDT,EventDueDT,ReleasedDT,ReleasedLoginID,IsEdited,RevisionNo,AbsoluteCounterThreshold, 1 as \"org_id\"  FROM dbo.MaintenanceWork WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintenanceWork/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintenanceWork" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintenanceWork_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenanceWorkID,WorkDone,Comments,LoginID,ModifiedDT,Reference1,Reference2,Reference3,Reference4,Reference5, 1 as \"org_id\"  FROM dbo.MaintenanceWork_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintenanceWork_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintenanceWork_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintenanceWorkStatus "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintenanceWorkStatusID,MaintenanceWorkStatus,Description,RfMaintenanceWorkStatusID, 1 as \"org_id\"  FROM dbo.MaintenanceWorkStatus WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintenanceWorkStatus/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintenanceWorkStatus" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MaintProcScheduleOnAsset "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MaintProcScheduleOnAssetID,MaintenanceProcedureID,AssetID,RfPeriodTypeID,StartDate,AssetCountTypeID,EBAReference,IsEdited,LoginID,ModifiedDT,CalendarN1,CalendarN2,CalendarN3,CounterThreshold1,CounterThreshold2,CounterThreshold3,EstimatedCountPerDay,RunHourThreshold1,RunHourThreshold2,RunHourThreshold3,EstimatedRunHoursPerDay,EstimatedEventsPerDay,RevisionNo,IsRetired,PriorExecutions, 1 as \"org_id\"  FROM dbo.MaintProcScheduleOnAsset WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MaintProcScheduleOnAsset/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MaintProcScheduleOnAsset" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MeasurementSet "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MeasurementSetID,ActualAttrSampleSize,AcquisitionContextID,IsEdited,DT,AcquisitionID,MachineStageID,RfAcquisitionClassID,RevisionNo,PartID,JobID,ResumeStep,InventoryPackID, 1 as \"org_id\"  FROM dbo.MeasurementSet WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MeasurementSet/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MeasurementSet" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MeasurementSet_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MeasurementSetID,Comments,LoginID,OpenedDT,SavedDT,OriginalLoginID,EditedMSID,ApprovalLoginID, 1 as \"org_id\"  FROM dbo.MeasurementSet_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MeasurementSet_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MeasurementSet_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MeasurementSetP "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MeasurementSetPID,ActualAttrSampleSize,AcquisitionContextID,IsEdited,DT,AcquisitionID,MachineStageID,RfAcquisitionClassID,RevisionNo,PartID,JobID, 1 as \"org_id\"  FROM dbo.MeasurementSetP WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MeasurementSetP/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MeasurementSetP" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MeasurementSetRequired "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MeasurementSetRequiredID,EBATriggerID,AcquisitionContextID,MeasurementSetID,RfAcquisitionStatusID,SubmittedDT,DueDT,DeadlineDT,ExpiryDT,OwnerID,ActionID,JobID,PartID,AssignedLoginID,InventoryPackID, 1 as \"org_id\"  FROM dbo.MeasurementSetRequired WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MeasurementSetRequired/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MeasurementSetRequired" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ModulePackedDateTime "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SerialNo,TimePacked,IMS_No, 1 as \"org_id\"  FROM dbo.ModulePackedDateTime WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ModulePackedDateTime/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ModulePackedDateTime" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ModulePackedDateTime_Buffer "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SerialNo,TimePacked,IMS_No, 1 as \"org_id\"  FROM dbo.ModulePackedDateTime_Buffer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ModulePackedDateTime_Buffer/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ModulePackedDateTime_Buffer" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OPCClient "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OPCClientID,OPCClient,ComputerID,ModifiedDT,LastUpdateDT, 1 as \"org_id\"  FROM dbo.OPCClient WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OPCClient/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OPCClient" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OPCConstant "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OPCConstantID,OPCItemID,Description,Constant,Formula,ModifiedDT,LoginID, 1 as \"org_id\"  FROM dbo.OPCConstant WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OPCConstant/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OPCConstant" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OPCCounter "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OPCCounterID,OPCItemID,Description,LoValue,HiValue,Scale,Offset,Formula,UnitCountTypeID,ScrapReasonID,ModifiedDT,LoginID,IsProduction,AcceptableRateOfChange,RfDeltaValueModeID, 1 as \"org_id\"  FROM dbo.OPCCounter WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OPCCounter/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OPCCounter" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OPCDigital "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OPCDigitalID,OPCItemID,Description,Formula,VariableTypeID,HeadNo,SampleNo,PositionNo,ModifiedDT,LoginID, 1 as \"org_id\"  FROM dbo.OPCDigital WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OPCDigital/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OPCDigital" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OPCGroup "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OPCGroupID,Deadband,UpdateRate,OPCGroup,IsActive,RfGroupNotifyModeID,TimeBias,OPCServerID,IsPublic,LocalID,CacheUpdateRate, 1 as \"org_id\"  FROM dbo.OPCGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OPCGroup/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OPCGroup" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OPCItem "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OPCItemID,OPCServerID,OPCGroupID,TagName,TagAddress,RfOPCItemTypeID,IsNotify,RawValue,UpdatedDT,Quality,Value,LastRawValue,LastUpdatedDT,LastQuality,LastValue,MachineStageID,ChangeAction,PLCID,IsDatedOnServer,IsStoredAsArray,IsActive,MachineStageEventTypeID,RfTransitionTypeID,TransitionToValue, 1 as \"org_id\"  FROM dbo.OPCItem WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OPCItem/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OPCItem" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OPCItemHistory "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OPCItemHistoryID,OPCItemID,UpdatedDT,RawValue,Value,Quality,CommittedDT, 1 as \"org_id\"  FROM dbo.OPCItemHistory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OPCItemHistory/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OPCItemHistory" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OPCMachineEvent "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OPCMachineEventID,OPCItemID,Description,Formula,ModifiedDT,LoginID,RfMachineStopRecordModeID, 1 as \"org_id\"  FROM dbo.OPCMachineEvent WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OPCMachineEvent/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OPCMachineEvent" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OPCMachineEventCode "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OPCMachineEventCodeID,OPCMachineEventCode,OPCMachineEventID,MachineStopReasonID,IsRunning, 1 as \"org_id\"  FROM dbo.OPCMachineEventCode WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OPCMachineEventCode/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OPCMachineEventCode" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OPCParameter "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OPCParameterID,OPCItemID,Description,Scale,Offset,Formula,VariableTypeID,HeadNo,SampleNo,PositionNo,ModifiedDT,LoginID, 1 as \"org_id\"  FROM dbo.OPCParameter WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OPCParameter/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OPCParameter" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OPCServer "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OPCServerID,OPCClientID,OPCServer,ProgID,IsActive,ComputerID, 1 as \"org_id\"  FROM dbo.OPCServer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OPCServer/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OPCServer" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OPCSpeed "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OPCSpeedID,OPCItemID,Description,Scale,Formula,ModifiedDT,LoginID, 1 as \"org_id\"  FROM dbo.OPCSpeed WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OPCSpeed/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OPCSpeed" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: OPCText "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT OPCTextID,OPCItemID,Description,ModifiedDT,LoginID, 1 as \"org_id\"  FROM dbo.OPCText WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OPCText/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest OPCText" >> timings.txt
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
echo "sqoop: Part "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PartID,PartNumber,Description,IsRetired,BaseUnitID,PartTypeID,Reference1,Reference2,Reference3,Reference4,Reference5,Variant1,Variant2,Variant3,Variant4,Variant5,Variant6,Variant7,Variant8,Variant9,Variant10,Variant11,Variant12,Variant13,Variant14,Variant15,Variant16,Variant17,Variant18,Variant19,Variant20, 1 as \"org_id\"  FROM dbo.Part WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Part/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Part" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Part_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PartID,TheoreticalSpeed,LabelsPerInventoryPack,ItemsPerInventoryPack,ItemsPerLayer,LayersPerInventoryPack,PackingCode,LabelTemplate,ProductionInstructions,QualityInstructions,CustomerPartNo,CustomerPartDescription,LabelText1,LabelText2,LabelText3,UnitPrice1,UnitPrice2,LegacyPartNo,CreateDT,ModifiedDT,LoginID,PartRevisionNo,PartClassificationID,LastPurchaseCost,AveragePurchaseCost,StandardPurchaseCost,StandardManufactureCost,StandardSaleCost,PartSubClassificationID,CreatedInvUseByPeriod,CreatedInvUseAfterPeriod, 1 as \"org_id\"  FROM dbo.Part_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Part_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Part_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Part_custom "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PartID,Txn_date,Inventory_Item_Id,Item_Type_Description, 1 as \"org_id\"  FROM dbo.Part_custom WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Part_custom/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Part_custom" >> timings.txt
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
echo "sqoop: PartInstance "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PartInstanceID,MeasurementSetID,HeadNo,SampleNo,SerialNo, 1 as \"org_id\"  FROM dbo.PartInstance WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartInstance/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest PartInstance" >> timings.txt
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
echo "sqoop: PLC "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PLCID,PLC,Description, 1 as \"org_id\"  FROM dbo.PLC WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PLC/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest PLC" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Product "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ProductID,ProductTypeID,Name,Description,IsRetired,PartID,Variant1,Variant2,Variant3,Variant4,Variant5,Variant6,Variant7,Variant8,Variant9,Variant10,Variant11,Variant12,Variant13,Variant14,Variant15,Variant16,Variant17,Variant18,Variant19,Variant20, 1 as \"org_id\"  FROM dbo.Product WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Product/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Product" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ProductionStop "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ProductionStopID,ProductionStopReasonID,JobID,FromDT,ToDT,LineID,IsEdited,RevisionNo, 1 as \"org_id\"  FROM dbo.ProductionStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ProductionStop/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ProductionStop" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ProductionStop_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ProductionStopID,StopComments,StopLoginID,OpenedStopDT,SavedStopDT,OriginalLoginID,EditedProductionStopID, 1 as \"org_id\"  FROM dbo.ProductionStop_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ProductionStop_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ProductionStop_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ProductionStopReason "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ProductionStopReasonID,ProductionStopReason,Description,StopCode,RfLineStopReasonTypeID,RfStopRelativeToJobID,IsPlanned,IsDefaultNoJobReason,IsRetired, 1 as \"org_id\"  FROM dbo.ProductionStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ProductionStopReason/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ProductionStopReason" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ProductType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ProductTypeID,Name,ProductTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID, 1 as \"org_id\"  FROM dbo.ProductType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ProductType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ProductType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Query "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT MeasurementSetID,SerialNo,BinNo,Komax1,CktFormBuildMachine,ElBuildMachine,Comments,DT,NumCells,CellHole,LiftedTab,MultipleCrack,DiagonalCrack,ReversePolarity,ShatteredCell,ShortedPasteBusbar,ShortedPasteMiddle,ShortedPasteUnknown,VerticalCrack,VisibleCrack,Weird,CellReplacementFab,CellReplacementMod,TouchUpthenGood,WipethenGood,Rework, 1 as \"org_id\"  FROM dbo.Query WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Query/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Query" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: RootCause "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT RootCauseID,RootCause,Comments,RootCauseTypeID,LineTypeID,MachineStageTypeID, 1 as \"org_id\"  FROM dbo.RootCause WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/RootCause/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest RootCause" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: RootCauseType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT RootCauseTypeID,RootCauseType,Description,RootCauseTypeCode, 1 as \"org_id\"  FROM dbo.RootCauseType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/RootCauseType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest RootCauseType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Scrap "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ScrapID,ScrapReasonID,PartID,Quantity,UnitID,DT,MachineStageID,IsEdited,RevisionNo, 1 as \"org_id\"  FROM dbo.Scrap WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Scrap/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Scrap" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Scrap_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ScrapID,CollectionQuantity,CollectionUnitID,Comments,LoginID,OpenedDT,SavedDT,OriginalLoginID,EditedScrapID,Reference1,Reference2,Reference3,Reference4,Reference5, 1 as \"org_id\"  FROM dbo.Scrap_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Scrap_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Scrap_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ScrapReason "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ScrapReasonID,ScrapReason,Description,MachineStageTypeID,DefaultUnitID,IsRetired, 1 as \"org_id\"  FROM dbo.ScrapReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ScrapReason/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ScrapReason" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ScrapReasonGroup "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ScrapReasonGroupID,ScrapReasonGroup,Description, 1 as \"org_id\"  FROM dbo.ScrapReasonGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ScrapReasonGroup/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ScrapReasonGroup" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Sequences "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SeqName,SeqValue, 1 as \"org_id\"  FROM dbo.Sequences WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Sequences/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Sequences" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SettingsPlantDefaults "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SettingsPlantDefaultsID,StartOfDay,StartOfWeek,StartOfYear,RfLocaleID,RfDefaultCurrencyID,DataEntryDefaultURI,OnDataCommitGoTo,ChainToStopped,ColourStagesForCurrentJob,UnAckAlarmsPeriod,ShowOverdueIcon,ShowAlarmIcon,WONumberModeID,IsShowVarClassCombo,IsShowAcqClassCombo,RfMachineStopRecordModeID,IsAutoCreateProductsForParts,IsAutoCreateProductTypeForPart,EnforceClosedAlarms,ColourOrder,IsAutoReleaseJob,JobClose,IsAllowDuplicateWONumbers,WoClose,IsOverdueRefToJob,DefaultSPCCalcStyleID,IsAllowInventoryInserts, 1 as \"org_id\"  FROM dbo.SettingsPlantDefaults WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SettingsPlantDefaults/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SettingsPlantDefaults" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SettingsPlantNameTemplates "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SettingsPlantNameTemplatesID,CreateInvPackNoTemplate,CustomerUniqueKeyTemplate,InventoryPackNameTemplate,WONumberTemplate,ReceiveInvPackNoTemplate,BOMVariantTemplate, 1 as \"org_id\"  FROM dbo.SettingsPlantNameTemplates WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SettingsPlantNameTemplates/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SettingsPlantNameTemplates" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SettingsPlantTimeWindows "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SettingsPlantTimeWindowsID,JobHistory,ProductionSpoilageHistory,DowntimeHistory,InventoryHistory,InventoryLabelHistory,BuildRecordHistory,LineInfoHistory,QualityMeasurementHistory,ProcessParameterHistory,OPCItemHistoryHistory,InitialLineInfoHistory,MaintenanceProjectionPeriod,ShiftLookAheadDays,ForwardSchedulingWindow,DefaultMaxTrendRecallWindow,DefaultConcernDuePeriod, 1 as \"org_id\"  FROM dbo.SettingsPlantTimeWindows WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SettingsPlantTimeWindows/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SettingsPlantTimeWindows" >> timings.txt
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
echo "sqoop: ShiftlyChecksDone "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ShiftlyChecksDoneID,shiftid,jobid,fromdt,todt,partid,acquisitioncontextid,machinestageid,acquisitionvariantid,acquisitionid,downtime,uptime,total_time,datacollectionperiod,checks_req,checks_req_after_downtime,checks_done,updated_dt, 1 as \"org_id\"  FROM dbo.ShiftlyChecksDone WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftlyChecksDone/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ShiftlyChecksDone" >> timings.txt
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
echo "sqoop: ShiftSequence "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ShiftSequenceID,ShiftPatternID,ShiftTypeID,Sequence,ShiftStartTime,ShiftEndTime, 1 as \"org_id\"  FROM dbo.ShiftSequence WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftSequence/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ShiftSequence" >> timings.txt
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
echo "sqoop: SPCCalcStyle_CUS "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCCalcStyleID,SPCCalcStyle,CmThreshold,CpThreshold,PpThreshold,CgThreshold,RnRThreshold,IsShowCpOnlyIfStable,CAMTarget,CpBasedOnID,CLBasedOnID, 1 as \"org_id\"  FROM dbo.SPCCalcStyle_CUS WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPCCalcStyle_CUS/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPCCalcStyle_CUS" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SPCChartComponent "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCChartComponentID,SPCChartDefID,SPCVarChartID, 1 as \"org_id\"  FROM dbo.SPCChartComponent WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPCChartComponent/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPCChartComponent" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SPCChartControlLimit "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCChartControlLimitID,SPCChartComponentID,RfChartComponentID,RfChart,UCL,CL,LCL,FromDT,ToDT,RangeToDT,ModifiedDT,LoginID,RangeFromDT, 1 as \"org_id\"  FROM dbo.SPCChartControlLimit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPCChartControlLimit/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPCChartControlLimit" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SPCChartDef "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCChartDefID,VariableTypeID,SPCRuleID,RfStudyTypeID,GroupingSize,MovingRange,SPCCalcStyleID,RfGroupingID,NGroupMarkerID,CpBasedOnID,CLBasedOnID, 1 as \"org_id\"  FROM dbo.SPCChartDef WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPCChartDef/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPCChartDef" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SPCChartSet "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCChartSetID,SPCChartSet,AcquisitionID,SPCURI,RfDataBandID,NPeriods,SpecTypeID,IsRunningProductOnly,LHSessionID,MaxTrendRecallWindow, 1 as \"org_id\"  FROM dbo.SPCChartSet WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPCChartSet/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPCChartSet" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SPCChartSetView "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCChartSetViewID,SPCChartSetView,Sequence,SPCChartSetID,RfChartSetViewTypeID,NoCols,NoRows,Caption,Tooltip,IsAggregated,RfCutByIDs,IsPanelled,ImageURI,GridImageRender,ParetoXAxis,ParetoStackBy,SPCChartSetViewStyleID,IsAutoFit,OverlayFlags, 1 as \"org_id\"  FROM dbo.SPCChartSetView WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPCChartSetView/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPCChartSetView" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SPCChartSetViewStyle_CUS "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCChartSetViewStyleID,SPCChartSetViewStyle,IsSpecLimits,IsControlLimitZones,IsGrid,IsTimescaled,IsHAxis,IsVAxis,IsXChart,IsRsChart,IsRsWChart,IsDistribution,IsShowComments,IsXScatter,IsIncludeIgnored,IsOnlyOSOCCharts,SPCStatsStyleID,IsVerticalOverview,OverviewWidth,OverviewHeight,PageBreakRfCutByIDs,ChartWidth,ChartHeight,IsFixedScale,IsParetoCurve,IsLegend,IsHorizontalDistribution,IsSigmaLines,IsShowCAComments,IsShowUnAckAlarms,HorizontalOffset,IsShowLimitLabels,IsColourZones,IsSystem,IsOSHotCold,FixedScaleOverscaling,IsConstantTitleRow,IsShowStatCategories,IsOverlayEnvelope,IsGradientBackground,RunChartFont,DistributionFont,StatisticsFont,VAxisFont,HAxisFont,OverlayKeyFont,IsShowOverlayKey, 1 as \"org_id\"  FROM dbo.SPCChartSetViewStyle_CUS WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPCChartSetViewStyle_CUS/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPCChartSetViewStyle_CUS" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SPCDefaultControlLimit "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCDefaultControlLimitID,SPCChartDefID,RfChartComponentID,RfChart,UCL,CL,LCL,ModifiedDT,LoginID,ProductID, 1 as \"org_id\"  FROM dbo.SPCDefaultControlLimit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPCDefaultControlLimit/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPCDefaultControlLimit" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SPCDefaultView "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCDefaultViewID,Sequence,RfChartSetViewTypeID,NoCols,NoRows,Caption,Tooltip,IsAggregated,RfCutByIDs,IsPanelled,ImageURI,GridImageRender,ParetoXAxis,ParetoStackBy,SPCChartSetViewStyleID,IsAutoFit,AcquisitionUsageID,OverlayFlags, 1 as \"org_id\"  FROM dbo.SPCDefaultView WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPCDefaultView/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPCDefaultView" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SPCRule "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCRuleID,SPCRule,TAGMSTYPE1ID, 1 as \"org_id\"  FROM dbo.SPCRule WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPCRule/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPCRule" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SPCStatsStyle_CUS "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCStatsStyleID,SPCStatsStyle,IsSystem, 1 as \"org_id\"  FROM dbo.SPCStatsStyle_CUS WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPCStatsStyle_CUS/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPCStatsStyle_CUS" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SPCVarChart "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SPCVarChartID,SPCRuleID,ProductID,AcquisitionID,MachineStageID,VariableTypeID,RfAttributeClassID,HeadNo,RfAcquisitionClassID,TrendStartMSID,TAGMSTYPE1ID,ATTRIBUTETYPEID,TAGMSVALUE1,CreateDT,LoginID,IsMsetInsert, 1 as \"org_id\"  FROM dbo.SPCVarChart WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPCVarChart/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPCVarChart" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Spec "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SpecID,VariableID,USL,NOM,LSL,SpecTypeID,IsEdited,RevisionNo,DecPlaces, 1 as \"org_id\"  FROM dbo.Spec WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Spec/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Spec" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Spec_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SpecID,LoginID,Units,URL,LRL,FromDT,ToDT,Comments,ModifiedDT,DrawingNumber, 1 as \"org_id\"  FROM dbo.Spec_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Spec_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Spec_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SpecType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SpecTypeID,SpecType,CUSTOMERID, 1 as \"org_id\"  FROM dbo.SpecType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SpecType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SpecType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SPMM_CalTools "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT EDIT,Site,Control_No,CSF_No,AssetExternalControl_No,Manufacturer,EquipmentName,Model_No,Serial_No,EquipmentLocation,CalRequired,CalFrequency,CalDate,CalDueDate,Owner,CalibrationSite,Calibrator,Status,Isthelastcalibrationoutoftolerance,DueDate, 1 as \"org_id\"  FROM dbo.SPMM_CalTools WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPMM_CalTools/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_CalTools" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: SPMM_DMCost "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT Oracle_PN,Description,Cost, 1 as \"org_id\"  FROM dbo.SPMM_DMCost WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/SPMM_DMCost/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_DMCost" >> timings.txt
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
echo "sqoop: sysdiagrams "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT name,principal_id,diagram_id,version,definition, 1 as \"org_id\"  FROM dbo.sysdiagrams WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/sysdiagrams/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest sysdiagrams" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TagCauseAction "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT TagCauseActionID,CauseActionID,TagTypeID,TagValue,DT, 1 as \"org_id\"  FROM dbo.TagCauseAction WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagCauseAction/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TagCauseAction" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TagDef "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT TagDefID,TagOwnerID,RfTable,TagTypeID,TagValue,DT, 1 as \"org_id\"  FROM dbo.TagDef WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagDef/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TagDef" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TagDefect "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT TagDefectID,IndividualDefectID,TagTypeID,TagValue,DT,X,Y, 1 as \"org_id\"  FROM dbo.TagDefect WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagDefect/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TagDefect" >> timings.txt
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
echo "sqoop: TagListValue "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT TagListValueID,TagListID,TagListValue,DisplayOrder,IsRetired, 1 as \"org_id\"  FROM dbo.TagListValue WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagListValue/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TagListValue" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TagMS "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT TagMSID,MeasurementSetID,TagTypeID,TagValue,DT,TagTreeNodeID,X,Y, 1 as \"org_id\"  FROM dbo.TagMS WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagMS/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TagMS" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TagPartInstance "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT TagPartInstanceID,PartInstanceID,TagTypeID,TagValue,DT, 1 as \"org_id\"  FROM dbo.TagPartInstance WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagPartInstance/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TagPartInstance" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TagProfile "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT TagProfileID,Name, 1 as \"org_id\"  FROM dbo.TagProfile WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagProfile/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TagProfile" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TagTree "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT TagTreeID,TagTree, 1 as \"org_id\"  FROM dbo.TagTree WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagTree/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TagTree" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TagTreeNode "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT TagTreeNodeID,TagTreeNode,TagTreeID,ParentTagTreeNodeID,Depth,SortOrder,ImageURI,NoCols,NoRows,SortExpression,ImageWidth,ImageHeight, 1 as \"org_id\"  FROM dbo.TagTreeNode WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagTreeNode/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TagTreeNode" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TagTreeNodeImgLoc "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT TagTreeNodeImgLocID,TagTreeNodeID,X,Y,Width,Height,MappedTagTreeNodeID, 1 as \"org_id\"  FROM dbo.TagTreeNodeImgLoc WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagTreeNodeImgLoc/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TagTreeNodeImgLoc" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TagType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT TagTypeID,RfDataTypeID,Name,TagTypeCode,ISSYSTEM,TAGVIEW, 1 as \"org_id\"  FROM dbo.TagType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TagType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TagTypeInTagProfile "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT TagProfileID,TagTypeID,EntryOrder,CompulsoryConditions,IsDefaulted,IsEncrypted,TagListID,IsReadOnly,RptQueryID,TagTypeInTagProfileID,TagTreeID,RfTagDataSourceID, 1 as \"org_id\"  FROM dbo.TagTypeInTagProfile WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagTypeInTagProfile/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TagTypeInTagProfile" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TMP_Checks_Done "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ShiftID,JobID,AcquisitionContextID,Checks_Done, 1 as \"org_id\"  FROM dbo.TMP_Checks_Done WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TMP_Checks_Done/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TMP_Checks_Done" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TMP_Job_Shift_Downtime "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ShiftID,MachineStageID,JobID,Downtime, 1 as \"org_id\"  FROM dbo.TMP_Job_Shift_Downtime WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TMP_Job_Shift_Downtime/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TMP_Job_Shift_Downtime" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: TMP_Jobs_In_Shifts "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ShiftID,MachineStageID,JobID,PartID,FromDT,ToDT,Downtime,Total_Time,Uptime, 1 as \"org_id\"  FROM dbo.TMP_Jobs_In_Shifts WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TMP_Jobs_In_Shifts/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TMP_Jobs_In_Shifts" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Tool "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolID,Tool,ToolSet,Description,ToolTypeID,IsRetired,NoCavities,Variant1,Variant2,Variant3,Variant4,Variant5,Variant6,Variant7,Variant8,Variant9,Variant10,Variant11,Variant12,Variant13,Variant14,Variant15,PartID,Variant16,Variant17,Variant18,Variant19,Variant20, 1 as \"org_id\"  FROM dbo.Tool WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Tool/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Tool" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Tool_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolID,Supplier,Reference1,Reference2,Reference3,Reference4,Reference5,Ident, 1 as \"org_id\"  FROM dbo.Tool_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Tool_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Tool_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Tool_Custom "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolID, 1 as \"org_id\"  FROM dbo.Tool_Custom WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Tool_Custom/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Tool_Custom" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ToolAtLocation "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolAtLocationID,LocationID,ToolID,FromDT,ToDT,IsEdited,RevisionNo,EditedToolAtLocationID,MovedByLoginID,ModifiedDT,Reference1,Reference2,Reference3, 1 as \"org_id\"  FROM dbo.ToolAtLocation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ToolAtLocation/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ToolAtLocation" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ToolCavity "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolCavityID,CavityNumber,CavityName,ToolID, 1 as \"org_id\"  FROM dbo.ToolCavity WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ToolCavity/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ToolCavity" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ToolCavityStateReason "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolCavityStateReasonID,ToolTypeID,ToolCavityStateReason,Description,CavityStatusCode, 1 as \"org_id\"  FROM dbo.ToolCavityStateReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ToolCavityStateReason/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ToolCavityStateReason" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ToolChangeReason "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolChangeReasonID,ToolTypeID,ChangeReason,Description,ChangeToRfToolStatusID, 1 as \"org_id\"  FROM dbo.ToolChangeReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ToolChangeReason/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ToolChangeReason" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ToolGroup "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolGroupID,ToolGroup,Description,ToolGroupCode, 1 as \"org_id\"  FROM dbo.ToolGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ToolGroup/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ToolGroup" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ToolState "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolStateID,ToolID,FromDT,ToDT,RfToolStatusID,LoginID,Comments,OpenedDT,SavedDT,IsEdited,RevisionNo, 1 as \"org_id\"  FROM dbo.ToolState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ToolState/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ToolState" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ToolType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolTypeID,ToolType,ToolTypeCode,Description,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID, 1 as \"org_id\"  FROM dbo.ToolType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ToolType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ToolType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ToolUsage "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolUsageID,JobID,MachineStageID,ToolID,FromDT,ToDT,ToolPosition,ToolChangeReasonID,IsEdited,RevisionNo,OperationID, 1 as \"org_id\"  FROM dbo.ToolUsage WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ToolUsage/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ToolUsage" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: ToolUsage_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT ToolUsageID,StartUsingComments,ToolChangeComments,StartLoginID,ChangeLoginID,OpenedStartDT,OpenedChangeDT,SavedStartDT,SavedChangeDT,OriginalLoginID,EditedToolUsageID,Reference1,Reference2,Reference3,Reference4,Reference5, 1 as \"org_id\"  FROM dbo.ToolUsage_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ToolUsage_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest ToolUsage_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Unit "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT UnitID,Unit,Description, 1 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Unit" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: UnitConversion "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT FromUnitID,ToUnitID,Multiplier,UnitConversionID, 1 as \"org_id\"  FROM dbo.UnitConversion WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/UnitConversion/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest UnitConversion" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: UnitCount "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT UnitCountID,UnitCountTypeID,PartID,Quantity,UnitID,DT,MachineStageID,IsEdited,RevisionNo, 1 as \"org_id\"  FROM dbo.UnitCount WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/UnitCount/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest UnitCount" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: UnitCount_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT UnitCountID,CollectionQuantity,CollectionUnitID,Comments,LoginID,OpenedDT,SavedDT,OriginalLoginID,EditedUnitCountID,Reference1,Reference2,Reference3,Reference4,Reference5, 1 as \"org_id\"  FROM dbo.UnitCount_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/UnitCount_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest UnitCount_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: UnitCountType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT UnitCountTypeID,UnitCountType,Description,MachineStageTypeID,DefaultUnitID,IsQuantityIn,IsQuantityOut,IsMaintenanceCount,IsConvertableToBaseUnits,AssetCountTypeID, 1 as \"org_id\"  FROM dbo.UnitCountType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/UnitCountType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest UnitCountType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: UnitCountTypeGroup "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT UnitCountTypeGroupID,UnitCountTypeGroup,Description, 1 as \"org_id\"  FROM dbo.UnitCountTypeGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/UnitCountTypeGroup/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest UnitCountTypeGroup" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: VarChartOC "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT VarChartOCID,MeasurementSetID,SPCChartControlLimitID,SubgroupID, 1 as \"org_id\"  FROM dbo.VarChartOC WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/VarChartOC/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest VarChartOC" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Variable "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT VariableID,VariableTypeID,ProductID, 1 as \"org_id\"  FROM dbo.Variable WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Variable/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Variable" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: VariableType "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT VariableTypeID,Name,ProductTypeID,Description,IsUnilateral,VariableTypeCode,IsProcessParameter,VariableTypeClassID,ImageURI, 1 as \"org_id\"  FROM dbo.VariableType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/VariableType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest VariableType" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: VariableTypeClass "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT VariableTypeClassID,VariableTypeClass,Description,Priority, 1 as \"org_id\"  FROM dbo.VariableTypeClass WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/VariableTypeClass/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest VariableTypeClass" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: VariableTypeGroup "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT VariableTypeGroupID,Name,Description,VariableTypeGroupCode,IsSmartGroup,SmartGroupPattern, 1 as \"org_id\"  FROM dbo.VariableTypeGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/VariableTypeGroup/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest VariableTypeGroup" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: VarMeasurement "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT VarMeasurementID,SpecID,MeasurementSetID,Measurement,Ignored,VariableTypeID,ProductID,HeadNo,SampleNo,PositionNo,DT,RfIsOSID, 1 as \"org_id\"  FROM dbo.VarMeasurement WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/VarMeasurement/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest VarMeasurement" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: VarMeasurementP "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT VarMeasurementPID,SpecID,MeasurementSetPID,Measurement,Ignored,VariableTypeID,ProductID,HeadNo,SampleNo,PositionNo,DT,RfIsOSID, 1 as \"org_id\"  FROM dbo.VarMeasurementP WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/VarMeasurementP/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest VarMeasurementP" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: Version "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PlantDBVersion,Comments,ModifiedDT, 1 as \"org_id\"  FROM dbo.Version WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Version/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Version" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: WO "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT WOID,WONumber,RunNo,PartID,QuantityOrdered,RfJobStatusID,DeadlineDT,ActualStartDT,ActualEndDT,PlannedStartDT,PlannedEndDT,EstimatedStartDT,EstimatedEndDT,CustomerID,IsDiscrete,Reference1,Reference2,Reference3,Reference4,Reference5,WORefID, 1 as \"org_id\"  FROM dbo.WO WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/WO/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest WO" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: WO_ "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT WOID,CustomerOrderNo,LabelsPerInventoryPack,ItemsPerInventoryPack,ItemsPerLayer,LayersPerInventoryPack,PackingCode,LabelTemplate,LabelColour,EANCode,CusStartNum,CusEndNum,CustomerPartNo,CustomerPartDescription,LabelText1,LabelText2,LabelText3,PrinterURL,BOMVariantID, 1 as \"org_id\"  FROM dbo.WO_ WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/WO_/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest WO_" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: WO_custom "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT WOID,BaseWONumber,Txn_date,Wip_Entity_ID,Alternate_Bom,WO_Status,IsBtoCto, 1 as \"org_id\"  FROM dbo.WO_custom WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/WO_custom/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest WO_custom" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: WORef "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT WORefID,WOReference, 1 as \"org_id\"  FROM dbo.WORef WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/WORef/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest WORef" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: WorkInstructionProcedure "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT WorkInstructionProcedureID,WorkInstructionProcedure,WorkInstructionRef,PartID,IsEdited,FromDT,ToDT,RevisionNo,LoginID,ModifiedDT, 1 as \"org_id\"  FROM dbo.WorkInstructionProcedure WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/WorkInstructionProcedure/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest WorkInstructionProcedure" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: WorkInstructionResult "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT WorkInstructionResultID,WorkInstructionStepID,OperationID,DT,Comments,LoginID, 1 as \"org_id\"  FROM dbo.WorkInstructionResult WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/WorkInstructionResult/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest WorkInstructionResult" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: WorkInstructionStep "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT WorkInstructionStepID,WorkInstructionStep,WorkInstructionProcedureID,OperationTypeID,StepOrder,RfSpecialActionTypeID,AcquisitionVariantID, 1 as \"org_id\"  FROM dbo.WorkInstructionStep WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/WorkInstructionStep/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest WorkInstructionStep" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: xxxHipotData "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SERIAL_NUMBER,CONT_A,CONT_B,CONT_C,HIPOT,STATION,DATETIME,USERNAME,REMARKS, 1 as \"org_id\"  FROM dbo.xxxHipotData WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/xxxHipotData/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest xxxHipotData" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: xxxHipotData_Buffer "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT SERIAL_NUMBER,CONT_A,CONT_B,CONT_C,HIPOT,STATION,DATETIME,USERNAME,REMARKS, 1 as \"org_id\"  FROM dbo.xxxHipotData_Buffer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/xxxHipotData_Buffer/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest xxxHipotData_Buffer" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: xxxIPN "
echo "##################################################"
echo " "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT PartNumber,IPN, 1 as \"org_id\"  FROM dbo.xxxIPN WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/xxxIPN/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest xxxIPN" >> timings.txt

set hive.execution.engine=tez;
echo " "
echo "##################################################"
echo "Hive: Conditionally create data base MEStemp"
echo "##################################################"
echo " "

hive -e "CREATE DATABASE IF NOT EXISTS MEStemp"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table _SP_Crate"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp._SP_Crate (CrateID bigint, CrateNo varchar(508), PartID int, Quantity float, CurrentQuantity float, Locked tinyint, Complete tinyint, CreatedDT timestamp, CompletedDT timestamp, MachineStageID smallint, CrateIndex bigint, MirrorPartID int, PadLock varchar(36),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/_SP_Crate'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table _SP_CrateLabel"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp._SP_CrateLabel (_SP_CrateLabelID bigint, CrateID bigint, MachineStage varchar(508), PartNumber varchar(508), InvState varchar(508), CrateNo varchar(508), CreatedDT timestamp, CompleteDT timestamp, Quantity float, LabelTemplate varchar(508), PrinterURL varchar(2048), PrintedDT timestamp, ScannedDT timestamp, IsCancelled tinyint, IsReprint tinyint, PartDescription varchar(508), LabelSaveDirectory varchar(508), IsPrintLandscape tinyint, NoCopies smallint, LabelsPerInventoryPack smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/_SP_CrateLabel'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table _SP_LkInvIsolatedReasonMST"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp._SP_LkInvIsolatedReasonMST (LkInvIsolatedReasonMSTID int, InvIsolatedReasonID smallint, MachineStageTypeID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/_SP_LkInvIsolatedReasonMST'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table _SP_Pallet"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp._SP_Pallet (PalletID bigint, PalletNo varchar(508), PartID int, InvStateID smallint, Quantity float, CurrentQuantity float, Locked tinyint, Complete tinyint, CreatedDT timestamp, CompletedDT timestamp, MachineStageID smallint, PrincipleWOID int, PalletIndex bigint, ModulePartID int, Merged tinyint, PadLock varchar(36), IsBtoCto tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/_SP_Pallet'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table _SP_PalletLabel"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp._SP_PalletLabel (_SP_PalletLabelID bigint, PalletID bigint, MachineStage varchar(508), PartNumber varchar(508), InvState varchar(508), PalletNo varchar(508), CreatedDT timestamp, CompleteDT timestamp, Quantity float, LabelTemplate varchar(508), PrinterURL varchar(2048), PrintedDT timestamp, ScannedDT timestamp, IsCancelled tinyint, IsReprint tinyint, PartDescription varchar(508), LabelSaveDirectory varchar(508), IsPrintLandscape tinyint, NoCopies smallint, LabelsPerInventoryPack smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/_SP_PalletLabel'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table _SP_SEQ_LPN"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp._SP_SEQ_LPN (SeqID int, SeqVal varchar(1),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/_SP_SEQ_LPN'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table _SPML_ModuleInfo"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp._SPML_ModuleInfo (ModuleInfoID int, SerialNo varchar(508), LaminateID int, LaminateCreatedDT timestamp, LaminateOrderNo varchar(508), LaminatePartNo varchar(508), BINNo varchar(508), CktFormBuildPart varchar(508), CktFormBuildMachine varchar(508), CktFormBuildDT timestamp, GlassBuildPart varchar(508), GlassBuildDate timestamp, LaminationBuildMachine varchar(508), LaminationBuildDT timestamp, ModuleID int, ModuleCreatedDT timestamp, ModuleOrderNo varchar(508), IntendedModulePartNo varchar(508), IntendedModulePartDesc varchar(508), FramingBuildPart varchar(508), FramingBuildMachine varchar(508), FramingBuildDT timestamp, JboxBuildPart varchar(508), JboxBuildDT timestamp, FlashtestClassifiedDT timestamp, FinalModulePartNo varchar(508), FinalModulePartDesc varchar(508), ActualPower float, ActualVocMod float, ActualFF float, PackedDT timestamp, InventoryState varchar(508), JboxBuildMachine varchar(508), ActualIsc float, FlashtestBuildMachine varchar(508), Komax1 varchar(508), Komax2 varchar(508), Komax3 varchar(508), GlassID int, CellType varchar(100), StringerOperator varchar(100), CircuitOperator1 varchar(100), CircuitOperator2 varchar(100), TrimChangeReason varchar(4000), PowerChartGenerated tinyint, LaminateWoId int, ModuleWoId int, VisualStateId smallint, RfInvStateId smallint, ElTestDate timestamp, ElBuildMachine varchar(508), ActualVmpMod float, ActualImpMod float, TrimBuildMachine varchar(508), TrimBuildDT timestamp, CellThickness varchar(508), PalletID bigint, FlashTestID int, PadLock varchar(36), BtoCtoSerialNo varchar(508), EvaUseByDT timestamp, IsBtoCto tinyint, IntendedModuleWOID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/_SPML_ModuleInfo'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AcqCtxVarClass"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AcqCtxVarClass (AcqCtxVarClassID int, AcquisitionContextID int, VariableTypeClassID tinyint, IsOS tinyint, IsOC tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AcqCtxVarClass'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Acquisition"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Acquisition (AcquisitionID smallint, Acquisition varchar(508), AcquisitionCode varchar(100), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Acquisition'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AcquisitionAttributeType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AcquisitionAttributeType (AcquisitionAttributeTypeID int, AcquisitionVariantID smallint, AttributeTypeID smallint, EntryOrder smallint, Formula varchar(2000), IsExplicitStep tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AcquisitionAttributeType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AcquisitionChain"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AcquisitionChain (AcquisitionChainID smallint, AcquisitionChain varchar(508), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AcquisitionChain'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AcquisitionContext"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AcquisitionContext (MachineStageID smallint, AcquisitionVariantID smallint, LastMeasurementSetID int, AcquisitionContextID int, LastDoneDT timestamp, IsAttrOC tinyint, IsCriticalDefect tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AcquisitionContext'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AcquisitionDevice"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AcquisitionDevice (AcquisitionDeviceID int, AcquisitionVariableTypeID int, WorkstationConfigID smallint, Instructions varchar(8000), ImageURI varchar(8000), RfSourceID tinyint, DataDeviceID int, DeviceArgs varchar(508), DeviceOutput varchar(100), FillMode char(3), Preset varchar(100), Multiplier varchar(100), PreprocessingFunction varchar(508), IsManualTrigger tinyint, IsManualConfirm tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AcquisitionDevice'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AcquisitionGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AcquisitionGroup (AcquisitionGroupID smallint, AcquisitionGroup varchar(508), Description varchar(508), AcquisitionGroupCode varchar(100), LoginID smallint, ModifiedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AcquisitionGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AcquisitionVariableType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AcquisitionVariableType (AcquisitionVariableTypeID int, AcquisitionVariantID smallint, VariableTypeID int, NoHeads smallint, NoSamples smallint, NoPositions smallint, EntryOrder smallint, Formula varchar(2000),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AcquisitionVariableType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AcquisitionVariant"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AcquisitionVariant (AcquisitionVariantID smallint, AcquisitionID smallint, MeasurementSetTagProfileID smallint, PartInstanceTagProfileID smallint, DefectTagProfileID smallint, RfAcquisitionClassID tinyint, RfDataCollectionFreqID tinyint, DataCollectionPeriod int, IsRetired tinyint, AcqPlan varchar(4000), VMTPID smallint, CauseActionTPID smallint, Variant varchar(508), PartTypeID smallint, RevisionNo smallint, IsEdited tinyint, HeadAlias varchar(40), CauseTagListID smallint, ActionTagListID smallint, IsMeasuredWhenProduced tinyint, IsInvPackCheck tinyint, IsEBATrigger tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AcquisitionVariant'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AcquisitionVariant_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AcquisitionVariant_ (AcquisitionVariantID smallint, FromDT timestamp, ToDT timestamp, DataEntryURI varchar(508), SPCURI varchar(508), AcquisitionImageURI varchar(508), LoginID smallint, ModifiedDT timestamp, Comments varchar(508), Instructions varchar(8000), PartID int, Variant1 varchar(200), Variant2 varchar(200), Variant3 varchar(200), Variant4 varchar(200), Variant5 varchar(200), Variant6 varchar(200), Variant7 varchar(200), Variant8 varchar(200), Variant9 varchar(200), Variant10 varchar(200), Variant11 varchar(200), Variant12 varchar(200), Variant13 varchar(200), Variant14 varchar(200), Variant15 varchar(200), ToolTypeID smallint, NoCavities tinyint, Documents varchar(8000), IsSuspendable tinyint, IsRotatableStepPlan tinyint, EBAReference varchar(100), Variant16 varchar(200), Variant17 varchar(200), Variant18 varchar(200), Variant19 varchar(200), Variant20 varchar(200),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AcquisitionVariant_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Action"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Action (ActionID int, RfSpecialActionTypeID int, ActionTypeID smallint, ActionSubTypeID smallint, ActionPlanID smallint, ActionPlanCode varchar(508), ActionName varchar(508), Description varchar(2000), ActionOrder smallint, RfPriorityID tinyint, SubmitterID smallint, SubmittedDT timestamp, OwnerID smallint, ActionStatusID tinyint, ClosedDT timestamp, ModifiedDT timestamp, LoginID smallint, IsEdited tinyint, RevisionNo tinyint, DueDT timestamp, DeadlineDT timestamp, ExpiryDT timestamp, SortOrder float,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Action'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ActionNote"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ActionNote (ActionNoteID int, ActionID int, Note varchar(508), Comments varchar(508), NoteDT timestamp, LoginID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ActionNote'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ActionPlan"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ActionPlan (ActionPlanID smallint, RfSpecialActionTypeID int, ActionTypeID smallint, ActionSubTypeID smallint, ActionPlanCode varchar(508), ActionName varchar(508), Description varchar(2000), ActionPlanOrder smallint, RfPriorityID tinyint, IsRetired tinyint, VariableTypeID int, AttributeTypeID int, IsCompulsory tinyint, SortOrder float, IsOCApplicable tinyint, IsOSApplicable tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ActionPlan'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ActionStatus"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ActionStatus (ActionStatusID tinyint, ActionStatus varchar(508), ConditionalFormat varchar(508), IsClosedState tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ActionStatus'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ActionSubType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ActionSubType (ActionSubTypeID smallint, ActionSubType varchar(508), ActionTypeID smallint, Description varchar(508), SubActionTypeCode varchar(508), ReportOrder smallint, Format varchar(508), IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ActionSubType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ActionType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ActionType (ActionTypeID smallint, ActionType varchar(508), Description varchar(508), ActionTypeCode varchar(508), ReportOrder smallint, Format varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ActionType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Address"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Address (AddressID smallint, Address1 varchar(508), Address2 varchar(508), City varchar(100), County varchar(100), PostCode varchar(100), Country varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Address'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Asset"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Asset (AssetID int, AssetName varchar(508), RfAssetTypeID smallint, LineID smallint, MachineStageID smallint, ToolID int, GaugeID smallint, PartID int, InventoryPackID int, LocationID int, IsRetired tinyint, CostCentreID smallint, ManufacturerID smallint, SupplierID smallint, AcquiredDT timestamp, PONumber varchar(100), OrderedDT timestamp, ExpectedDeliveryDT timestamp, ExpectedFirstUseDT timestamp, EndUseDT timestamp, EndUseReason varchar(100), PurchaseCost float, DefaultLocationID int, Comments varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Asset'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AssetCountType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AssetCountType (AssetCountTypeID smallint, AssetCountType varchar(100), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AssetCountType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AssetCycleCount"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AssetCycleCount (AssetCycleCountID int, AssetID int, RfDayPeriodID int, Count int, AssetCountTypeID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AssetCycleCount'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AssetExplosion"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AssetExplosion (AssetID int, ParentAssetID int, SubAssetID int, Lvl int, SortOrder varchar(254), Comments varchar(508), AssetLevelID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AssetExplosion'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AssetLevel"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AssetLevel (AssetLevelID int, AssetID int, SubAssetID int, Sequence varchar(10), Comments varchar(508), FromDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AssetLevel'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Attribute"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Attribute (AttributeID int, AttributeTypeID smallint, ProductID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Attribute'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AttributeType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AttributeType (AttributeTypeID smallint, ProductTypeID smallint, Name varchar(508), Description varchar(508), ImageURI varchar(508), RfAttributeClassID tinyint, IsPassFail tinyint, IsRaiseCA tinyint, LikelyCauses varchar(508), Impact varchar(508), Weighting float, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), AttributeTypeCode varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AttributeType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AttributeTypeGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AttributeTypeGroup (AttributeTypeGroupID smallint, Name varchar(508), Description varchar(508), AttributeTypeGroupCode varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AttributeTypeGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AVAttribute"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AVAttribute (AcquisitionVariantID smallint, TargetSampleSize int, RfAttrStudyTypeID tinyint, Instructions varchar(8000), ImageURI varchar(8000), NoHeads smallint, RfSourceID tinyint, DataDeviceID int, DeviceArgs varchar(508), DeviceOutput varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AVAttribute'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table AVDataEntryOptions"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.AVDataEntryOptions (AcquisitionVariantID smallint, RfVarGridStyleID smallint, IsPITCols tinyint, IsPISNoCol tinyint, RfAttrGridStyleID smallint, IsStepGrid tinyint, IsAttrSkipStep tinyint, ShowAttrInfoTip tinyint, UseAttrImagePicker tinyint, AttrGridContextMenu tinyint, IsPISerial tinyint, AutoGenerateSerialNo tinyint, PITSampling smallint, MSTSampling smallint, VAInterlace smallint, IsExplicitHS smallint, SampleSizeMode smallint, OnDataCommitGoTo varchar(50), IsDisableOOSWarnings tinyint, StepEditPolicy smallint, DisableKeyboardOverride tinyint, ChainToStopped smallint, DisplayPlan varchar(3000), AttrPassFailDefault tinyint, VariableSaveMode tinyint, AttrCellClick tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/AVDataEntryOptions'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table BOMExplosion"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.BOMExplosion (PartID int, ParentPartID int, SubPartID int, BOMItemID int, SubPartQuantityTotal float, SubPartUnitID int, RfInvPackTraceabilityID smallint, Lvl int, SortOrder varchar(254), SubPartQuantity float, BOMVariantID int, Instructions varchar(8000), RfBOMItemTypeID tinyint, IsAllowExceedBOMQty tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/BOMExplosion'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table BOMItem"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.BOMItem (BOMItemID int, BOMVariantID int, PartID int, SubPartID int, SubPartQuantity float, SubPartUnitID smallint, RfInvPackTraceabilityID smallint, Sequence varchar(10), Instructions varchar(8000), RfBOMItemTypeID tinyint, IsDefault tinyint, IsAllowExceedBOMQty tinyint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/BOMItem'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table BOMVariant"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.BOMVariant (BOMVariantID int, BOMVariant varchar(508), PartID int, IsDefault tinyint, BOMVariantIndex int, IsRetired tinyint, LoginID smallint, DT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/BOMVariant'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table BuildRecord"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.BuildRecord (BuildRecordID int, InvPackCreatedID int, InvPackConsumedID int, QuantityUsed float, UnitID smallint, BuildDT timestamp, IsEdited tinyint, RevisionNo smallint, BuildMachineStageID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/BuildRecord'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table BuildRecord_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.BuildRecord_ (BuildRecordID int, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, EditedBuildRecordID int, OriginalLoginID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/BuildRecord_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table CauseAction"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.CauseAction (CauseActionID int, MeasurementSetID int, IsAttributes tinyint, IndividualDefectID int, AttributeTypeID smallint, Cause varchar(508), Action varchar(508), DT timestamp, VarChartOCID int, RfIsOSID tinyint, VarMeasurementID int, VariableTypeID int, IsEdited tinyint, RevisionNo smallint, ProductID int, AcquisitionID smallint, MachineStageID smallint, RfAttributeClassID tinyint, HeadNo smallint, SampleNo smallint, PositionNo smallint, RfAcquisitionClassID tinyint, SPCChartComponentID int, SPCRuleID smallint, RfCauseActionStateID tinyint, TAGMSVALUE1 varchar(508), TAGMSTYPE1ID smallint, CreateDT timestamp, AcknowledgeDT timestamp, CloseDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/CauseAction'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table CauseAction_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.CauseAction_ (CauseActionID int, Comments varchar(4000), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedCauseActionID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/CauseAction_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Comments"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Comments (CommentsID int, LoginID smallint, DT timestamp, Subject varchar(100), Comments varchar(4000),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Comments'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table CommonFault"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.CommonFault (CommonFaultID smallint, CommonFault varchar(508), Description varchar(508), LineTypeID smallint, MachineStageTypeID smallint, ToolTypeID smallint, GaugeTypeID smallint, PartTypeID smallint, RfAssetTypeID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/CommonFault'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Concern"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Concern (ConcernID int, ConcernStatusID tinyint, ConcernTypeID smallint, RaisedDT timestamp, ClosedDT timestamp, SeverityID tinyint, DueDate timestamp, ConcernOwnerID smallint, DepartmentOwnerID smallint, CustomerID smallint, CustomerContact varchar(508), CustomerReference varchar(508), AffectOnCustomer varchar(508), PartTypeID smallint, PartID int, WOID int, LineID smallint, ProductionFromDT timestamp, ShiftID int, QuantityAffected bigint, QuantityUsed bigint, InvIsolatedReasonID int, Cost float, LoginID smallint, ModifiedDT timestamp, Concern varchar(4000), SubmitterLoginID smallint, CustomerProduct varchar(508), RfCurrencyID tinyint, MachineStageID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), RfConcernApplicationTypeID tinyint, HeadNo smallint, ProductionToDT timestamp, QuantityFound bigint, QuantityReturned bigint, QuantityScrapped bigint, QuantitySorted bigint, SupplierID smallint, ToolID int, VariableTypeID int, AttributeTypeID smallint, ClosedByLoginID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Concern'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ConcernStatus"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ConcernStatus (ConcernStatusID tinyint, ConcernStatus varchar(508), ConditionalFormat varchar(508), IsClosedState tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ConcernStatus'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ConcernType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ConcernType (ConcernTypeID smallint, ConcernType varchar(508), Description varchar(508), ConcernTypeCode varchar(508), Format varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ConcernType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table CostCentre"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.CostCentre (CostCentreID smallint, CostCentre varchar(100), Description varchar(500),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/CostCentre'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table CRN_AcquisitionVariableType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.CRN_AcquisitionVariableType (AcquisitionVariableTypeID int, JobCommentLength int, RfTorqueDirectionID smallint, RfCycleEndTimeID tinyint, ThresholdTorque float, RfMeasurementTypeID smallint, RfFrequencyResponseID tinyint, UnitID smallint, AuditAngle smallint, CrnAdapterID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/CRN_AcquisitionVariableType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table CrnAdapter"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.CrnAdapter (CrnAdapterID smallint, Length tinyint, ModifiedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/CrnAdapter'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Customer"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Customer (CustomerID smallint, Customer varchar(508), CustomerCode varchar(508), AddressID smallint, RfLanguageID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Customer'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table DefectCount"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.DefectCount (DefectCountID int, MeasurementSetID int, HeadNo smallint, DefectCount int, Ignored tinyint, AttributeTypeID smallint, ProductID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/DefectCount'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table DefectCountP"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.DefectCountP (DefectCountPID int, MeasurementSetPID int, HeadNo smallint, DefectCount int, Ignored tinyint, AttributeTypeID smallint, ProductID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/DefectCountP'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Department"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Department (DepartmentID smallint, Name varchar(508), DepartmentGroup varchar(508), Classification1 varchar(100), PlantID smallint, DepartmentCode varchar(100), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Department'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Document"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Document (DocumentID int, FileName varchar(2048), Description varchar(2048), MimeType varchar(100), Attachment varbinary(8000), UploadDT timestamp, LoginID int, DocumentTypeID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Document'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table DocumentType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.DocumentType (DocumentTypeID smallint, DocumentType varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/DocumentType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table dtproperties"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.dtproperties (id int, objectid int, property varchar(64), value varchar(255), uvalue varchar(510), lvalue int, version int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/dtproperties'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table EBATrigger"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.EBATrigger (EBATriggerID int, RfTriggerTypeID smallint, ContextDictionary varchar(2048), TriggerOwnerID int, CreateDT timestamp, ProcessedDT timestamp, RfWatchProcessStateID smallint, Message varchar(7000), TotalTime float, OracleInsertTime float, OracleConnectionTime float, OracleInsertStatement varchar(8000),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/EBATrigger'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ELData_Acq"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ELData_Acq (MeasurementSetID int, SerialNo varchar(508), BINNo varchar(508), Komax1 varchar(508), CktFormBuildMachine varchar(508), ElBuildMachine varchar(508), Comments varchar(4000), DT datetime2(3), NumCells int, CellHole int, LiftedTab int, MultipleCrack int, DiagonalCrack int, ReversePolarity int, ShatteredCell int, ShortedPasteBusbar int, ShortedPasteMiddle int, ShortedPasteUnknown int, VerticalCrack int, VisibleCrackFab int, VisibleCrackMod int, Weird int, CellReplacementFab int, CellReplacementMod int, TouchUpthenGood int, WipethenGood int, Rework int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ELData_Acq'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ELData_Acq_Buffer"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ELData_Acq_Buffer (MeasurementSetID int, SerialNo varchar(508), BINNo varchar(508), Komax1 varchar(508), CktFormBuildMachine varchar(508), ElBuildMachine varchar(508), Comments varchar(4000), DT datetime2(3), NumCells int, CellHole int, LiftedTab int, MultipleCrack int, DiagonalCrack int, ReversePolarity int, ShatteredCell int, ShortedPasteBusbar int, ShortedPasteMiddle int, ShortedPasteUnknown int, VerticalCrack int, VisibleCrackFab int, VisibleCrackMod int, Weird int, CellReplacementFab int, CellReplacementMod int, TouchUpthenGood int, WipethenGood int, Rework int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ELData_Acq_Buffer'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ELData_CellInfo"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ELData_CellInfo (ConsumesCells varchar(508), ModuleID varchar(508), BINNo varchar(508), Variant1 varchar(200), CktFormBuildDT datetime2(3),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ELData_CellInfo'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ELData_CellInfo_Buffer"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ELData_CellInfo_Buffer (ConsumesCells varchar(508), ModuleID varchar(508), BINNo varchar(508), Variant1 varchar(200), CktFormBuildDT datetime2(3),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ELData_CellInfo_Buffer'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Fault"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Fault (FaultID int, Fault varchar(508), FaultComments varchar(508), AssetID int, MaintenanceWorkID int, ReportedByLoginID smallint, FaultReportedDT timestamp, CommonFaultID smallint, FaultStateID int, TimeToRespond float, TimeToRepair float, TimeResponseToRepair float, RevisionNo smallint, IsEdited tinyint, LoginID smallint, ModifiedDT timestamp, Cause varchar(1000), MachineStopID int, Symptoms varchar(1000),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Fault'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table FaultState"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.FaultState (FaultStateID int, FaultID int, FromDT timestamp, ToDT timestamp, FaultStatusID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, IsEdited tinyint, RevisionNo tinyint, OriginalLoginID smallint, EditedFaultStateID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/FaultState'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table FaultStatus"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.FaultStatus (FaultStatusID smallint, FaultStatus varchar(508), Description varchar(508), RfFaultStatusID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/FaultStatus'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Gauge"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Gauge (GaugeID int, Gauge varchar(508), GaugeTypeID smallint, DataDeviceID smallint, SerialNo varchar(508), SupplierID smallint, DatePurchased timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Gauge'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table GaugeType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.GaugeType (GaugeTypeID smallint, GaugeType varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/GaugeType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table IndividualDefect"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.IndividualDefect (IndividualDefectID int, PartInstanceID int, Ignored tinyint, DefectCount int, MeasurementSetID int, AttributeTypeID smallint, ProductID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/IndividualDefect'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InvChangeState"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InvChangeState (InvChangeStateID int, InventoryPackID int, FromDT timestamp, ToDT timestamp, InvIsolatedReasonID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, IsEdited tinyint, RevisionNo tinyint, OriginalLoginID smallint, EditedInvChangeStateID int, InvStateID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InvChangeState'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryAtLocation"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InventoryAtLocation (InventoryAtLocationID int, LocationID int, InventoryPackID int, FromDT timestamp, ToDT timestamp, IsEdited tinyint, RevisionNo tinyint, EditedInvAtLocationID int, MovedByLoginID smallint, ModifiedDT timestamp, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InventoryAtLocation'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryLabel"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InventoryLabel (InventoryLabelID int, MachineStage varchar(508), PartNumber varchar(508), PartType varchar(508), QuantityOrdered float, WONumber varchar(508), InventoryPackNo varchar(508), CreatedFromDT timestamp, Quantity float, Unit varchar(40), Line varchar(508), LabelTemplate varchar(508), LabelsPerInventoryPack smallint, ItemsPerLayer float, LayersPerInventoryPack int, PrinterURL varchar(2048), PrintedDT timestamp, ItemsPerInventoryPack float, ScannedDT timestamp, IsCancelled tinyint, OrderQuantityPacks int, LineShortName varchar(100), PackNo int, IsReprint tinyint, PartDescription varchar(508), LabelSaveDirectory varchar(508), JobID int, IsPrintLandscape tinyint, NoCopies smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InventoryLabel'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryLabel_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InventoryLabel_ (InventoryLabelID int, LabelColour varchar(50), EANCode varchar(20), CusNum int, PackingCode varchar(100), CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), Customer varchar(508), Address1 varchar(508), Address2 varchar(508), City varchar(50), County varchar(50), PostCode varchar(50), Country varchar(50),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InventoryLabel_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryLabel_custom"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InventoryLabel_custom (InventoryLabelID int, InventoryPackID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InventoryLabel_custom'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryPack"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InventoryPack (InventoryPackID int, InventoryPackNo varchar(508), WOID int, JobID int, CreatedFromDT timestamp, CreatedToDT timestamp, CreatedOnMachineStageID smallint, IsEdited tinyint, RevisionNo tinyint, PartID int, Quantity float, UnitID smallint, Ignored tinyint, InventoryPackIndex int, CustomerUniqueKey varchar(508), ReceivedDT timestamp, BirthDT timestamp, LastBuildRecordID int, msrepl_tran_version varchar(36), CurrentQuantity float, QuantityAdjustment float, PositionNumber tinyint, LocationID int, InvStateID int, LocationFromDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InventoryPack'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryPack_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InventoryPack_ (InventoryPackID int, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedInventoryPackID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Reference6 varchar(508), Reference7 varchar(508), Reference8 varchar(508), Reference9 varchar(508), Reference10 varchar(508), SupplierID smallint, SupplierReference varchar(508), UseByDT timestamp, UseAfterDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InventoryPack_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryPack_Custom"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InventoryPack_Custom (InventoryPackId int, Txn_date timestamp, OracleStatus tinyint, IntendedWOID int, FinalWOID int, OriginalQty float, Seq_Id int, From_Subinventory char(20), From_Locator char(80), To_Subinventory char(20), To_Locator char(80), ScrappedShiftID int, LastInventoryLabelID int, ScrapLocationID int, MachineLocationID int, ScrapReasonID smallint, ModuleInfoID int, ResealedDT timestamp, CrateID bigint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InventoryPack_Custom'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryUsage"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InventoryUsage (InventoryUsageID int, JobID int, MachineStageID smallint, InventoryPackID int, FromDT timestamp, ToDT timestamp, IsEdited tinyint, RevisionNo tinyint, IsReintroduced tinyint, Quantity float,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InventoryUsage'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryUsage_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InventoryUsage_ (InventoryUsageID int, StartUsingComments varchar(508), StopUsingComments varchar(508), StartLoginID smallint, StopLoginID smallint, OpenedStartDT timestamp, OpenedEndDT timestamp, SavedStartDT timestamp, SavedEndDT timestamp, OriginalLoginID smallint, EditedInventoryUsageID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InventoryUsage_'"

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
echo "Hive: Conditionally create table Job"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Job (JobID int, WOID int, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDT timestamp, PlannedDuration float, EstimatedStartDT timestamp, EstimatedEndDT timestamp, EstimatedDuration float, ScheduledSequence smallint, LineID smallint, ProductionStartDT timestamp, ProductionEndDT timestamp, TheoreticalCycleTime float, BudgetChangeOver int, QuantityOrdered float, IsCalculated tinyint, LineGroupID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Job'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Job_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Job_ (JobID int, JobInstructions varchar(2048), ReleaseDT timestamp, ReleaseLoginID smallint, StartLoginID smallint, EndLoginID smallint, Comments varchar(2000), ModifiedDt timestamp, ModifiedLoginID smallint, StoppedReason varchar(508), SkippedReason varchar(508), SkippedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Job_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Job_Custom"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Job_Custom (JobID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Job_Custom'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Line"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Line (LineID smallint, Line varchar(508), Description varchar(508), LineTypeID smallint, IsRetired tinyint, RfIntervalModeID tinyint, IsOEEInventoryIsolation tinyint, IsOEEInventoryReintroduction tinyint, IsCountOutputInventory tinyint, IsCountInputInventory tinyint, IsLineInfoSweepEnabled tinyint, IsWOOnSingleJob tinyint, LineShortName varchar(100), CurrentLineInfoID int, LastLineInfoID int, RfInvCreatedDateModeID tinyint, RfEndJobInvModeID tinyint, CurrentJobID int, IsScrapAsQualityLoss tinyint, IsScrapInProductionCounts tinyint, LineDownCostPerHour float, IsContributeLineGroupOutput tinyint, IsContributeLineGroupWaste tinyint, IsContributeLineGroupDowntime tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Line'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Line_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Line_ (LineID smallint, OEETarget float, WasteTarget float, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Line_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Line_Custom"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Line_Custom (LineID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Line_Custom'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineCell"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LineCell (LineCellID smallint, LineID smallint, IsPartNumber tinyint, IsWONumber tinyint, IsCustomer tinyint, IsDescription tinyint, IsHeader tinyint, IsRows tinyint, ConfigLayout varchar(50), IsClickable tinyint, IsStopJob tinyint, IsStartJob tinyint, IsEditable tinyint, IsStartNextJob tinyint, IsWORef1 tinyint, IsWORef2 tinyint, IsWORef3 tinyint, IsWorkInstruction tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LineCell'"

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
echo "Hive: Conditionally create table LineInfo_custom"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LineInfo_custom (LineInfoID int, CellsProduced decimal(8,0),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LineInfo_custom'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineInfoRecalc"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LineInfoRecalc (LineInfoID int, ModifiedDT timestamp, IsOEEInventoryIsolation tinyint, IsOEEInventoryReintroduction tinyint, IsOEESpoilage tinyint, IsOEEDowntime tinyint, IsOEEInventoryProduction tinyint, NoBottlenecks tinyint, BottleneckMachineStageID smallint, IsCountOutputInventory tinyint, IsCountInputInventory tinyint, IsOEEProductionUnits tinyint, LoginID smallint, SessionID int, PlantID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LineInfoRecalc'"

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
echo "Hive: Conditionally create table LkACAChain"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkACAChain (AcquisitionChainID smallint, AcquisitionContextID int, Sequence tinyint, LkACAChainID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkACAChain'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkAGAV"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkAGAV (AcquisitionGroupID smallint, AcquisitionVariantID smallint, Sequence smallint, LkAGAVID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkAGAV'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkATATG"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkATATG (AttributeTypeGroupID smallint, AttributeTypeID smallint, LkATATGID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkATATG'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkCDefInCView"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkCDefInCView (SPCChartDefID int, SPCChartSetViewID int, Sequence smallint, LkCDefInCViewID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkCDefInCView'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkConcernAction"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkConcernAction (LKConcernActionID int, ConcernID int, ActionID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkConcernAction'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkConcernDocument"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkConcernDocument (ConcernID int, DocumentID int, LKConcernDocumentID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkConcernDocument'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LKConcernInventoryPack"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LKConcernInventoryPack (LKConcernInventoryPackID int, ConcernID int, InventoryPackID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LKConcernInventoryPack'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkConcernRootCause"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkConcernRootCause (LkConcernRootCauseID int, RootCauseID int, ConcernID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkConcernRootCause'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LKCSetCDef"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LKCSetCDef (SPCChartSetID smallint, SPCChartDefID int, Sequence smallint, LkCSetCDefID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LKCSetCDef'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkCutBySPCRule"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkCutBySPCRule (SPCRuleID smallint, RfCutByID smallint, LkCutBySPCRuleID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkCutBySPCRule'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkDocumentAsset"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkDocumentAsset (LkDocumentAssetID int, DocumentID int, AssetID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkDocumentAsset'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkDocumentInvPack"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkDocumentInvPack (LkDocumentInvPackID int, DocumentID int, InventoryPackID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkDocumentInvPack'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkDocumentMaintProc"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkDocumentMaintProc (LkDocumentMaintProcID int, DocumentID int, MaintenanceProcedureID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkDocumentMaintProc'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkDocumentWIProc"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkDocumentWIProc (LkDocumentWIProcID int, WorkInstructionProcedureID smallint, DocumentID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkDocumentWIProc'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkDocumentWIStep"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkDocumentWIStep (LkDocumentWIStepID int, WorkInstructionStepID int, DocumentID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkDocumentWIStep'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkFaultMaintWork"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkFaultMaintWork (MaintenanceWorkID int, FaultID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkFaultMaintWork'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkInvPackInvPack"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkInvPackInvPack (LkInvPackInvPackID int, InventoryPackFromID int, InventoryPackToID int, RfInventoryLinkTypeID smallint, LoginID smallint, ModifiedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkInvPackInvPack'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkLineLineGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkLineLineGroup (LkLineLineGroupID int, LineGroupID smallint, LineID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkLineLineGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkLLS"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkLLS (LineID smallint, LineSectionID smallint, LkLLSID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkLLS'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkLocationMachineStage"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkLocationMachineStage (LkLocationMachineStageId int, MachineStageId smallint, LocationId int, IsLocationIn tinyint, IsLocationOut tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkLocationMachineStage'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkMachineStagePrinter"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkMachineStagePrinter (LkMachineStagePrinterID smallint, MachineStageID smallint, PrinterID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkMachineStagePrinter'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkMaintProcPersonnel"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkMaintProcPersonnel (LkMaintProcPersonnelID int, MaintenanceProcedureID int, PersonnelID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkMaintProcPersonnel'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkMGMS"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkMGMS (MachineStageID smallint, MachineGroupID smallint, LkMGMSID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkMGMS'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkMPGMP"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkMPGMP (LkMPGMPID int, MaintenanceProcedureGroupID int, MaintenanceProcedureID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkMPGMP'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkMSRGMSR"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkMSRGMSR (MachineStopReasonGroupID smallint, MachineStopReasonID smallint, LkMSRGMSRID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkMSRGMSR'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkOpTMST"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkOpTMST (OperationTypeID smallint, MachineStageTypeID smallint, LkOpTMSTID int, PassName varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkOpTMST'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkOpTPartTConsumed"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkOpTPartTConsumed (PartTypeID smallint, OperationTypeID smallint, IsInventoryCarriedOver tinyint, LkOpTPartTConsumedID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkOpTPartTConsumed'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkPartAlternatePart"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkPartAlternatePart (LkPartAlternatePartID int, AlternatePartID int, PartID int, PartToAlternatePartRatio float,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkPartAlternatePart'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkPartDocument"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkPartDocument (LkPartDocumentID int, PartID int, DocumentID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkPartDocument'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkPartLineSection"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkPartLineSection (PartID int, LineSectionID smallint, LkPartLineSectionID int, TheoreticalCycleTime float,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkPartLineSection'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkPartSupplier"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkPartSupplier (LkPartSupplierID int, PartID int, SupplierID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkPartSupplier'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LKPartUnit"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LKPartUnit (PartID int, UnitID smallint, LkPartUnitID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LKPartUnit'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkRootCauseAction"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkRootCauseAction (LkRootCauseActionID int, RootCauseID int, ActionID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkRootCauseAction'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LKShiftMachineStage"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LKShiftMachineStage (LkShiftMachineStageID int, MachineStageID smallint, ShiftID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LKShiftMachineStage'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkSPCCSVR"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkSPCCSVR (SPCCalcStyleID smallint, RfViolationRuleID smallint, RfChartComponentID tinyint, LkSPCCSVRID int, RuleRange smallint, RuleGroup smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkSPCCSVR'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LKSPCStatsStyleRfSPCStat_CUS"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LKSPCStatsStyleRfSPCStat_CUS (RfSPCStatID smallint, SPCStatsStyleID smallint, LkSPCStatsStyleRfSPCStatID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LKSPCStatsStyleRfSPCStat_CUS'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkSRGSR"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkSRGSR (LkSRGSRID smallint, ScrapReasonGroupID smallint, ScrapReasonID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkSRGSR'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkToolTypeOpType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkToolTypeOpType (ToolTypeID smallint, OperationTypeID smallint, MaxNoTools smallint, LkToolTypeOpTypeID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkToolTypeOpType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkTSTC"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkTSTC (ToolStateID int, ToolCavityID int, RfToolCavityStatusID tinyint, ToolCavityStateReasonID smallint, IsCavityChangeState tinyint, LkTSTCID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkTSTC'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkTTG"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkTTG (ToolGroupID smallint, ToolID int, LkTTGID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkTTG'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkUCTGUCT"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkUCTGUCT (LkUCTGUCTID smallint, UnitCountTypeGroupID smallint, UnitCountTypeID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkUCTGUCT'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkVCOCVRule"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkVCOCVRule (VarChartOCID int, RfViolationRuleID smallint, LkVCOCVRuleID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkVCOCVRule'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkVTVTG"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkVTVTG (VariableTypeGroupID smallint, VariableTypeID int, LkVTVTGID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkVTVTG'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkWIRBuildRecord"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkWIRBuildRecord (LkWIRBuildRecordID int, WorkInstructionResultID int, BuildRecordID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkWIRBuildRecord'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LkWIRMSetReq"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LkWIRMSetReq (LkWIRMSetReqID int, WorkInstructionResultID int, MeasurementSetRequiredID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LkWIRMSetReq'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Location"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Location (LocationID int, Location varchar(508), LocationTypeID smallint, IsRetired tinyint, MaxQuantity float, LocationCode varchar(100), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Location'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LocationType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LocationType (LocationTypeID smallint, LocationType varchar(100), LocationTypeCode varchar(100), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LocationType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineGroup (MachineGroupID smallint, MachineGroup varchar(508), Description varchar(508), IsRetired tinyint, RfMachineGroupTypeID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStage"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStage (MachineStageID smallint, MachineStageTypeID smallint, Name varchar(508), IsRetired tinyint, DepartmentID smallint, Description varchar(508), CurrentShiftPatternID smallint, NoHeads smallint, IsOEEBottleNeck tinyint, IsProductionOutput tinyint, MachineStopID int, StoppedScreenThreshold smallint, LineSectionID smallint, IsDiscrete tinyint, RfDowntimeCollectionModeID tinyint, RfSpoilageCollectionModeID tinyint, RfProductionCollectionModeID tinyint, LastBuildRecordID int, CurrentJobID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStage'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStage_Custom"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStage_Custom (MachineStageID smallint, ModuleDatabase varchar(100), IntendedWOID int, MachineStageCode varchar(100), CurrentLaminateSize int, Color varchar(100), ModifiedDT timestamp, CleanState int, CleaningCycleNo int, CleaningLaminatePartID int, CleaningLaminateSize int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStage_Custom'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStageCell"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStageCell (MachineStageCellID smallint, MachineStageID smallint, IsCreator tinyint, IsConsumer tinyint, IsLabeller tinyint, IsAutoBatchNo tinyint, IsPackConsumer tinyint, IsResortConsumer tinyint, IsNonJob tinyint, IsToolShowCavities tinyint, IsInvPackPackNo tinyint, IsInvPackPartNo tinyint, IsInvPackPartDesc tinyint, IsInvPackPartType tinyint, IsInvPackQty tinyint, IsInvPackHeader tinyint, IsInvPackRows tinyint, IsInvPackState tinyint, IsInvPackReason tinyint, IsAcqDblck tinyint, AcqGrid varchar(508), CustomPage varchar(508), IsClickable tinyint, IsDrillable tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStageCell'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStageEvent"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStageEvent (MachineStageEventID int, LoginID smallint, DT timestamp, MachineStageID smallint, MachineStageEventTypeID smallint, Comments varchar(4000),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStageEvent'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStageEventType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStageEventType (MachineStageEventTypeID smallint, MachineStageEventType varchar(100), Description varchar(508), MachineStageTypeID smallint, MachineStageEventTypeCode varchar(100), IsAlarm tinyint, AlarmText varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStageEventType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStageInvPosition"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStageInvPosition (MachineStageInvPositionId smallint, MachineStageId smallint, Position varchar(100), PositionNumber tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStageInvPosition'"

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
echo "Hive: Conditionally create table MachineStop_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStop_ (MachineStopID int, StopComments varchar(2048), StartComments varchar(2048), StartLoginID smallint, StopLoginID smallint, OpenedStopDT timestamp, SavedStopDT timestamp, OpenedStartDT timestamp, SavedStartDT timestamp, OriginalLoginID smallint, EditedMachineStopID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStop_'"

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
echo "Hive: Conditionally create table MachineStopReasonGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStopReasonGroup (MachineStopReasonGroupID smallint, MachineStopReasonGroup varchar(508), Description varchar(508), MachineStopReasonGroupCode varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStopReasonGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintenanceManHourPlanned"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintenanceManHourPlanned (MaintenanceManHourPlannedID int, MaintenanceProcedureID int, PlannedManHours float, PersonnelGroupID smallint, SupplierID smallint, SupplierCost float,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintenanceManHourPlanned'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintenanceManHours"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintenanceManHours (MaintenanceManHoursID int, MaintenanceWorkID int, WorkerLoginID smallint, ActualManHours float, RevisionNo smallint, IsEdited tinyint, ModifiedDT timestamp, SupplierID smallint, SupplierCost float, PersonnelGroupID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintenanceManHours'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintenancePartPlanned"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintenancePartPlanned (MaintenancePartPlannedID int, MaintenanceProcedureStepID int, PartID int, PlannedCost float, IsOptional tinyint, Quantity float, UnitID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintenancePartPlanned'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintenancePartUsed"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintenancePartUsed (MaintenancePartUsedID int, MaintenanceWorkID int, MaintenanceProcedureResultID int, PartID int, Cost float, DT timestamp, LoginID smallint, Quantity float, UnitID smallint, InventoryPackID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintenancePartUsed'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintenanceProcedure"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintenanceProcedure (MaintenanceProcedureID int, MaintenanceProcedure varchar(508), PartID int, ResponsibleDepartmentID smallint, BudgetWorkDone float, PlannedManHours float, PlannedDuration float, MaintenanceProcedureCode varchar(50), AdvanceWarningPeriod int, SchedulingWindow int, PlannedMachineStageDowntime int, PlannedLineDowntime int, SubPartID int, CreatedDT timestamp, CreatedLoginID smallint, RfMaintenanceWorkTypeID smallint, CostCentreID smallint, IsAutoAuthoriseWork tinyint, IsRetired tinyint, IsToolTakenOutOfService tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintenanceProcedure'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintenanceProcedureGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintenanceProcedureGroup (MaintenanceProcedureGroupID int, MaintenanceProcedureGroup varchar(100), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintenanceProcedureGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintenanceProcedureResult"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintenanceProcedureResult (MaintenanceProcedureResultID int, MaintenanceProcedureStepID int, MaintenanceWorkID int, Result float, ResultPassFail smallint, Comments varchar(508), DT timestamp, CheckedByLoginID smallint, MaintenanceProcedureStep varchar(2000), StepOrder float, SubPartID int, Component varchar(508), RfMaintenanceCheckTypeID smallint, RfSpecialActionTypeID tinyint, Test varchar(508), USL float, LSL float, PersonnelGroupID smallint, SupplierID smallint, Nom float, Units varchar(40), DecPlaces tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintenanceProcedureResult'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintenanceProcedureRevision"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintenanceProcedureRevision (MaintenanceProcedureRevisionID int, MaintenanceProcedureID int, FromDT timestamp, ToDT timestamp, IsEdited tinyint, RevisionNo smallint, LoginID smallint, ModifiedDT timestamp, RevisedMaintProcID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintenanceProcedureRevision'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintenanceProcedureStep"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintenanceProcedureStep (MaintenanceProcedureStepID int, MaintenanceProcedureStep varchar(2000), MaintenanceProcedureRevisionID int, StepOrder float, SubPartID int, Component varchar(508), RfMaintenanceCheckTypeID smallint, RfSpecialActionTypeID tinyint, Test varchar(508), USL float, LSL float, PersonnelGroupID smallint, SupplierID smallint, Nom float, Units varchar(40), DecPlaces tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintenanceProcedureStep'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintenanceReason"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintenanceReason (MaintenanceReasonID smallint, MaintenanceReason varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintenanceReason'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintenanceWork"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintenanceWork (MaintenanceWorkID int, MaintenanceWO varchar(508), AssetID int, MaintenanceProcedureID int, MaintenanceProcedureRevisionID int, MaintProcScheduleOnAssetID int, RfMaintenanceWorkTypeID smallint, AdhocWorkToDo varchar(508), MaintProcScheduleOnAssetNo int, MaintenanceWorkStatusID smallint, ActualStartDT timestamp, ActualEndDT timestamp, ActualManHours float, PlannedStartDT timestamp, PlannedEndDT timestamp, PlannedManHours float, OwnerLoginID smallint, ActualLabourCost float, PlannedLabourCost float, RfCurrencyID smallint, PartsCost float, LineDownCost float, Priority smallint, MaintenanceReasonID smallint, IsPlannedDateLockedByUser tinyint, EBATriggerID int, PeriodDueDT timestamp, RunHoursDueDT timestamp, PartsBasedDueDT timestamp, EventDueDT timestamp, ReleasedDT timestamp, ReleasedLoginID smallint, IsEdited tinyint, RevisionNo smallint, AbsoluteCounterThreshold int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintenanceWork'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintenanceWork_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintenanceWork_ (MaintenanceWorkID int, WorkDone varchar(2000), Comments varchar(508), LoginID smallint, ModifiedDT timestamp, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintenanceWork_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintenanceWorkStatus"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintenanceWorkStatus (MaintenanceWorkStatusID smallint, MaintenanceWorkStatus varchar(508), Description varchar(508), RfMaintenanceWorkStatusID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintenanceWorkStatus'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MaintProcScheduleOnAsset"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MaintProcScheduleOnAsset (MaintProcScheduleOnAssetID int, MaintenanceProcedureID int, AssetID int, RfPeriodTypeID smallint, StartDate timestamp, AssetCountTypeID smallint, EBAReference varchar(100), IsEdited tinyint, LoginID smallint, ModifiedDT timestamp, CalendarN1 int, CalendarN2 int, CalendarN3 int, CounterThreshold1 int, CounterThreshold2 int, CounterThreshold3 int, EstimatedCountPerDay float, RunHourThreshold1 int, RunHourThreshold2 int, RunHourThreshold3 int, EstimatedRunHoursPerDay float, EstimatedEventsPerDay float, RevisionNo smallint, IsRetired tinyint, PriorExecutions smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MaintProcScheduleOnAsset'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MeasurementSet"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MeasurementSet (MeasurementSetID int, ActualAttrSampleSize int, AcquisitionContextID int, IsEdited tinyint, DT timestamp, AcquisitionID smallint, MachineStageID smallint, RfAcquisitionClassID tinyint, RevisionNo tinyint, PartID int, JobID int, ResumeStep smallint, InventoryPackID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MeasurementSet'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MeasurementSet_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MeasurementSet_ (MeasurementSetID int, Comments varchar(4000), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedMSID int, ApprovalLoginID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MeasurementSet_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MeasurementSetP"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MeasurementSetP (MeasurementSetPID int, ActualAttrSampleSize int, AcquisitionContextID int, IsEdited tinyint, DT timestamp, AcquisitionID smallint, MachineStageID smallint, RfAcquisitionClassID smallint, RevisionNo tinyint, PartID int, JobID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MeasurementSetP'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MeasurementSetRequired"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MeasurementSetRequired (MeasurementSetRequiredID int, EBATriggerID int, AcquisitionContextID int, MeasurementSetID int, RfAcquisitionStatusID smallint, SubmittedDT timestamp, DueDT timestamp, DeadlineDT timestamp, ExpiryDT timestamp, OwnerID smallint, ActionID int, JobID int, PartID int, AssignedLoginID int, InventoryPackID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MeasurementSetRequired'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ModulePackedDateTime"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ModulePackedDateTime (SerialNo varchar(508), TimePacked timestamp, IMS_No varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ModulePackedDateTime'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ModulePackedDateTime_Buffer"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ModulePackedDateTime_Buffer (SerialNo varchar(508), TimePacked timestamp, IMS_No varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ModulePackedDateTime_Buffer'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OPCClient"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OPCClient (OPCClientID smallint, OPCClient varchar(508), ComputerID smallint, ModifiedDT timestamp, LastUpdateDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OPCClient'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OPCConstant"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OPCConstant (OPCConstantID int, OPCItemID int, Description varchar(100), Constant float, Formula varchar(2000), ModifiedDT timestamp, LoginID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OPCConstant'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OPCCounter"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OPCCounter (OPCCounterID int, OPCItemID int, Description varchar(508), LoValue bigint, HiValue bigint, Scale float, Offset float, Formula varchar(2000), UnitCountTypeID smallint, ScrapReasonID smallint, ModifiedDT timestamp, LoginID smallint, IsProduction tinyint, AcceptableRateOfChange float, RfDeltaValueModeID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OPCCounter'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OPCDigital"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OPCDigital (OPCDigitalID int, OPCItemID int, Description varchar(508), Formula varchar(2000), VariableTypeID int, HeadNo smallint, SampleNo smallint, PositionNo smallint, ModifiedDT timestamp, LoginID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OPCDigital'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OPCGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OPCGroup (OPCGroupID int, Deadband float, UpdateRate int, OPCGroup varchar(100), IsActive tinyint, RfGroupNotifyModeID tinyint, TimeBias int, OPCServerID smallint, IsPublic tinyint, LocalID smallint, CacheUpdateRate int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OPCGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OPCItem"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OPCItem (OPCItemID int, OPCServerID smallint, OPCGroupID int, TagName varchar(100), TagAddress varchar(508), RfOPCItemTypeID tinyint, IsNotify tinyint, RawValue varchar(40), UpdatedDT timestamp, Quality varchar(100), Value varchar(40), LastRawValue varchar(40), LastUpdatedDT timestamp, LastQuality varchar(100), LastValue varchar(40), MachineStageID smallint, ChangeAction varchar(508), PLCID smallint, IsDatedOnServer tinyint, IsStoredAsArray tinyint, IsActive tinyint, MachineStageEventTypeID smallint, RfTransitionTypeID tinyint, TransitionToValue varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OPCItem'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OPCItemHistory"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OPCItemHistory (OPCItemHistoryID int, OPCItemID int, UpdatedDT timestamp, RawValue varchar(40), Value varchar(40), Quality varchar(100), CommittedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OPCItemHistory'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OPCMachineEvent"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OPCMachineEvent (OPCMachineEventID int, OPCItemID int, Description varchar(508), Formula varchar(2000), ModifiedDT timestamp, LoginID smallint, RfMachineStopRecordModeID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OPCMachineEvent'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OPCMachineEventCode"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OPCMachineEventCode (OPCMachineEventCodeID int, OPCMachineEventCode varchar(100), OPCMachineEventID int, MachineStopReasonID smallint, IsRunning tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OPCMachineEventCode'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OPCParameter"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OPCParameter (OPCParameterID int, OPCItemID int, Description varchar(508), Scale float, Offset float, Formula varchar(2000), VariableTypeID int, HeadNo smallint, SampleNo smallint, PositionNo smallint, ModifiedDT timestamp, LoginID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OPCParameter'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OPCServer"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OPCServer (OPCServerID smallint, OPCClientID smallint, OPCServer varchar(508), ProgID varchar(508), IsActive tinyint, ComputerID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OPCServer'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OPCSpeed"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OPCSpeed (OPCSpeedID int, OPCItemID int, Description varchar(508), Scale float, Formula varchar(2000), ModifiedDT timestamp, LoginID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OPCSpeed'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OPCText"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OPCText (OPCTextID int, OPCItemID int, Description varchar(508), ModifiedDT timestamp, LoginID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OPCText'"

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
echo "Hive: Conditionally create table Part"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Part (PartID int, PartNumber varchar(508), Description varchar(508), IsRetired tinyint, BaseUnitID smallint, PartTypeID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Variant1 varchar(200), Variant2 varchar(200), Variant3 varchar(200), Variant4 varchar(200), Variant5 varchar(200), Variant6 varchar(200), Variant7 varchar(200), Variant8 varchar(200), Variant9 varchar(200), Variant10 varchar(200), Variant11 varchar(200), Variant12 varchar(200), Variant13 varchar(200), Variant14 varchar(200), Variant15 varchar(200), Variant16 varchar(200), Variant17 varchar(200), Variant18 varchar(200), Variant19 varchar(200), Variant20 varchar(200),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Part'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Part_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Part_ (PartID int, TheoreticalSpeed float, LabelsPerInventoryPack smallint, ItemsPerInventoryPack float, ItemsPerLayer float, LayersPerInventoryPack int, PackingCode varchar(100), LabelTemplate varchar(508), ProductionInstructions varchar(2000), QualityInstructions varchar(2000), CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), UnitPrice1 float, UnitPrice2 float, LegacyPartNo varchar(508), CreateDT timestamp, ModifiedDT timestamp, LoginID smallint, PartRevisionNo varchar(100), PartClassificationID smallint, LastPurchaseCost float, AveragePurchaseCost float, StandardPurchaseCost float, StandardManufactureCost float, StandardSaleCost float, PartSubClassificationID smallint, CreatedInvUseByPeriod int, CreatedInvUseAfterPeriod int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Part_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Part_custom"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Part_custom (PartID int, Txn_date timestamp, Inventory_Item_Id int, Item_Type_Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Part_custom'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartClassification"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.PartClassification (PartClassificationID smallint, PartClassification varchar(508), RfPartClassificationID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/PartClassification'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartInstance"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.PartInstance (PartInstanceID int, MeasurementSetID int, HeadNo smallint, SampleNo smallint, SerialNo varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/PartInstance'"

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
echo "Hive: Conditionally create table PLC"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.PLC (PLCID smallint, PLC varchar(50), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/PLC'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Product"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Product (ProductID int, ProductTypeID smallint, Name varchar(508), Description varchar(508), IsRetired tinyint, PartID int, Variant1 varchar(50), Variant2 varchar(50), Variant3 varchar(50), Variant4 varchar(50), Variant5 varchar(50), Variant6 varchar(50), Variant7 varchar(50), Variant8 varchar(50), Variant9 varchar(50), Variant10 varchar(50), Variant11 varchar(50), Variant12 varchar(50), Variant13 varchar(50), Variant14 varchar(50), Variant15 varchar(50), Variant16 varchar(50), Variant17 varchar(50), Variant18 varchar(50), Variant19 varchar(50), Variant20 varchar(50),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Product'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ProductionStop"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ProductionStop (ProductionStopID int, ProductionStopReasonID smallint, JobID int, FromDT timestamp, ToDT timestamp, LineID smallint, IsEdited tinyint, RevisionNo tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ProductionStop'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ProductionStop_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ProductionStop_ (ProductionStopID int, StopComments varchar(508), StopLoginID smallint, OpenedStopDT timestamp, SavedStopDT timestamp, OriginalLoginID smallint, EditedProductionStopID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ProductionStop_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ProductionStopReason"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ProductionStopReason (ProductionStopReasonID smallint, ProductionStopReason varchar(508), Description varchar(508), StopCode varchar(100), RfLineStopReasonTypeID smallint, RfStopRelativeToJobID tinyint, IsPlanned tinyint, IsDefaultNoJobReason tinyint, IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ProductionStopReason'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ProductType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ProductType (ProductTypeID smallint, Name varchar(508), ProductTypeCode varchar(100), Variant1TagListID smallint, Variant2TagListID smallint, Variant3TagListID smallint, Variant4TagListID smallint, Variant5TagListID smallint, Variant6TagListID smallint, Variant7TagListID smallint, Variant8TagListID smallint, Variant9TagListID smallint, Variant10TagListID smallint, Variant11TagListID smallint, Variant12TagListID smallint, Variant13TagListID smallint, Variant14TagListID smallint, Variant15TagListID smallint, Variant16TagListID smallint, Variant17TagListID smallint, Variant18TagListID smallint, Variant19TagListID smallint, Variant20TagListID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ProductType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Query"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Query (MeasurementSetID int, SerialNo varchar(508), BinNo varchar(508), Komax1 varchar(508), CktFormBuildMachine varchar(508), ElBuildMachine varchar(508), Comments varchar(4000), DT datetime2(3), NumCells int, CellHole int, LiftedTab int, MultipleCrack int, DiagonalCrack int, ReversePolarity int, ShatteredCell int, ShortedPasteBusbar int, ShortedPasteMiddle int, ShortedPasteUnknown int, VerticalCrack int, VisibleCrack int, Weird int, CellReplacementFab int, CellReplacementMod int, TouchUpthenGood int, WipethenGood int, Rework int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Query'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table RootCause"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.RootCause (RootCauseID int, RootCause varchar(508), Comments varchar(508), RootCauseTypeID smallint, LineTypeID smallint, MachineStageTypeID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/RootCause'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table RootCauseType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.RootCauseType (RootCauseTypeID smallint, RootCauseType varchar(508), Description varchar(2000), RootCauseTypeCode varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/RootCauseType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Scrap"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Scrap (ScrapID int, ScrapReasonID smallint, PartID int, Quantity float, UnitID smallint, DT timestamp, MachineStageID smallint, IsEdited tinyint, RevisionNo tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Scrap'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Scrap_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Scrap_ (ScrapID int, CollectionQuantity float, CollectionUnitID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedScrapID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Scrap_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ScrapReason"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ScrapReason (ScrapReasonID smallint, ScrapReason varchar(100), Description varchar(508), MachineStageTypeID smallint, DefaultUnitID smallint, IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ScrapReason'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ScrapReasonGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ScrapReasonGroup (ScrapReasonGroupID smallint, ScrapReasonGroup varchar(508), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ScrapReasonGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Sequences"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Sequences (SeqName varchar(50), SeqValue smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Sequences'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SettingsPlantDefaults"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SettingsPlantDefaults (SettingsPlantDefaultsID smallint, StartOfDay varchar(10), StartOfWeek smallint, StartOfYear smallint, RfLocaleID smallint, RfDefaultCurrencyID tinyint, DataEntryDefaultURI varchar(508), OnDataCommitGoTo varchar(50), ChainToStopped smallint, ColourStagesForCurrentJob smallint, UnAckAlarmsPeriod smallint, ShowOverdueIcon smallint, ShowAlarmIcon smallint, WONumberModeID tinyint, IsShowVarClassCombo tinyint, IsShowAcqClassCombo tinyint, RfMachineStopRecordModeID tinyint, IsAutoCreateProductsForParts tinyint, IsAutoCreateProductTypeForPart tinyint, EnforceClosedAlarms tinyint, ColourOrder varchar(50), IsAutoReleaseJob tinyint, JobClose tinyint, IsAllowDuplicateWONumbers tinyint, WoClose tinyint, IsOverdueRefToJob tinyint, DefaultSPCCalcStyleID smallint, IsAllowInventoryInserts tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SettingsPlantDefaults'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SettingsPlantNameTemplates"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SettingsPlantNameTemplates (SettingsPlantNameTemplatesID int, CreateInvPackNoTemplate varchar(508), CustomerUniqueKeyTemplate varchar(508), InventoryPackNameTemplate varchar(508), WONumberTemplate varchar(508), ReceiveInvPackNoTemplate varchar(508), BOMVariantTemplate varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SettingsPlantNameTemplates'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SettingsPlantTimeWindows"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SettingsPlantTimeWindows (SettingsPlantTimeWindowsID smallint, JobHistory int, ProductionSpoilageHistory int, DowntimeHistory int, InventoryHistory int, InventoryLabelHistory int, BuildRecordHistory int, LineInfoHistory int, QualityMeasurementHistory int, ProcessParameterHistory int, OPCItemHistoryHistory int, InitialLineInfoHistory int, MaintenanceProjectionPeriod int, ShiftLookAheadDays int, ForwardSchedulingWindow int, DefaultMaxTrendRecallWindow int, DefaultConcernDuePeriod int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SettingsPlantTimeWindows'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Shift"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Shift (ShiftID int, ShiftTypeID smallint, ShiftPatternID smallint, FromDT timestamp, ToDT timestamp, Sequence smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Shift'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ShiftlyChecksDone"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ShiftlyChecksDone (ShiftlyChecksDoneID int, shiftid int, jobid int, fromdt timestamp, todt timestamp, partid int, acquisitioncontextid int, machinestageid int, acquisitionvariantid int, acquisitionid int, downtime float, uptime float, total_time float, datacollectionperiod float, checks_req float, checks_req_after_downtime float, checks_done int, updated_dt timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ShiftlyChecksDone'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ShiftPattern"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ShiftPattern (ShiftPatternID smallint, ShiftPattern varchar(100), PatternDuration int, IsPatternDirty tinyint, IsCustomPeriod tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ShiftPattern'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ShiftSequence"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ShiftSequence (ShiftSequenceID smallint, ShiftPatternID smallint, ShiftTypeID smallint, Sequence smallint, ShiftStartTime timestamp, ShiftEndTime timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ShiftSequence'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ShiftType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ShiftType (ShiftTypeID smallint, Name varchar(100), Description varchar(508), IsNonWorking tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ShiftType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPCCalcStyle_CUS"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPCCalcStyle_CUS (SPCCalcStyleID smallint, SPCCalcStyle varchar(100), CmThreshold float, CpThreshold float, PpThreshold float, CgThreshold float, RnRThreshold float, IsShowCpOnlyIfStable tinyint, CAMTarget float, CpBasedOnID tinyint, CLBasedOnID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPCCalcStyle_CUS'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPCChartComponent"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPCChartComponent (SPCChartComponentID int, SPCChartDefID int, SPCVarChartID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPCChartComponent'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPCChartControlLimit"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPCChartControlLimit (SPCChartControlLimitID int, SPCChartComponentID int, RfChartComponentID tinyint, RfChart varchar(40), UCL float, CL float, LCL float, FromDT timestamp, ToDT timestamp, RangeToDT timestamp, ModifiedDT timestamp, LoginID smallint, RangeFromDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPCChartControlLimit'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPCChartDef"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPCChartDef (SPCChartDefID int, VariableTypeID int, SPCRuleID smallint, RfStudyTypeID smallint, GroupingSize smallint, MovingRange smallint, SPCCalcStyleID smallint, RfGroupingID tinyint, NGroupMarkerID int, CpBasedOnID tinyint, CLBasedOnID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPCChartDef'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPCChartSet"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPCChartSet (SPCChartSetID smallint, SPCChartSet varchar(508), AcquisitionID smallint, SPCURI varchar(508), RfDataBandID tinyint, NPeriods int, SpecTypeID smallint, IsRunningProductOnly tinyint, LHSessionID int, MaxTrendRecallWindow smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPCChartSet'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPCChartSetView"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPCChartSetView (SPCChartSetViewID int, SPCChartSetView varchar(508), Sequence smallint, SPCChartSetID smallint, RfChartSetViewTypeID smallint, NoCols smallint, NoRows smallint, Caption varchar(100), Tooltip varchar(508), IsAggregated tinyint, RfCutByIDs varchar(50), IsPanelled tinyint, ImageURI varchar(508), GridImageRender varchar(50), ParetoXAxis varchar(508), ParetoStackBy varchar(508), SPCChartSetViewStyleID smallint, IsAutoFit tinyint, OverlayFlags int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPCChartSetView'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPCChartSetViewStyle_CUS"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPCChartSetViewStyle_CUS (SPCChartSetViewStyleID smallint, SPCChartSetViewStyle varchar(508), IsSpecLimits tinyint, IsControlLimitZones tinyint, IsGrid tinyint, IsTimescaled tinyint, IsHAxis tinyint, IsVAxis tinyint, IsXChart tinyint, IsRsChart tinyint, IsRsWChart tinyint, IsDistribution tinyint, IsShowComments tinyint, IsXScatter tinyint, IsIncludeIgnored tinyint, IsOnlyOSOCCharts tinyint, SPCStatsStyleID smallint, IsVerticalOverview tinyint, OverviewWidth smallint, OverviewHeight smallint, PageBreakRfCutByIDs varchar(50), ChartWidth smallint, ChartHeight smallint, IsFixedScale tinyint, IsParetoCurve tinyint, IsLegend tinyint, IsHorizontalDistribution tinyint, IsSigmaLines tinyint, IsShowCAComments tinyint, IsShowUnAckAlarms tinyint, HorizontalOffset smallint, IsShowLimitLabels tinyint, IsColourZones tinyint, IsSystem tinyint, IsOSHotCold tinyint, FixedScaleOverscaling float, IsConstantTitleRow tinyint, IsShowStatCategories tinyint, IsOverlayEnvelope tinyint, IsGradientBackground tinyint, RunChartFont tinyint, DistributionFont tinyint, StatisticsFont tinyint, VAxisFont tinyint, HAxisFont tinyint, OverlayKeyFont tinyint, IsShowOverlayKey tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPCChartSetViewStyle_CUS'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPCDefaultControlLimit"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPCDefaultControlLimit (SPCDefaultControlLimitID int, SPCChartDefID int, RfChartComponentID tinyint, RfChart varchar(40), UCL float, CL float, LCL float, ModifiedDT timestamp, LoginID smallint, ProductID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPCDefaultControlLimit'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPCDefaultView"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPCDefaultView (SPCDefaultViewID smallint, Sequence smallint, RfChartSetViewTypeID smallint, NoCols smallint, NoRows smallint, Caption varchar(100), Tooltip varchar(508), IsAggregated tinyint, RfCutByIDs varchar(50), IsPanelled tinyint, ImageURI varchar(508), GridImageRender varchar(50), ParetoXAxis varchar(508), ParetoStackBy varchar(508), SPCChartSetViewStyleID smallint, IsAutoFit tinyint, AcquisitionUsageID tinyint, OverlayFlags int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPCDefaultView'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPCRule"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPCRule (SPCRuleID smallint, SPCRule varchar(100), TAGMSTYPE1ID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPCRule'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPCStatsStyle_CUS"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPCStatsStyle_CUS (SPCStatsStyleID smallint, SPCStatsStyle varchar(100), IsSystem tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPCStatsStyle_CUS'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPCVarChart"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPCVarChart (SPCVarChartID int, SPCRuleID smallint, ProductID int, AcquisitionID smallint, MachineStageID smallint, VariableTypeID int, RfAttributeClassID tinyint, HeadNo smallint, RfAcquisitionClassID tinyint, TrendStartMSID int, TAGMSTYPE1ID smallint, ATTRIBUTETYPEID smallint, TAGMSVALUE1 varchar(508), CreateDT timestamp, LoginID int, IsMsetInsert tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPCVarChart'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Spec"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Spec (SpecID int, VariableID int, USL float, NOM float, LSL float, SpecTypeID smallint, IsEdited tinyint, RevisionNo smallint, DecPlaces tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Spec'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Spec_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Spec_ (SpecID int, LoginID smallint, Units varchar(40), URL float, LRL float, FromDT timestamp, ToDT timestamp, Comments varchar(2000), ModifiedDT timestamp, DrawingNumber varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Spec_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SpecType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SpecType (SpecTypeID smallint, SpecType varchar(100), CUSTOMERID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SpecType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPMM_CalTools"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPMM_CalTools (EDIT varchar(510), Site varchar(510), Control_No varchar(510), CSF_No float, AssetExternalControl_No varchar(510), Manufacturer varchar(510), EquipmentName varchar(510), Model_No varchar(510), Serial_No float, EquipmentLocation varchar(510), CalRequired varchar(510), CalFrequency varchar(510), CalDate timestamp, CalDueDate timestamp, Owner varchar(510), CalibrationSite varchar(510), Calibrator varchar(510), Status varchar(510), Isthelastcalibrationoutoftolerance varchar(510), DueDate timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPMM_CalTools'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table SPMM_DMCost"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.SPMM_DMCost (Oracle_PN varchar(100), Description varchar(510), Cost float,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/SPMM_DMCost'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Supplier"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Supplier (SupplierID smallint, Supplier varchar(508), SupplierCode varchar(508), AddressID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Supplier'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table sysdiagrams"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.sysdiagrams (name varchar(256), principal_id int, diagram_id int, version int, definition varbinary(8000),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/sysdiagrams'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagCauseAction"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagCauseAction (TagCauseActionID int, CauseActionID int, TagTypeID smallint, TagValue varchar(508), DT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagCauseAction'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagDef"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagDef (TagDefID int, TagOwnerID int, RfTable varchar(60), TagTypeID smallint, TagValue varchar(508), DT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagDef'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagDefect"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagDefect (TagDefectID int, IndividualDefectID int, TagTypeID smallint, TagValue varchar(508), DT timestamp, X smallint, Y smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagDefect'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagList"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagList (TagListID smallint, ListName varchar(100), VariantNo tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagList'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagListValue"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagListValue (TagListValueID int, TagListID smallint, TagListValue varchar(508), DisplayOrder smallint, IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagListValue'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagMS"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagMS (TagMSID int, MeasurementSetID int, TagTypeID smallint, TagValue varchar(508), DT timestamp, TagTreeNodeID smallint, X smallint, Y smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagMS'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagPartInstance"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagPartInstance (TagPartInstanceID int, PartInstanceID int, TagTypeID smallint, TagValue varchar(508), DT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagPartInstance'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagProfile"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagProfile (TagProfileID smallint, Name varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagProfile'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagTree"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagTree (TagTreeID smallint, TagTree varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagTree'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagTreeNode"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagTreeNode (TagTreeNodeID smallint, TagTreeNode varchar(100), TagTreeID smallint, ParentTagTreeNodeID smallint, Depth tinyint, SortOrder tinyint, ImageURI varchar(510), NoCols tinyint, NoRows tinyint, SortExpression varchar(255), ImageWidth smallint, ImageHeight smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagTreeNode'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagTreeNodeImgLoc"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagTreeNodeImgLoc (TagTreeNodeImgLocID smallint, TagTreeNodeID smallint, X tinyint, Y tinyint, Width tinyint, Height tinyint, MappedTagTreeNodeID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagTreeNodeImgLoc'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagType (TagTypeID smallint, RfDataTypeID tinyint, Name varchar(508), TagTypeCode varchar(100), ISSYSTEM tinyint, TAGVIEW varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagTypeInTagProfile"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagTypeInTagProfile (TagProfileID smallint, TagTypeID smallint, EntryOrder smallint, CompulsoryConditions tinyint, IsDefaulted tinyint, IsEncrypted tinyint, TagListID smallint, IsReadOnly tinyint, RptQueryID int, TagTypeInTagProfileID int, TagTreeID int, RfTagDataSourceID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagTypeInTagProfile'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TMP_Checks_Done"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TMP_Checks_Done (ShiftID int, JobID int, AcquisitionContextID int, Checks_Done float,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TMP_Checks_Done'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TMP_Job_Shift_Downtime"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TMP_Job_Shift_Downtime (ShiftID int, MachineStageID int, JobID int, Downtime float,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TMP_Job_Shift_Downtime'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TMP_Jobs_In_Shifts"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TMP_Jobs_In_Shifts (ShiftID int, MachineStageID int, JobID int, PartID int, FromDT timestamp, ToDT timestamp, Downtime float, Total_Time float, Uptime float,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TMP_Jobs_In_Shifts'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Tool"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Tool (ToolID int, Tool varchar(508), ToolSet varchar(508), Description varchar(508), ToolTypeID smallint, IsRetired tinyint, NoCavities tinyint, Variant1 varchar(200), Variant2 varchar(200), Variant3 varchar(200), Variant4 varchar(200), Variant5 varchar(200), Variant6 varchar(200), Variant7 varchar(200), Variant8 varchar(200), Variant9 varchar(200), Variant10 varchar(200), Variant11 varchar(200), Variant12 varchar(200), Variant13 varchar(200), Variant14 varchar(200), Variant15 varchar(200), PartID int, Variant16 varchar(200), Variant17 varchar(200), Variant18 varchar(200), Variant19 varchar(200), Variant20 varchar(200),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Tool'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Tool_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Tool_ (ToolID int, Supplier varchar(508), Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Ident varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Tool_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Tool_Custom"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Tool_Custom (ToolID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Tool_Custom'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ToolAtLocation"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ToolAtLocation (ToolAtLocationID int, LocationID int, ToolID int, FromDT timestamp, ToDT timestamp, IsEdited tinyint, RevisionNo tinyint, EditedToolAtLocationID int, MovedByLoginID smallint, ModifiedDT timestamp, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ToolAtLocation'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ToolCavity"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ToolCavity (ToolCavityID int, CavityNumber tinyint, CavityName varchar(508), ToolID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ToolCavity'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ToolCavityStateReason"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ToolCavityStateReason (ToolCavityStateReasonID smallint, ToolTypeID smallint, ToolCavityStateReason varchar(508), Description varchar(508), CavityStatusCode varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ToolCavityStateReason'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ToolChangeReason"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ToolChangeReason (ToolChangeReasonID smallint, ToolTypeID smallint, ChangeReason varchar(508), Description varchar(508), ChangeToRfToolStatusID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ToolChangeReason'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ToolGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ToolGroup (ToolGroupID smallint, ToolGroup varchar(508), Description varchar(508), ToolGroupCode varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ToolGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ToolState"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ToolState (ToolStateID int, ToolID int, FromDT timestamp, ToDT timestamp, RfToolStatusID tinyint, LoginID smallint, Comments varchar(100), OpenedDT timestamp, SavedDT timestamp, IsEdited tinyint, RevisionNo tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ToolState'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ToolType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ToolType (ToolTypeID smallint, ToolType varchar(508), ToolTypeCode varchar(100), Description varchar(508), Variant1TagListID smallint, Variant2TagListID smallint, Variant3TagListID smallint, Variant4TagListID smallint, Variant5TagListID smallint, Variant6TagListID smallint, Variant7TagListID smallint, Variant8TagListID smallint, Variant9TagListID smallint, Variant10TagListID smallint, Variant11TagListID smallint, Variant12TagListID smallint, Variant13TagListID smallint, Variant14TagListID smallint, Variant15TagListID smallint, Variant16TagListID smallint, Variant17TagListID smallint, Variant18TagListID smallint, Variant19TagListID smallint, Variant20TagListID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ToolType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ToolUsage"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ToolUsage (ToolUsageID int, JobID int, MachineStageID smallint, ToolID int, FromDT timestamp, ToDT timestamp, ToolPosition varchar(508), ToolChangeReasonID smallint, IsEdited tinyint, RevisionNo tinyint, OperationID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ToolUsage'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ToolUsage_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ToolUsage_ (ToolUsageID int, StartUsingComments varchar(508), ToolChangeComments varchar(508), StartLoginID smallint, ChangeLoginID smallint, OpenedStartDT timestamp, OpenedChangeDT timestamp, SavedStartDT timestamp, SavedChangeDT timestamp, OriginalLoginID smallint, EditedToolUsageID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ToolUsage_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Unit"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Unit (UnitID smallint, Unit varchar(40), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Unit'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table UnitConversion"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.UnitConversion (FromUnitID smallint, ToUnitID smallint, Multiplier float, UnitConversionID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/UnitConversion'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table UnitCount"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.UnitCount (UnitCountID int, UnitCountTypeID smallint, PartID int, Quantity float, UnitID smallint, DT timestamp, MachineStageID smallint, IsEdited tinyint, RevisionNo tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/UnitCount'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table UnitCount_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.UnitCount_ (UnitCountID int, CollectionQuantity float, CollectionUnitID smallint, Comments varchar(1024), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedUnitCountID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/UnitCount_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table UnitCountType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.UnitCountType (UnitCountTypeID smallint, UnitCountType varchar(100), Description varchar(508), MachineStageTypeID smallint, DefaultUnitID smallint, IsQuantityIn tinyint, IsQuantityOut tinyint, IsMaintenanceCount tinyint, IsConvertableToBaseUnits tinyint, AssetCountTypeID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/UnitCountType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table UnitCountTypeGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.UnitCountTypeGroup (UnitCountTypeGroupID smallint, UnitCountTypeGroup varchar(508), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/UnitCountTypeGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table VarChartOC"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.VarChartOC (VarChartOCID int, MeasurementSetID int, SPCChartControlLimitID int, SubgroupID varchar(20),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/VarChartOC'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Variable"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Variable (VariableID int, VariableTypeID int, ProductID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Variable'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table VariableType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.VariableType (VariableTypeID int, Name varchar(508), ProductTypeID smallint, Description varchar(508), IsUnilateral tinyint, VariableTypeCode varchar(100), IsProcessParameter tinyint, VariableTypeClassID tinyint, ImageURI varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/VariableType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table VariableTypeClass"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.VariableTypeClass (VariableTypeClassID tinyint, VariableTypeClass varchar(508), Description varchar(508), Priority tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/VariableTypeClass'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table VariableTypeGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.VariableTypeGroup (VariableTypeGroupID smallint, Name varchar(508), Description varchar(508), VariableTypeGroupCode varchar(100), IsSmartGroup tinyint, SmartGroupPattern varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/VariableTypeGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table VarMeasurement"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.VarMeasurement (VarMeasurementID int, SpecID int, MeasurementSetID int, Measurement float, Ignored tinyint, VariableTypeID int, ProductID int, HeadNo smallint, SampleNo smallint, PositionNo smallint, DT timestamp, RfIsOSID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/VarMeasurement'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table VarMeasurementP"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.VarMeasurementP (VarMeasurementPID int, SpecID int, MeasurementSetPID int, Measurement float, Ignored tinyint, VariableTypeID int, ProductID int, HeadNo smallint, SampleNo smallint, PositionNo smallint, DT timestamp, RfIsOSID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/VarMeasurementP'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Version"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Version (PlantDBVersion varchar(100), Comments varchar(100), ModifiedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Version'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table WO"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.WO (WOID int, WONumber varchar(508), RunNo smallint, PartID int, QuantityOrdered float, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDT timestamp, EstimatedStartDT timestamp, EstimatedEndDT timestamp, CustomerID smallint, IsDiscrete tinyint, Reference1 varchar(100), Reference2 varchar(100), Reference3 varchar(100), Reference4 varchar(100), Reference5 varchar(100), WORefID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/WO'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table WO_"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.WO_ (WOID int, CustomerOrderNo varchar(508), LabelsPerInventoryPack smallint, ItemsPerInventoryPack float, ItemsPerLayer float, LayersPerInventoryPack int, PackingCode varchar(100), LabelTemplate varchar(508), LabelColour varchar(100), EANCode char(25), CusStartNum int, CusEndNum int, CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), PrinterURL varchar(2048), BOMVariantID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/WO_'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table WO_custom"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.WO_custom (WOID int, BaseWONumber varchar(254), Txn_date timestamp, Wip_Entity_ID int, Alternate_Bom varchar(100), WO_Status varchar(40), IsBtoCto tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/WO_custom'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table WORef"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.WORef (WORefID int, WOReference varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/WORef'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table WorkInstructionProcedure"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.WorkInstructionProcedure (WorkInstructionProcedureID smallint, WorkInstructionProcedure varchar(508), WorkInstructionRef varchar(100), PartID int, IsEdited tinyint, FromDT timestamp, ToDT timestamp, RevisionNo tinyint, LoginID smallint, ModifiedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/WorkInstructionProcedure'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table WorkInstructionResult"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.WorkInstructionResult (WorkInstructionResultID int, WorkInstructionStepID int, OperationID int, DT timestamp, Comments varchar(2048), LoginID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/WorkInstructionResult'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table WorkInstructionStep"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.WorkInstructionStep (WorkInstructionStepID int, WorkInstructionStep varchar(508), WorkInstructionProcedureID smallint, OperationTypeID smallint, StepOrder float, RfSpecialActionTypeID int, AcquisitionVariantID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/WorkInstructionStep'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table xxxHipotData"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.xxxHipotData (SERIAL_NUMBER varchar(100), CONT_A decimal(18,2), CONT_B decimal(18,2), CONT_C decimal(18,2), HIPOT decimal(18,2), STATION varchar(100), DATETIME timestamp, USERNAME varchar(100), REMARKS varchar(200),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/xxxHipotData'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table xxxHipotData_Buffer"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.xxxHipotData_Buffer (SERIAL_NUMBER varchar(100), CONT_A decimal(18,2), CONT_B decimal(18,2), CONT_C decimal(18,2), HIPOT decimal(18,2), STATION varchar(100), DATETIME timestamp, USERNAME varchar(100), REMARKS varchar(200),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/xxxHipotData_Buffer'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table xxxIPN"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.xxxIPN (PartNumber varchar(100), IPN varchar(500),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/xxxIPN'"


