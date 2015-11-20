#!/bin/bash


set hive.execution.engine=tez;
echo " "
echo "##################################################"
echo "Hive: Conditionally create data base MES"
echo "##################################################"
echo " "

hive -e "CREATE DATABASE IF NOT EXISTS MES"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table U_SP_Crate"
echo "##################################################"
echo " "

hive -e "Drop table MES.U_SP_Crate"

hive -e "Create External table IF NOT EXISTS MES.U_SP_Crate (CrateID bigint, CrateNo varchar(508), PartID int, Quantity float, CurrentQuantity float, Locked tinyint, Complete tinyint, CreatedDT timestamp, CompletedDT timestamp, MachineStageID smallint, CrateIndex bigint, MirrorPartID int, PadLock varchar(36),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/U_SP_Crate'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table U_SP_CrateLabel"
echo "##################################################"
echo " "

hive -e "Drop table MES.U_SP_CrateLabel"

hive -e "Create External table IF NOT EXISTS MES.U_SP_CrateLabel (U_SP_CrateLabelID bigint, CrateID bigint, MachineStage varchar(508), PartNumber varchar(508), InvState varchar(508), CrateNo varchar(508), CreatedDT timestamp, CompleteDT timestamp, Quantity float, LabelTemplate varchar(508), PrinterURL varchar(2048), PrintedDT timestamp, ScannedDT timestamp, IsCancelled tinyint, IsReprint tinyint, PartDescription varchar(508), LabelSaveDirectory varchar(508), IsPrintLandscape tinyint, NoCopies smallint, LabelsPerInventoryPack smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/U_SP_CrateLabel'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table U_SP_LkInvIsolatedReasonMST"
echo "##################################################"
echo " "

hive -e "Drop table MES.U_SP_LkInvIsolatedReasonMST"

hive -e "Create External table IF NOT EXISTS MES.U_SP_LkInvIsolatedReasonMST (LkInvIsolatedReasonMSTID int, InvIsolatedReasonID smallint, MachineStageTypeID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/U_SP_LkInvIsolatedReasonMST'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table U_SP_Pallet"
echo "##################################################"
echo " "

hive -e "Drop table MES.U_SP_Pallet"

hive -e "Create External table IF NOT EXISTS MES.U_SP_Pallet (PalletID bigint, PalletNo varchar(508), PartID int, InvStateID smallint, Quantity float, CurrentQuantity float, Locked tinyint, Complete tinyint, CreatedDT timestamp, CompletedDT timestamp, MachineStageID smallint, PrincipleWOID int, PalletIndex bigint, ModulePartID int, Merged tinyint, PadLock varchar(36), IsBtoCto tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/U_SP_Pallet'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table U_SP_PalletLabel"
echo "##################################################"
echo " "

hive -e "Drop table MES.U_SP_PalletLabel"

hive -e "Create External table IF NOT EXISTS MES.U_SP_PalletLabel (U_SP_PalletLabelID bigint, PalletID bigint, MachineStage varchar(508), PartNumber varchar(508), InvState varchar(508), PalletNo varchar(508), CreatedDT timestamp, CompleteDT timestamp, Quantity float, LabelTemplate varchar(508), PrinterURL varchar(2048), PrintedDT timestamp, ScannedDT timestamp, IsCancelled tinyint, IsReprint tinyint, PartDescription varchar(508), LabelSaveDirectory varchar(508), IsPrintLandscape tinyint, NoCopies smallint, LabelsPerInventoryPack smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/U_SP_PalletLabel'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table U_SP_SEQ_LPN"
echo "##################################################"
echo " "

hive -e "Drop table MES.U_SP_SEQ_LPN"

hive -e "Create External table IF NOT EXISTS MES.U_SP_SEQ_LPN (SeqID int, SeqVal varchar(1),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/U_SP_SEQ_LPN'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table U_SPML_ModuleInfo"
echo "##################################################"
echo " "

hive -e "Drop table MES.U_SPML_ModuleInfo"

hive -e "Create External table IF NOT EXISTS MES.U_SPML_ModuleInfo (ModuleInfoID int, SerialNo varchar(508), LaminateID int, LaminateCreatedDT timestamp, LaminateOrderNo varchar(508), LaminatePartNo varchar(508), BINNo varchar(508), CktFormBuildPart varchar(508), CktFormBuildMachine varchar(508), CktFormBuildDT timestamp, GlassBuildPart varchar(508), GlassBuildDate timestamp, LaminationBuildMachine varchar(508), LaminationBuildDT timestamp, ModuleID int, ModuleCreatedDT timestamp, ModuleOrderNo varchar(508), IntendedModulePartNo varchar(508), IntendedModulePartDesc varchar(508), FramingBuildPart varchar(508), FramingBuildMachine varchar(508), FramingBuildDT timestamp, JboxBuildPart varchar(508), JboxBuildDT timestamp, FlashtestClassifiedDT timestamp, FinalModulePartNo varchar(508), FinalModulePartDesc varchar(508), ActualPower float, ActualVocMod float, ActualFF float, PackedDT timestamp, InventoryState varchar(508), JboxBuildMachine varchar(508), ActualIsc float, FlashtestBuildMachine varchar(508), Komax1 varchar(508), Komax2 varchar(508), Komax3 varchar(508), GlassID int, CellType varchar(100), StringerOperator varchar(100), CircuitOperator1 varchar(100), CircuitOperator2 varchar(100), TrimChangeReason varchar(4000), PowerChartGenerated tinyint, LaminateWoId int, ModuleWoId int, VisualStateId smallint, RfInvStateId smallint, ElTestDate timestamp, ElBuildMachine varchar(508), ActualVmpMod float, ActualImpMod float, TrimBuildMachine varchar(508), TrimBuildDT timestamp, CellThickness varchar(508), PalletID bigint, FlashTestID int, PadLock varchar(36), BtoCtoSerialNo varchar(508), EvaUseByDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/U_SPML_ModuleInfo'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AcqCtxVarClass"
echo "##################################################"
echo " "

hive -e "Drop table MES.AcqCtxVarClass"

hive -e "Create External table IF NOT EXISTS MES.AcqCtxVarClass (AcqCtxVarClassID int, AcquisitionContextID int, VariableTypeClassID tinyint, IsOS tinyint, IsOC tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AcqCtxVarClass'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Acquisition"
echo "##################################################"
echo " "

hive -e "Drop table MES.Acquisition"

hive -e "Create External table IF NOT EXISTS MES.Acquisition (AcquisitionID smallint, Acquisition varchar(508), AcquisitionCode varchar(100), Description varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Acquisition'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AcquisitionAttributeType"
echo "##################################################"
echo " "

hive -e "Drop table MES.AcquisitionAttributeType"

hive -e "Create External table IF NOT EXISTS MES.AcquisitionAttributeType (AcquisitionAttributeTypeID int, AcquisitionVariantID smallint, AttributeTypeID smallint, EntryOrder smallint, Formula varchar(2000), IsExplicitStep tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AcquisitionAttributeType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AcquisitionChain"
echo "##################################################"
echo " "

hive -e "Drop table MES.AcquisitionChain"

hive -e "Create External table IF NOT EXISTS MES.AcquisitionChain (AcquisitionChainID smallint, AcquisitionChain varchar(508), Description varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AcquisitionChain'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AcquisitionContext"
echo "##################################################"
echo " "

hive -e "Drop table MES.AcquisitionContext"

hive -e "Create External table IF NOT EXISTS MES.AcquisitionContext (MachineStageID smallint, AcquisitionVariantID smallint, LastMeasurementSetID int, AcquisitionContextID int, LastDoneDT timestamp, IsAttrOC tinyint, IsCriticalDefect tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AcquisitionContext'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AcquisitionDevice"
echo "##################################################"
echo " "

hive -e "Drop table MES.AcquisitionDevice"

hive -e "Create External table IF NOT EXISTS MES.AcquisitionDevice (AcquisitionDeviceID int, AcquisitionVariableTypeID int, WorkstationConfigID smallint, Instructions varchar(8000), ImageURI varchar(8000), RfSourceID tinyint, DataDeviceID int, DeviceArgs varchar(508), DeviceOutput varchar(100), FillMode char(3), Preset varchar(100), Multiplier varchar(100), PreprocessingFunction varchar(508), IsManualTrigger tinyint, IsManualConfirm tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AcquisitionDevice'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AcquisitionGroup"
echo "##################################################"
echo " "

hive -e "Drop table MES.AcquisitionGroup"

hive -e "Create External table IF NOT EXISTS MES.AcquisitionGroup (AcquisitionGroupID smallint, AcquisitionGroup varchar(508), Description varchar(508), AcquisitionGroupCode varchar(100), LoginID smallint, ModifiedDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AcquisitionGroup'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AcquisitionVariableType"
echo "##################################################"
echo " "

hive -e "Drop table MES.AcquisitionVariableType"

hive -e "Create External table IF NOT EXISTS MES.AcquisitionVariableType (AcquisitionVariableTypeID int, AcquisitionVariantID smallint, VariableTypeID int, NoHeads smallint, NoSamples smallint, NoPositions smallint, EntryOrder smallint, Formula varchar(2000),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AcquisitionVariableType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AcquisitionVariant"
echo "##################################################"
echo " "

hive -e "Drop table MES.AcquisitionVariant"

hive -e "Create External table IF NOT EXISTS MES.AcquisitionVariant (AcquisitionVariantID smallint, AcquisitionID smallint, MeasurementSetTagProfileID smallint, PartInstanceTagProfileID smallint, DefectTagProfileID smallint, RfAcquisitionClassID tinyint, RfDataCollectionFreqID tinyint, DataCollectionPeriod int, IsRetired tinyint, AcqPlan varchar(4000), VMTPID smallint, CauseActionTPID smallint, Variant varchar(508), PartTypeID smallint, RevisionNo smallint, IsEdited tinyint, HeadAlias varchar(40), CauseTagListID smallint, ActionTagListID smallint, IsMeasuredWhenProduced tinyint, IsInvPackCheck tinyint, IsEBATrigger tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AcquisitionVariant'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AcquisitionVariant_"
echo "##################################################"
echo " "

hive -e "Drop table MES.AcquisitionVariant_"

hive -e "Create External table IF NOT EXISTS MES.AcquisitionVariant_ (AcquisitionVariantID smallint, FromDT timestamp, ToDT timestamp, DataEntryURI varchar(508), SPCURI varchar(508), AcquisitionImageURI varchar(508), LoginID smallint, ModifiedDT timestamp, Comments varchar(508), Instructions varchar(8000), PartID int, Variant1 varchar(200), Variant2 varchar(200), Variant3 varchar(200), Variant4 varchar(200), Variant5 varchar(200), Variant6 varchar(200), Variant7 varchar(200), Variant8 varchar(200), Variant9 varchar(200), Variant10 varchar(200), Variant11 varchar(200), Variant12 varchar(200), Variant13 varchar(200), Variant14 varchar(200), Variant15 varchar(200), ToolTypeID smallint, NoCavities tinyint, Documents varchar(8000), IsSuspendable tinyint, IsRotatableStepPlan tinyint, EBAReference varchar(100), Variant16 varchar(200), Variant17 varchar(200), Variant18 varchar(200), Variant19 varchar(200), Variant20 varchar(200),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AcquisitionVariant_'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Action"
echo "##################################################"
echo " "

hive -e "Drop table MES.Action"

hive -e "Create External table IF NOT EXISTS MES.Action (ActionID int, RfSpecialActionTypeID int, ActionTypeID smallint, ActionSubTypeID smallint, ActionPlanID smallint, ActionPlanCode varchar(508), ActionName varchar(508), Description varchar(2000), ActionOrder smallint, RfPriorityID tinyint, SubmitterID smallint, SubmittedDT timestamp, OwnerID smallint, ActionStatusID tinyint, ClosedDT timestamp, ModifiedDT timestamp, LoginID smallint, IsEdited tinyint, RevisionNo tinyint, DueDT timestamp, DeadlineDT timestamp, ExpiryDT timestamp, SortOrder float,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Action'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ActionNote"
echo "##################################################"
echo " "

hive -e "Drop table MES.ActionNote"

hive -e "Create External table IF NOT EXISTS MES.ActionNote (ActionNoteID int, ActionID int, Note varchar(508), Comments varchar(508), NoteDT timestamp, LoginID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ActionNote'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ActionPlan"
echo "##################################################"
echo " "

hive -e "Drop table MES.ActionPlan"

hive -e "Create External table IF NOT EXISTS MES.ActionPlan (ActionPlanID smallint, RfSpecialActionTypeID int, ActionTypeID smallint, ActionSubTypeID smallint, ActionPlanCode varchar(508), ActionName varchar(508), Description varchar(2000), ActionPlanOrder smallint, RfPriorityID tinyint, IsRetired tinyint, VariableTypeID int, AttributeTypeID int, IsCompulsory tinyint, SortOrder float, IsOCApplicable tinyint, IsOSApplicable tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ActionPlan'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ActionStatus"
echo "##################################################"
echo " "

hive -e "Drop table MES.ActionStatus"

hive -e "Create External table IF NOT EXISTS MES.ActionStatus (ActionStatusID tinyint, ActionStatus varchar(508), ConditionalFormat varchar(508), IsClosedState tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ActionStatus'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ActionSubType"
echo "##################################################"
echo " "

hive -e "Drop table MES.ActionSubType"

hive -e "Create External table IF NOT EXISTS MES.ActionSubType (ActionSubTypeID smallint, ActionSubType varchar(508), ActionTypeID smallint, Description varchar(508), SubActionTypeCode varchar(508), ReportOrder smallint, Format varchar(508), IsRetired tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ActionSubType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ActionType"
echo "##################################################"
echo " "

hive -e "Drop table MES.ActionType"

hive -e "Create External table IF NOT EXISTS MES.ActionType (ActionTypeID smallint, ActionType varchar(508), Description varchar(508), ActionTypeCode varchar(508), ReportOrder smallint, Format varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ActionType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Address"
echo "##################################################"
echo " "

hive -e "Drop table MES.Address"

hive -e "Create External table IF NOT EXISTS MES.Address (AddressID smallint, Address1 varchar(508), Address2 varchar(508), City varchar(100), County varchar(100), PostCode varchar(100), Country varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Address'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Asset"
echo "##################################################"
echo " "

hive -e "Drop table MES.Asset"

hive -e "Create External table IF NOT EXISTS MES.Asset (AssetID int, AssetName varchar(508), RfAssetTypeID smallint, LineID smallint, MachineStageID smallint, ToolID int, GaugeID smallint, PartID int, InventoryPackID int, LocationID int, IsRetired tinyint, CostCentreID smallint, ManufacturerID smallint, SupplierID smallint, AcquiredDT timestamp, PONumber varchar(100), OrderedDT timestamp, ExpectedDeliveryDT timestamp, ExpectedFirstUseDT timestamp, EndUseDT timestamp, EndUseReason varchar(100), PurchaseCost float, DefaultLocationID int, Comments varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Asset'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AssetCountType"
echo "##################################################"
echo " "

hive -e "Drop table MES.AssetCountType"

hive -e "Create External table IF NOT EXISTS MES.AssetCountType (AssetCountTypeID smallint, AssetCountType varchar(100), Description varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AssetCountType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AssetCycleCount"
echo "##################################################"
echo " "

hive -e "Drop table MES.AssetCycleCount"

hive -e "Create External table IF NOT EXISTS MES.AssetCycleCount (AssetCycleCountID int, AssetID int, RfDayPeriodID int, Count int, AssetCountTypeID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AssetCycleCount'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AssetExplosion"
echo "##################################################"
echo " "

hive -e "Drop table MES.AssetExplosion"

hive -e "Create External table IF NOT EXISTS MES.AssetExplosion (AssetID int, ParentAssetID int, SubAssetID int, Lvl int, SortOrder varchar(254), Comments varchar(508), AssetLevelID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AssetExplosion'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AssetLevel"
echo "##################################################"
echo " "

hive -e "Drop table MES.AssetLevel"

hive -e "Create External table IF NOT EXISTS MES.AssetLevel (AssetLevelID int, AssetID int, SubAssetID int, Sequence varchar(10), Comments varchar(508), FromDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AssetLevel'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Attribute"
echo "##################################################"
echo " "

hive -e "Drop table MES.Attribute"

hive -e "Create External table IF NOT EXISTS MES.Attribute (AttributeID int, AttributeTypeID smallint, ProductID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Attribute'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AttributeType"
echo "##################################################"
echo " "

hive -e "Drop table MES.AttributeType"

hive -e "Create External table IF NOT EXISTS MES.AttributeType (AttributeTypeID smallint, ProductTypeID smallint, Name varchar(508), Description varchar(508), ImageURI varchar(508), RfAttributeClassID tinyint, IsPassFail tinyint, IsRaiseCA tinyint, LikelyCauses varchar(508), Impact varchar(508), Weighting float, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), AttributeTypeCode varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AttributeType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AttributeTypeGroup"
echo "##################################################"
echo " "

hive -e "Drop table MES.AttributeTypeGroup"

hive -e "Create External table IF NOT EXISTS MES.AttributeTypeGroup (AttributeTypeGroupID smallint, Name varchar(508), Description varchar(508), AttributeTypeGroupCode varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AttributeTypeGroup'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AVAttribute"
echo "##################################################"
echo " "

hive -e "Drop table MES.AVAttribute"

hive -e "Create External table IF NOT EXISTS MES.AVAttribute (AcquisitionVariantID smallint, TargetSampleSize int, RfAttrStudyTypeID tinyint, Instructions varchar(8000), ImageURI varchar(8000), NoHeads smallint, RfSourceID tinyint, DataDeviceID int, DeviceArgs varchar(508), DeviceOutput varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AVAttribute'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table AVDataEntryOptions"
echo "##################################################"
echo " "

hive -e "Drop table MES.AVDataEntryOptions"

hive -e "Create External table IF NOT EXISTS MES.AVDataEntryOptions (AcquisitionVariantID smallint, RfVarGridStyleID smallint, IsPITCols tinyint, IsPISNoCol tinyint, RfAttrGridStyleID smallint, IsStepGrid tinyint, IsAttrSkipStep tinyint, ShowAttrInfoTip tinyint, UseAttrImagePicker tinyint, AttrGridContextMenu tinyint, IsPISerial tinyint, AutoGenerateSerialNo tinyint, PITSampling smallint, MSTSampling smallint, VAInterlace smallint, IsExplicitHS smallint, SampleSizeMode smallint, OnDataCommitGoTo varchar(50), IsDisableOOSWarnings tinyint, StepEditPolicy smallint, DisableKeyboardOverride tinyint, ChainToStopped smallint, DisplayPlan varchar(3000), AttrPassFailDefault tinyint, VariableSaveMode tinyint, AttrCellClick tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/AVDataEntryOptions'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table BOMExplosion"
echo "##################################################"
echo " "

hive -e "Drop table MES.BOMExplosion"

hive -e "Create External table IF NOT EXISTS MES.BOMExplosion (PartID int, ParentPartID int, SubPartID int, BOMItemID int, SubPartQuantityTotal float, SubPartUnitID int, RfInvPackTraceabilityID smallint, Lvl int, SortOrder varchar(254), SubPartQuantity float, BOMVariantID int, Instructions varchar(8000), RfBOMItemTypeID tinyint, IsAllowExceedBOMQty tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/BOMExplosion'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table BOMItem"
echo "##################################################"
echo " "

hive -e "Drop table MES.BOMItem"

hive -e "Create External table IF NOT EXISTS MES.BOMItem (BOMItemID int, BOMVariantID int, PartID int, SubPartID int, SubPartQuantity float, SubPartUnitID smallint, RfInvPackTraceabilityID smallint, Sequence varchar(10), Instructions varchar(8000), RfBOMItemTypeID tinyint, IsDefault tinyint, IsAllowExceedBOMQty tinyint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/BOMItem'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table BOMVariant"
echo "##################################################"
echo " "

hive -e "Drop table MES.BOMVariant"

hive -e "Create External table IF NOT EXISTS MES.BOMVariant (BOMVariantID int, BOMVariant varchar(508), PartID int, IsDefault tinyint, BOMVariantIndex int, IsRetired tinyint, LoginID smallint, DT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/BOMVariant'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table CauseAction"
echo "##################################################"
echo " "

hive -e "Drop table MES.CauseAction"

hive -e "Create External table IF NOT EXISTS MES.CauseAction (CauseActionID int, MeasurementSetID int, IsAttributes tinyint, IndividualDefectID int, AttributeTypeID smallint, Cause varchar(508), Action varchar(508), DT timestamp, VarChartOCID int, RfIsOSID tinyint, VarMeasurementID int, VariableTypeID int, IsEdited tinyint, RevisionNo smallint, ProductID int, AcquisitionID smallint, MachineStageID smallint, RfAttributeClassID tinyint, HeadNo smallint, SampleNo smallint, PositionNo smallint, RfAcquisitionClassID tinyint, SPCChartComponentID int, SPCRuleID smallint, RfCauseActionStateID tinyint, TAGMSVALUE1 varchar(508), TAGMSTYPE1ID smallint, CreateDT timestamp, AcknowledgeDT timestamp, CloseDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/CauseAction'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table CauseAction_"
echo "##################################################"
echo " "

hive -e "Drop table MES.CauseAction_"

hive -e "Create External table IF NOT EXISTS MES.CauseAction_ (CauseActionID int, Comments varchar(4000), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedCauseActionID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/CauseAction_'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Comments"
echo "##################################################"
echo " "

hive -e "Drop table MES.Comments"

hive -e "Create External table IF NOT EXISTS MES.Comments (CommentsID int, LoginID smallint, DT timestamp, Subject varchar(100), Comments varchar(4000),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Comments'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table CommonFault"
echo "##################################################"
echo " "

hive -e "Drop table MES.CommonFault"

hive -e "Create External table IF NOT EXISTS MES.CommonFault (CommonFaultID smallint, CommonFault varchar(508), Description varchar(508), LineTypeID smallint, MachineStageTypeID smallint, ToolTypeID smallint, GaugeTypeID smallint, PartTypeID smallint, RfAssetTypeID tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/CommonFault'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Concern"
echo "##################################################"
echo " "

hive -e "Drop table MES.Concern"

hive -e "Create External table IF NOT EXISTS MES.Concern (ConcernID int, ConcernStatusID tinyint, ConcernTypeID smallint, RaisedDT timestamp, ClosedDT timestamp, SeverityID tinyint, DueDate timestamp, ConcernOwnerID smallint, DepartmentOwnerID smallint, CustomerID smallint, CustomerContact varchar(508), CustomerReference varchar(508), AffectOnCustomer varchar(508), PartTypeID smallint, PartID int, WOID int, LineID smallint, ProductionFromDT timestamp, ShiftID int, QuantityAffected bigint, QuantityUsed bigint, InvIsolatedReasonID int, Cost float, LoginID smallint, ModifiedDT timestamp, Concern varchar(4000), SubmitterLoginID smallint, CustomerProduct varchar(508), RfCurrencyID tinyint, MachineStageID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), RfConcernApplicationTypeID tinyint, HeadNo smallint, ProductionToDT timestamp, QuantityFound bigint, QuantityReturned bigint, QuantityScrapped bigint, QuantitySorted bigint, SupplierID smallint, ToolID int, VariableTypeID int, AttributeTypeID smallint, ClosedByLoginID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Concern'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ConcernStatus"
echo "##################################################"
echo " "

hive -e "Drop table MES.ConcernStatus"

hive -e "Create External table IF NOT EXISTS MES.ConcernStatus (ConcernStatusID tinyint, ConcernStatus varchar(508), ConditionalFormat varchar(508), IsClosedState tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ConcernStatus'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ConcernType"
echo "##################################################"
echo " "

hive -e "Drop table MES.ConcernType"

hive -e "Create External table IF NOT EXISTS MES.ConcernType (ConcernTypeID smallint, ConcernType varchar(508), Description varchar(508), ConcernTypeCode varchar(508), Format varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ConcernType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table CostCentre"
echo "##################################################"
echo " "

hive -e "Drop table MES.CostCentre"

hive -e "Create External table IF NOT EXISTS MES.CostCentre (CostCentreID smallint, CostCentre varchar(100), Description varchar(500),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/CostCentre'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table CRN_AcquisitionVariableType"
echo "##################################################"
echo " "

hive -e "Drop table MES.CRN_AcquisitionVariableType"

hive -e "Create External table IF NOT EXISTS MES.CRN_AcquisitionVariableType (AcquisitionVariableTypeID int, JobCommentLength int, RfTorqueDirectionID smallint, RfCycleEndTimeID tinyint, ThresholdTorque float, RfMeasurementTypeID smallint, RfFrequencyResponseID tinyint, UnitID smallint, AuditAngle smallint, CrnAdapterID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/CRN_AcquisitionVariableType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table CrnAdapter"
echo "##################################################"
echo " "

hive -e "Drop table MES.CrnAdapter"

hive -e "Create External table IF NOT EXISTS MES.CrnAdapter (CrnAdapterID smallint, Length tinyint, ModifiedDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/CrnAdapter'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Customer"
echo "##################################################"
echo " "

hive -e "Drop table MES.Customer"

hive -e "Create External table IF NOT EXISTS MES.Customer (CustomerID smallint, Customer varchar(508), CustomerCode varchar(508), AddressID smallint, RfLanguageID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Customer'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table DefectCount"
echo "##################################################"
echo " "

hive -e "Drop table MES.DefectCount"

hive -e "Create External table IF NOT EXISTS MES.DefectCount (DefectCountID int, MeasurementSetID int, HeadNo smallint, DefectCount int, Ignored tinyint, AttributeTypeID smallint, ProductID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/DefectCount'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table DefectCountP"
echo "##################################################"
echo " "

hive -e "Drop table MES.DefectCountP"

hive -e "Create External table IF NOT EXISTS MES.DefectCountP (DefectCountPID int, MeasurementSetPID int, HeadNo smallint, DefectCount int, Ignored tinyint, AttributeTypeID smallint, ProductID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/DefectCountP'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Department"
echo "##################################################"
echo " "

hive -e "Drop table MES.Department"

hive -e "Create External table IF NOT EXISTS MES.Department (DepartmentID smallint, Name varchar(508), DepartmentGroup varchar(508), Classification1 varchar(100), PlantID smallint, DepartmentCode varchar(100), Description varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Department'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Document"
echo "##################################################"
echo " "

hive -e "Drop table MES.Document"

hive -e "Create External table IF NOT EXISTS MES.Document (DocumentID int, FileName varchar(2048), Description varchar(2048), MimeType varchar(100), Attachment varbinary(8000), UploadDT timestamp, LoginID int, DocumentTypeID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Document'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table DocumentType"
echo "##################################################"
echo " "

hive -e "Drop table MES.DocumentType"

hive -e "Create External table IF NOT EXISTS MES.DocumentType (DocumentTypeID smallint, DocumentType varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/DocumentType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table dtproperties"
echo "##################################################"
echo " "

hive -e "Drop table MES.dtproperties"

hive -e "Create External table IF NOT EXISTS MES.dtproperties (id int, objectid int, property varchar(64), value varchar(255), uvalue varchar(510), lvalue int, version int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/dtproperties'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table EBATrigger"
echo "##################################################"
echo " "

hive -e "Drop table MES.EBATrigger"

hive -e "Create External table IF NOT EXISTS MES.EBATrigger (EBATriggerID int, RfTriggerTypeID smallint, ContextDictionary varchar(2048), TriggerOwnerID int, CreateDT timestamp, ProcessedDT timestamp, RfWatchProcessStateID smallint, Message varchar(7000), TotalTime float, OracleInsertTime float, OracleConnectionTime float, OracleInsertStatement varchar(8000),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/EBATrigger'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Fault"
echo "##################################################"
echo " "

hive -e "Drop table MES.Fault"

hive -e "Create External table IF NOT EXISTS MES.Fault (FaultID int, Fault varchar(508), FaultComments varchar(508), AssetID int, MaintenanceWorkID int, ReportedByLoginID smallint, FaultReportedDT timestamp, CommonFaultID smallint, FaultStateID int, TimeToRespond float, TimeToRepair float, TimeResponseToRepair float, RevisionNo smallint, IsEdited tinyint, LoginID smallint, ModifiedDT timestamp, Cause varchar(1000), MachineStopID int, Symptoms varchar(1000),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Fault'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table FaultState"
echo "##################################################"
echo " "

hive -e "Drop table MES.FaultState"

hive -e "Create External table IF NOT EXISTS MES.FaultState (FaultStateID int, FaultID int, FromDT timestamp, ToDT timestamp, FaultStatusID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, IsEdited tinyint, RevisionNo tinyint, OriginalLoginID smallint, EditedFaultStateID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/FaultState'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table FaultStatus"
echo "##################################################"
echo " "

hive -e "Drop table MES.FaultStatus"

hive -e "Create External table IF NOT EXISTS MES.FaultStatus (FaultStatusID smallint, FaultStatus varchar(508), Description varchar(508), RfFaultStatusID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/FaultStatus'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Gauge"
echo "##################################################"
echo " "

hive -e "Drop table MES.Gauge"

hive -e "Create External table IF NOT EXISTS MES.Gauge (GaugeID int, Gauge varchar(508), GaugeTypeID smallint, DataDeviceID smallint, SerialNo varchar(508), SupplierID smallint, DatePurchased timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Gauge'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table GaugeType"
echo "##################################################"
echo " "

hive -e "Drop table MES.GaugeType"

hive -e "Create External table IF NOT EXISTS MES.GaugeType (GaugeTypeID smallint, GaugeType varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/GaugeType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table IndividualDefect"
echo "##################################################"
echo " "

hive -e "Drop table MES.IndividualDefect"

hive -e "Create External table IF NOT EXISTS MES.IndividualDefect (IndividualDefectID int, PartInstanceID int, Ignored tinyint, DefectCount int, MeasurementSetID int, AttributeTypeID smallint, ProductID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/IndividualDefect'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table InvChangeState"
echo "##################################################"
echo " "

hive -e "Drop table MES.InvChangeState"

hive -e "Create External table IF NOT EXISTS MES.InvChangeState (InvChangeStateID int, InventoryPackID int, FromDT timestamp, ToDT timestamp, InvIsolatedReasonID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, IsEdited tinyint, RevisionNo tinyint, OriginalLoginID smallint, EditedInvChangeStateID int, InvStateID smallint,  org_id int, org_name varchar(10), Trans_Hours int , ShiftStart_DateTime timestamp ) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/InvChangeState'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table InventoryAtLocation"
echo "##################################################"
echo " "

hive -e "Drop table MES.InventoryAtLocation"

hive -e "Create External table IF NOT EXISTS MES.InventoryAtLocation (InventoryAtLocationID int, LocationID int, InventoryPackID int, FromDT timestamp, ToDT timestamp, IsEdited tinyint, RevisionNo tinyint, EditedInvAtLocationID int, MovedByLoginID smallint, ModifiedDT timestamp, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/InventoryAtLocation'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table InventoryUsage"
echo "##################################################"
echo " "

hive -e "Drop table MES.InventoryUsage"

hive -e "Create External table IF NOT EXISTS MES.InventoryUsage (InventoryUsageID int, JobID int, MachineStageID smallint, InventoryPackID int, FromDT timestamp, ToDT timestamp, IsEdited tinyint, RevisionNo tinyint, IsReintroduced tinyint, Quantity float,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/InventoryUsage'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table InventoryUsage_"
echo "##################################################"
echo " "

hive -e "Drop table MES.InventoryUsage_"

hive -e "Create External table IF NOT EXISTS MES.InventoryUsage_ (InventoryUsageID int, StartUsingComments varchar(508), StopUsingComments varchar(508), StartLoginID smallint, StopLoginID smallint, OpenedStartDT timestamp, OpenedEndDT timestamp, SavedStartDT timestamp, SavedEndDT timestamp, OriginalLoginID smallint, EditedInventoryUsageID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/InventoryUsage_'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table InvIsolatedReason"
echo "##################################################"
echo " "

hive -e "Drop table MES.InvIsolatedReason"

hive -e "Create External table IF NOT EXISTS MES.InvIsolatedReason (InvIsolatedReasonID smallint, PartTypeID smallint, IsolatedReason varchar(508), InvStateID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/InvIsolatedReason'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table InvState"
echo "##################################################"
echo " "

hive -e "Drop table MES.InvState"

hive -e "Create External table IF NOT EXISTS MES.InvState (InvStateID smallint, InvState varchar(508), Description varchar(508), RfInvStateID smallint, InvStateCode varchar(508), IsAddToProduction tinyint, IsAddToHFI tinyint, IsDefault tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/InvState'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LineCell"
echo "##################################################"
echo " "

hive -e "Drop table MES.LineCell"

hive -e "Create External table IF NOT EXISTS MES.LineCell (LineCellID smallint, LineID smallint, IsPartNumber tinyint, IsWONumber tinyint, IsCustomer tinyint, IsDescription tinyint, IsHeader tinyint, IsRows tinyint, ConfigLayout varchar(50), IsClickable tinyint, IsStopJob tinyint, IsStartJob tinyint, IsEditable tinyint, IsStartNextJob tinyint, IsWORef1 tinyint, IsWORef2 tinyint, IsWORef3 tinyint, IsWorkInstruction tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LineCell'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LineGroup"
echo "##################################################"
echo " "

hive -e "Drop table MES.LineGroup"

hive -e "Create External table IF NOT EXISTS MES.LineGroup (LineGroupID smallint, LineGroup varchar(100), LineGroupCode varchar(100), Description varchar(508), OEETarget float, WasteTarget float, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LineGroup'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LineInfo"
echo "##################################################"
echo " "

hive -e "Drop table MES.LineInfo"

hive -e "Create External table IF NOT EXISTS MES.LineInfo (LineInfoID int, RfLineInfoEventID tinyint, LineID smallint, ShiftID int, WOID int, FromDT timestamp, ToDT timestamp, rfDayHourPeriodID int, TotalTime int, ExcludedTime int, ScheduledTime int, STOperations int, STInduced int, DTTechnical int, DTOperations int, DTQuality int, DownTime int, StopTime int, RunTime int, NotRunTime int, TheoreticalCycleTime float, QuantityScrap float, QuantityGood float, ModifiedDT timestamp, LoginID smallint, QuantityIn float, TotalInventoryProduced float, TotalInventoryReintroduced float, NetQuantityProduced float, QuantityInLineSpoilage float, TotalSpoilage float, AccountedSpoilage float, TotalInventoryIsolated float, ProductionStopJobID int, TotalUnitsProduced float, BottleNeckMachineStageID smallint, InventoryIn int, InterProdStopTime int, InProdStopTime int, QuantityUnitsIn float, QuantityInventoryIn float, TotalQuantityProduced float, TotalPacksProduced int, TotalPacksIsolated int, TotalPacksReintroduced int, TotalPacksMade int, ValidState tinyint, LineGroupID smallint, LineGroupShiftID int, LineGroupBottleneckID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LineInfo'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LineInfo_custom"
echo "##################################################"
echo " "

hive -e "Drop table MES.LineInfo_custom"

hive -e "Create External table IF NOT EXISTS MES.LineInfo_custom (LineInfoID int, CellsProduced decimal(8,0),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LineInfo_custom'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LineInfoRecalc"
echo "##################################################"
echo " "

hive -e "Drop table MES.LineInfoRecalc"

hive -e "Create External table IF NOT EXISTS MES.LineInfoRecalc (LineInfoID int, ModifiedDT timestamp, IsOEEInventoryIsolation tinyint, IsOEEInventoryReintroduction tinyint, IsOEESpoilage tinyint, IsOEEDowntime tinyint, IsOEEInventoryProduction tinyint, NoBottlenecks tinyint, BottleneckMachineStageID smallint, IsCountOutputInventory tinyint, IsCountInputInventory tinyint, IsOEEProductionUnits tinyint, LoginID smallint, SessionID int, PlantID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LineInfoRecalc'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LineSection"
echo "##################################################"
echo " "

hive -e "Drop table MES.LineSection"

hive -e "Create External table IF NOT EXISTS MES.LineSection (LineSectionID smallint, LineSection varchar(508), Description varchar(508), IsRetired tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LineSection'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LineType"
echo "##################################################"
echo " "

hive -e "Drop table MES.LineType"

hive -e "Create External table IF NOT EXISTS MES.LineType (LineTypeID smallint, LineType varchar(508), Description varchar(508), IsRetired tinyint, LineInfoPrecedence tinyint, BudgetChangeOver int, BudgetEfficiency float,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LineType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkACAChain"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkACAChain"

hive -e "Create External table IF NOT EXISTS MES.LkACAChain (AcquisitionChainID smallint, AcquisitionContextID int, Sequence tinyint, LkACAChainID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkACAChain'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkAGAV"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkAGAV"

hive -e "Create External table IF NOT EXISTS MES.LkAGAV (AcquisitionGroupID smallint, AcquisitionVariantID smallint, Sequence smallint, LkAGAVID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkAGAV'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkATATG"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkATATG"

hive -e "Create External table IF NOT EXISTS MES.LkATATG (AttributeTypeGroupID smallint, AttributeTypeID smallint, LkATATGID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkATATG'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkCDefInCView"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkCDefInCView"

hive -e "Create External table IF NOT EXISTS MES.LkCDefInCView (SPCChartDefID int, SPCChartSetViewID int, Sequence smallint, LkCDefInCViewID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkCDefInCView'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkConcernAction"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkConcernAction"

hive -e "Create External table IF NOT EXISTS MES.LkConcernAction (LKConcernActionID int, ConcernID int, ActionID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkConcernAction'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkConcernDocument"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkConcernDocument"

hive -e "Create External table IF NOT EXISTS MES.LkConcernDocument (ConcernID int, DocumentID int, LKConcernDocumentID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkConcernDocument'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LKConcernInventoryPack"
echo "##################################################"
echo " "

hive -e "Drop table MES.LKConcernInventoryPack"

hive -e "Create External table IF NOT EXISTS MES.LKConcernInventoryPack (LKConcernInventoryPackID int, ConcernID int, InventoryPackID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LKConcernInventoryPack'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkConcernRootCause"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkConcernRootCause"

hive -e "Create External table IF NOT EXISTS MES.LkConcernRootCause (LkConcernRootCauseID int, RootCauseID int, ConcernID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkConcernRootCause'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LKCSetCDef"
echo "##################################################"
echo " "

hive -e "Drop table MES.LKCSetCDef"

hive -e "Create External table IF NOT EXISTS MES.LKCSetCDef (SPCChartSetID smallint, SPCChartDefID int, Sequence smallint, LkCSetCDefID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LKCSetCDef'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkCutBySPCRule"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkCutBySPCRule"

hive -e "Create External table IF NOT EXISTS MES.LkCutBySPCRule (SPCRuleID smallint, RfCutByID smallint, LkCutBySPCRuleID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkCutBySPCRule'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkDocumentAsset"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkDocumentAsset"

hive -e "Create External table IF NOT EXISTS MES.LkDocumentAsset (LkDocumentAssetID int, DocumentID int, AssetID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkDocumentAsset'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkDocumentInvPack"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkDocumentInvPack"

hive -e "Create External table IF NOT EXISTS MES.LkDocumentInvPack (LkDocumentInvPackID int, DocumentID int, InventoryPackID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkDocumentInvPack'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkDocumentMaintProc"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkDocumentMaintProc"

hive -e "Create External table IF NOT EXISTS MES.LkDocumentMaintProc (LkDocumentMaintProcID int, DocumentID int, MaintenanceProcedureID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkDocumentMaintProc'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkDocumentWIProc"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkDocumentWIProc"

hive -e "Create External table IF NOT EXISTS MES.LkDocumentWIProc (LkDocumentWIProcID int, WorkInstructionProcedureID smallint, DocumentID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkDocumentWIProc'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkDocumentWIStep"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkDocumentWIStep"

hive -e "Create External table IF NOT EXISTS MES.LkDocumentWIStep (LkDocumentWIStepID int, WorkInstructionStepID int, DocumentID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkDocumentWIStep'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkFaultMaintWork"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkFaultMaintWork"

hive -e "Create External table IF NOT EXISTS MES.LkFaultMaintWork (MaintenanceWorkID int, FaultID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkFaultMaintWork'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkInvPackInvPack"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkInvPackInvPack"

hive -e "Create External table IF NOT EXISTS MES.LkInvPackInvPack (LkInvPackInvPackID int, InventoryPackFromID int, InventoryPackToID int, RfInventoryLinkTypeID smallint, LoginID smallint, ModifiedDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkInvPackInvPack'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkLineLineGroup"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkLineLineGroup"

hive -e "Create External table IF NOT EXISTS MES.LkLineLineGroup (LkLineLineGroupID int, LineGroupID smallint, LineID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkLineLineGroup'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkLLS"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkLLS"

hive -e "Create External table IF NOT EXISTS MES.LkLLS (LineID smallint, LineSectionID smallint, LkLLSID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkLLS'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkLocationMachineStage"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkLocationMachineStage"

hive -e "Create External table IF NOT EXISTS MES.LkLocationMachineStage (LkLocationMachineStageId int, MachineStageId smallint, LocationId int, IsLocationIn tinyint, IsLocationOut tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkLocationMachineStage'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkMachineStagePrinter"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkMachineStagePrinter"

hive -e "Create External table IF NOT EXISTS MES.LkMachineStagePrinter (LkMachineStagePrinterID smallint, MachineStageID smallint, PrinterID tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkMachineStagePrinter'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkMaintProcPersonnel"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkMaintProcPersonnel"

hive -e "Create External table IF NOT EXISTS MES.LkMaintProcPersonnel (LkMaintProcPersonnelID int, MaintenanceProcedureID int, PersonnelID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkMaintProcPersonnel'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkMGMS"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkMGMS"

hive -e "Create External table IF NOT EXISTS MES.LkMGMS (MachineStageID smallint, MachineGroupID smallint, LkMGMSID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkMGMS'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkMPGMP"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkMPGMP"

hive -e "Create External table IF NOT EXISTS MES.LkMPGMP (LkMPGMPID int, MaintenanceProcedureGroupID int, MaintenanceProcedureID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkMPGMP'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkMSRGMSR"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkMSRGMSR"

hive -e "Create External table IF NOT EXISTS MES.LkMSRGMSR (MachineStopReasonGroupID smallint, MachineStopReasonID smallint, LkMSRGMSRID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkMSRGMSR'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkOpTMST"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkOpTMST"

hive -e "Create External table IF NOT EXISTS MES.LkOpTMST (OperationTypeID smallint, MachineStageTypeID smallint, LkOpTMSTID int, PassName varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkOpTMST'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkOpTPartTConsumed"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkOpTPartTConsumed"

hive -e "Create External table IF NOT EXISTS MES.LkOpTPartTConsumed (PartTypeID smallint, OperationTypeID smallint, IsInventoryCarriedOver tinyint, LkOpTPartTConsumedID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkOpTPartTConsumed'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkPartAlternatePart"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkPartAlternatePart"

hive -e "Create External table IF NOT EXISTS MES.LkPartAlternatePart (LkPartAlternatePartID int, AlternatePartID int, PartID int, PartToAlternatePartRatio float,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkPartAlternatePart'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkPartDocument"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkPartDocument"

hive -e "Create External table IF NOT EXISTS MES.LkPartDocument (LkPartDocumentID int, PartID int, DocumentID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkPartDocument'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkPartLineSection"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkPartLineSection"

hive -e "Create External table IF NOT EXISTS MES.LkPartLineSection (PartID int, LineSectionID smallint, LkPartLineSectionID int, TheoreticalCycleTime float,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkPartLineSection'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkPartSupplier"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkPartSupplier"

hive -e "Create External table IF NOT EXISTS MES.LkPartSupplier (LkPartSupplierID int, PartID int, SupplierID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkPartSupplier'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LKPartUnit"
echo "##################################################"
echo " "

hive -e "Drop table MES.LKPartUnit"

hive -e "Create External table IF NOT EXISTS MES.LKPartUnit (PartID int, UnitID smallint, LkPartUnitID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LKPartUnit'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkRootCauseAction"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkRootCauseAction"

hive -e "Create External table IF NOT EXISTS MES.LkRootCauseAction (LkRootCauseActionID int, RootCauseID int, ActionID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkRootCauseAction'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LKShiftMachineStage"
echo "##################################################"
echo " "

hive -e "Drop table MES.LKShiftMachineStage"

hive -e "Create External table IF NOT EXISTS MES.LKShiftMachineStage (LkShiftMachineStageID int, MachineStageID smallint, ShiftID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LKShiftMachineStage'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkSPCCSVR"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkSPCCSVR"

hive -e "Create External table IF NOT EXISTS MES.LkSPCCSVR (SPCCalcStyleID smallint, RfViolationRuleID smallint, RfChartComponentID tinyint, LkSPCCSVRID int, RuleRange smallint, RuleGroup smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkSPCCSVR'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LKSPCStatsStyleRfSPCStat_CUS"
echo "##################################################"
echo " "

hive -e "Drop table MES.LKSPCStatsStyleRfSPCStat_CUS"

hive -e "Create External table IF NOT EXISTS MES.LKSPCStatsStyleRfSPCStat_CUS (RfSPCStatID smallint, SPCStatsStyleID smallint, LkSPCStatsStyleRfSPCStatID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LKSPCStatsStyleRfSPCStat_CUS'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkSRGSR"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkSRGSR"

hive -e "Create External table IF NOT EXISTS MES.LkSRGSR (LkSRGSRID smallint, ScrapReasonGroupID smallint, ScrapReasonID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkSRGSR'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkToolTypeOpType"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkToolTypeOpType"

hive -e "Create External table IF NOT EXISTS MES.LkToolTypeOpType (ToolTypeID smallint, OperationTypeID smallint, MaxNoTools smallint, LkToolTypeOpTypeID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkToolTypeOpType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkTSTC"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkTSTC"

hive -e "Create External table IF NOT EXISTS MES.LkTSTC (ToolStateID int, ToolCavityID int, RfToolCavityStatusID tinyint, ToolCavityStateReasonID smallint, IsCavityChangeState tinyint, LkTSTCID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkTSTC'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkTTG"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkTTG"

hive -e "Create External table IF NOT EXISTS MES.LkTTG (ToolGroupID smallint, ToolID int, LkTTGID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkTTG'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkUCTGUCT"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkUCTGUCT"

hive -e "Create External table IF NOT EXISTS MES.LkUCTGUCT (LkUCTGUCTID smallint, UnitCountTypeGroupID smallint, UnitCountTypeID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkUCTGUCT'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkVCOCVRule"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkVCOCVRule"

hive -e "Create External table IF NOT EXISTS MES.LkVCOCVRule (VarChartOCID int, RfViolationRuleID smallint, LkVCOCVRuleID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkVCOCVRule'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkVTVTG"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkVTVTG"

hive -e "Create External table IF NOT EXISTS MES.LkVTVTG (VariableTypeGroupID smallint, VariableTypeID int, LkVTVTGID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkVTVTG'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkWIRBuildRecord"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkWIRBuildRecord"

hive -e "Create External table IF NOT EXISTS MES.LkWIRBuildRecord (LkWIRBuildRecordID int, WorkInstructionResultID int, BuildRecordID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkWIRBuildRecord'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table LkWIRMSetReq"
echo "##################################################"
echo " "

hive -e "Drop table MES.LkWIRMSetReq"

hive -e "Create External table IF NOT EXISTS MES.LkWIRMSetReq (LkWIRMSetReqID int, WorkInstructionResultID int, MeasurementSetRequiredID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/LkWIRMSetReq'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MachineGroup"
echo "##################################################"
echo " "

hive -e "Drop table MES.MachineGroup"

hive -e "Create External table IF NOT EXISTS MES.MachineGroup (MachineGroupID smallint, MachineGroup varchar(508), Description varchar(508), IsRetired tinyint, RfMachineGroupTypeID tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MachineGroup'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MachineStageCell"
echo "##################################################"
echo " "

hive -e "Drop table MES.MachineStageCell"

hive -e "Create External table IF NOT EXISTS MES.MachineStageCell (MachineStageCellID smallint, MachineStageID smallint, IsCreator tinyint, IsConsumer tinyint, IsLabeller tinyint, IsAutoBatchNo tinyint, IsPackConsumer tinyint, IsResortConsumer tinyint, IsNonJob tinyint, IsToolShowCavities tinyint, IsInvPackPackNo tinyint, IsInvPackPartNo tinyint, IsInvPackPartDesc tinyint, IsInvPackPartType tinyint, IsInvPackQty tinyint, IsInvPackHeader tinyint, IsInvPackRows tinyint, IsInvPackState tinyint, IsInvPackReason tinyint, IsAcqDblck tinyint, AcqGrid varchar(508), CustomPage varchar(508), IsClickable tinyint, IsDrillable tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MachineStageCell'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MachineStageEvent"
echo "##################################################"
echo " "

hive -e "Drop table MES.MachineStageEvent"

hive -e "Create External table IF NOT EXISTS MES.MachineStageEvent (MachineStageEventID int, LoginID smallint, DT timestamp, MachineStageID smallint, MachineStageEventTypeID smallint, Comments varchar(4000),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MachineStageEvent'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MachineStageEventType"
echo "##################################################"
echo " "

hive -e "Drop table MES.MachineStageEventType"

hive -e "Create External table IF NOT EXISTS MES.MachineStageEventType (MachineStageEventTypeID smallint, MachineStageEventType varchar(100), Description varchar(508), MachineStageTypeID smallint, MachineStageEventTypeCode varchar(100), IsAlarm tinyint, AlarmText varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MachineStageEventType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MachineStageInvPosition"
echo "##################################################"
echo " "

hive -e "Drop table MES.MachineStageInvPosition"

hive -e "Create External table IF NOT EXISTS MES.MachineStageInvPosition (MachineStageInvPositionId smallint, MachineStageId smallint, Position varchar(100), PositionNumber tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MachineStageInvPosition'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MachineStageType"
echo "##################################################"
echo " "

hive -e "Drop table MES.MachineStageType"

hive -e "Create External table IF NOT EXISTS MES.MachineStageType (MachineStageTypeID smallint, Name varchar(508), Description varchar(508), MachineStageTypeCode varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MachineStageType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MachineStopCategory"
echo "##################################################"
echo " "

hive -e "Drop table MES.MachineStopCategory"

hive -e "Create External table IF NOT EXISTS MES.MachineStopCategory (MachineStopCategoryID smallint, MachineStopCategory varchar(508), Description varchar(508), MachineStageTypeID smallint, StopCategoryCode varchar(100), DisplayOrder smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MachineStopCategory'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MachineStopReason"
echo "##################################################"
echo " "

hive -e "Drop table MES.MachineStopReason"

hive -e "Create External table IF NOT EXISTS MES.MachineStopReason (MachineStopReasonID smallint, StopReason varchar(508), Description varchar(508), MachineStageTypeID smallint, IsPlanned tinyint, StopCode varchar(100), RfMachineStopClassID tinyint, RfLineStopReasonTypeID smallint, MachineStopCategoryID smallint, IsRetired tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MachineStopReason'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MachineStopReasonGroup"
echo "##################################################"
echo " "

hive -e "Drop table MES.MachineStopReasonGroup"

hive -e "Create External table IF NOT EXISTS MES.MachineStopReasonGroup (MachineStopReasonGroupID smallint, MachineStopReasonGroup varchar(508), Description varchar(508), MachineStopReasonGroupCode varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MachineStopReasonGroup'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintenanceManHourPlanned"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintenanceManHourPlanned"

hive -e "Create External table IF NOT EXISTS MES.MaintenanceManHourPlanned (MaintenanceManHourPlannedID int, MaintenanceProcedureID int, PlannedManHours float, PersonnelGroupID smallint, SupplierID smallint, SupplierCost float,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintenanceManHourPlanned'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintenanceManHours"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintenanceManHours"

hive -e "Create External table IF NOT EXISTS MES.MaintenanceManHours (MaintenanceManHoursID int, MaintenanceWorkID int, WorkerLoginID smallint, ActualManHours float, RevisionNo smallint, IsEdited tinyint, ModifiedDT timestamp, SupplierID smallint, SupplierCost float, PersonnelGroupID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintenanceManHours'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintenancePartPlanned"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintenancePartPlanned"

hive -e "Create External table IF NOT EXISTS MES.MaintenancePartPlanned (MaintenancePartPlannedID int, MaintenanceProcedureStepID int, PartID int, PlannedCost float, IsOptional tinyint, Quantity float, UnitID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintenancePartPlanned'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintenancePartUsed"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintenancePartUsed"

hive -e "Create External table IF NOT EXISTS MES.MaintenancePartUsed (MaintenancePartUsedID int, MaintenanceWorkID int, MaintenanceProcedureResultID int, PartID int, Cost float, DT timestamp, LoginID smallint, Quantity float, UnitID smallint, InventoryPackID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintenancePartUsed'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintenanceProcedure"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintenanceProcedure"

hive -e "Create External table IF NOT EXISTS MES.MaintenanceProcedure (MaintenanceProcedureID int, MaintenanceProcedure varchar(508), PartID int, ResponsibleDepartmentID smallint, BudgetWorkDone float, PlannedManHours float, PlannedDuration float, MaintenanceProcedureCode varchar(50), AdvanceWarningPeriod int, SchedulingWindow int, PlannedMachineStageDowntime int, PlannedLineDowntime int, SubPartID int, CreatedDT timestamp, CreatedLoginID smallint, RfMaintenanceWorkTypeID smallint, CostCentreID smallint, IsAutoAuthoriseWork tinyint, IsRetired tinyint, IsToolTakenOutOfService tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintenanceProcedure'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintenanceProcedureGroup"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintenanceProcedureGroup"

hive -e "Create External table IF NOT EXISTS MES.MaintenanceProcedureGroup (MaintenanceProcedureGroupID int, MaintenanceProcedureGroup varchar(100), Description varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintenanceProcedureGroup'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintenanceProcedureResult"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintenanceProcedureResult"

hive -e "Create External table IF NOT EXISTS MES.MaintenanceProcedureResult (MaintenanceProcedureResultID int, MaintenanceProcedureStepID int, MaintenanceWorkID int, Result float, ResultPassFail smallint, Comments varchar(508), DT timestamp, CheckedByLoginID smallint, MaintenanceProcedureStep varchar(2000), StepOrder float, SubPartID int, Component varchar(508), RfMaintenanceCheckTypeID smallint, RfSpecialActionTypeID tinyint, Test varchar(508), USL float, LSL float, PersonnelGroupID smallint, SupplierID smallint, Nom float, Units varchar(40), DecPlaces tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintenanceProcedureResult'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintenanceProcedureRevision"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintenanceProcedureRevision"

hive -e "Create External table IF NOT EXISTS MES.MaintenanceProcedureRevision (MaintenanceProcedureRevisionID int, MaintenanceProcedureID int, FromDT timestamp, ToDT timestamp, IsEdited tinyint, RevisionNo smallint, LoginID smallint, ModifiedDT timestamp, RevisedMaintProcID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintenanceProcedureRevision'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintenanceProcedureStep"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintenanceProcedureStep"

hive -e "Create External table IF NOT EXISTS MES.MaintenanceProcedureStep (MaintenanceProcedureStepID int, MaintenanceProcedureStep varchar(2000), MaintenanceProcedureRevisionID int, StepOrder float, SubPartID int, Component varchar(508), RfMaintenanceCheckTypeID smallint, RfSpecialActionTypeID tinyint, Test varchar(508), USL float, LSL float, PersonnelGroupID smallint, SupplierID smallint, Nom float, Units varchar(40), DecPlaces tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintenanceProcedureStep'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintenanceReason"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintenanceReason"

hive -e "Create External table IF NOT EXISTS MES.MaintenanceReason (MaintenanceReasonID smallint, MaintenanceReason varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintenanceReason'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintenanceWork"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintenanceWork"

hive -e "Create External table IF NOT EXISTS MES.MaintenanceWork (MaintenanceWorkID int, MaintenanceWO varchar(508), AssetID int, MaintenanceProcedureID int, MaintenanceProcedureRevisionID int, MaintProcScheduleOnAssetID int, RfMaintenanceWorkTypeID smallint, AdhocWorkToDo varchar(508), MaintProcScheduleOnAssetNo int, MaintenanceWorkStatusID smallint, ActualStartDT timestamp, ActualEndDT timestamp, ActualManHours float, PlannedStartDT timestamp, PlannedEndDT timestamp, PlannedManHours float, OwnerLoginID smallint, ActualLabourCost float, PlannedLabourCost float, RfCurrencyID smallint, PartsCost float, LineDownCost float, Priority smallint, MaintenanceReasonID smallint, IsPlannedDateLockedByUser tinyint, EBATriggerID int, PeriodDueDT timestamp, RunHoursDueDT timestamp, PartsBasedDueDT timestamp, EventDueDT timestamp, ReleasedDT timestamp, ReleasedLoginID smallint, IsEdited tinyint, RevisionNo smallint, AbsoluteCounterThreshold int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintenanceWork'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintenanceWork_"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintenanceWork_"

hive -e "Create External table IF NOT EXISTS MES.MaintenanceWork_ (MaintenanceWorkID int, WorkDone varchar(2000), Comments varchar(508), LoginID smallint, ModifiedDT timestamp, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintenanceWork_'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintenanceWorkStatus"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintenanceWorkStatus"

hive -e "Create External table IF NOT EXISTS MES.MaintenanceWorkStatus (MaintenanceWorkStatusID smallint, MaintenanceWorkStatus varchar(508), Description varchar(508), RfMaintenanceWorkStatusID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintenanceWorkStatus'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MaintProcScheduleOnAsset"
echo "##################################################"
echo " "

hive -e "Drop table MES.MaintProcScheduleOnAsset"

hive -e "Create External table IF NOT EXISTS MES.MaintProcScheduleOnAsset (MaintProcScheduleOnAssetID int, MaintenanceProcedureID int, AssetID int, RfPeriodTypeID smallint, StartDate timestamp, AssetCountTypeID smallint, EBAReference varchar(100), IsEdited tinyint, LoginID smallint, ModifiedDT timestamp, CalendarN1 int, CalendarN2 int, CalendarN3 int, CounterThreshold1 int, CounterThreshold2 int, CounterThreshold3 int, EstimatedCountPerDay float, RunHourThreshold1 int, RunHourThreshold2 int, RunHourThreshold3 int, EstimatedRunHoursPerDay float, EstimatedEventsPerDay float, RevisionNo smallint, IsRetired tinyint, PriorExecutions smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MaintProcScheduleOnAsset'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MeasurementSet"
echo "##################################################"
echo " "

hive -e "Drop table MES.MeasurementSet"

hive -e "Create External table IF NOT EXISTS MES.MeasurementSet (MeasurementSetID int, ActualAttrSampleSize int, AcquisitionContextID int, IsEdited tinyint, DT timestamp, AcquisitionID smallint, MachineStageID smallint, RfAcquisitionClassID tinyint, RevisionNo tinyint, PartID int, JobID int, ResumeStep smallint, InventoryPackID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MeasurementSet'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MeasurementSet_"
echo "##################################################"
echo " "

hive -e "Drop table MES.MeasurementSet_"

hive -e "Create External table IF NOT EXISTS MES.MeasurementSet_ (MeasurementSetID int, Comments varchar(4000), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedMSID int, ApprovalLoginID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MeasurementSet_'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MeasurementSetP"
echo "##################################################"
echo " "

hive -e "Drop table MES.MeasurementSetP"

hive -e "Create External table IF NOT EXISTS MES.MeasurementSetP (MeasurementSetPID int, ActualAttrSampleSize int, AcquisitionContextID int, IsEdited tinyint, DT timestamp, AcquisitionID smallint, MachineStageID smallint, RfAcquisitionClassID smallint, RevisionNo tinyint, PartID int, JobID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MeasurementSetP'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MeasurementSetRequired"
echo "##################################################"
echo " "

hive -e "Drop table MES.MeasurementSetRequired"

hive -e "Create External table IF NOT EXISTS MES.MeasurementSetRequired (MeasurementSetRequiredID int, EBATriggerID int, AcquisitionContextID int, MeasurementSetID int, RfAcquisitionStatusID smallint, SubmittedDT timestamp, DueDT timestamp, DeadlineDT timestamp, ExpiryDT timestamp, OwnerID smallint, ActionID int, JobID int, PartID int, AssignedLoginID int, InventoryPackID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MeasurementSetRequired'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ModulePackedDateTime"
echo "##################################################"
echo " "

hive -e "Drop table MES.ModulePackedDateTime"

hive -e "Create External table IF NOT EXISTS MES.ModulePackedDateTime (SerialNo varchar(508), TimePacked timestamp, IMS_No varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ModulePackedDateTime'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ModulePackedDateTime_Buffer"
echo "##################################################"
echo " "

hive -e "Drop table MES.ModulePackedDateTime_Buffer"

hive -e "Create External table IF NOT EXISTS MES.ModulePackedDateTime_Buffer (SerialNo varchar(508), TimePacked timestamp, IMS_No varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ModulePackedDateTime_Buffer'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OPCClient"
echo "##################################################"
echo " "

hive -e "Drop table MES.OPCClient"

hive -e "Create External table IF NOT EXISTS MES.OPCClient (OPCClientID smallint, OPCClient varchar(508), ComputerID smallint, ModifiedDT timestamp, LastUpdateDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OPCClient'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OPCConstant"
echo "##################################################"
echo " "

hive -e "Drop table MES.OPCConstant"

hive -e "Create External table IF NOT EXISTS MES.OPCConstant (OPCConstantID int, OPCItemID int, Description varchar(100), Constant float, Formula varchar(2000), ModifiedDT timestamp, LoginID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OPCConstant'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OPCCounter"
echo "##################################################"
echo " "

hive -e "Drop table MES.OPCCounter"

hive -e "Create External table IF NOT EXISTS MES.OPCCounter (OPCCounterID int, OPCItemID int, Description varchar(508), LoValue bigint, HiValue bigint, Scale float, Offset float, Formula varchar(2000), UnitCountTypeID smallint, ScrapReasonID smallint, ModifiedDT timestamp, LoginID smallint, IsProduction tinyint, AcceptableRateOfChange float, RfDeltaValueModeID tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OPCCounter'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OPCDigital"
echo "##################################################"
echo " "

hive -e "Drop table MES.OPCDigital"

hive -e "Create External table IF NOT EXISTS MES.OPCDigital (OPCDigitalID int, OPCItemID int, Description varchar(508), Formula varchar(2000), VariableTypeID int, HeadNo smallint, SampleNo smallint, PositionNo smallint, ModifiedDT timestamp, LoginID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OPCDigital'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OPCGroup"
echo "##################################################"
echo " "

hive -e "Drop table MES.OPCGroup"

hive -e "Create External table IF NOT EXISTS MES.OPCGroup (OPCGroupID int, Deadband float, UpdateRate int, OPCGroup varchar(100), IsActive tinyint, RfGroupNotifyModeID tinyint, TimeBias int, OPCServerID smallint, IsPublic tinyint, LocalID smallint, CacheUpdateRate int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OPCGroup'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OPCItem"
echo "##################################################"
echo " "

hive -e "Drop table MES.OPCItem"

hive -e "Create External table IF NOT EXISTS MES.OPCItem (OPCItemID int, OPCServerID smallint, OPCGroupID int, TagName varchar(100), TagAddress varchar(508), RfOPCItemTypeID tinyint, IsNotify tinyint, RawValue varchar(40), UpdatedDT timestamp, Quality varchar(100), Value varchar(40), LastRawValue varchar(40), LastUpdatedDT timestamp, LastQuality varchar(100), LastValue varchar(40), MachineStageID smallint, ChangeAction varchar(508), PLCID smallint, IsDatedOnServer tinyint, IsStoredAsArray tinyint, IsActive tinyint, MachineStageEventTypeID smallint, RfTransitionTypeID tinyint, TransitionToValue varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OPCItem'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OPCItemHistory"
echo "##################################################"
echo " "

hive -e "Drop table MES.OPCItemHistory"

hive -e "Create External table IF NOT EXISTS MES.OPCItemHistory (OPCItemHistoryID int, OPCItemID int, UpdatedDT timestamp, RawValue varchar(40), Value varchar(40), Quality varchar(100), CommittedDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OPCItemHistory'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OPCMachineEvent"
echo "##################################################"
echo " "

hive -e "Drop table MES.OPCMachineEvent"

hive -e "Create External table IF NOT EXISTS MES.OPCMachineEvent (OPCMachineEventID int, OPCItemID int, Description varchar(508), Formula varchar(2000), ModifiedDT timestamp, LoginID smallint, RfMachineStopRecordModeID tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OPCMachineEvent'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OPCMachineEventCode"
echo "##################################################"
echo " "

hive -e "Drop table MES.OPCMachineEventCode"

hive -e "Create External table IF NOT EXISTS MES.OPCMachineEventCode (OPCMachineEventCodeID int, OPCMachineEventCode varchar(100), OPCMachineEventID int, MachineStopReasonID smallint, IsRunning tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OPCMachineEventCode'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OPCParameter"
echo "##################################################"
echo " "

hive -e "Drop table MES.OPCParameter"

hive -e "Create External table IF NOT EXISTS MES.OPCParameter (OPCParameterID int, OPCItemID int, Description varchar(508), Scale float, Offset float, Formula varchar(2000), VariableTypeID int, HeadNo smallint, SampleNo smallint, PositionNo smallint, ModifiedDT timestamp, LoginID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OPCParameter'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OPCServer"
echo "##################################################"
echo " "

hive -e "Drop table MES.OPCServer"

hive -e "Create External table IF NOT EXISTS MES.OPCServer (OPCServerID smallint, OPCClientID smallint, OPCServer varchar(508), ProgID varchar(508), IsActive tinyint, ComputerID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OPCServer'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OPCSpeed"
echo "##################################################"
echo " "

hive -e "Drop table MES.OPCSpeed"

hive -e "Create External table IF NOT EXISTS MES.OPCSpeed (OPCSpeedID int, OPCItemID int, Description varchar(508), Scale float, Formula varchar(2000), ModifiedDT timestamp, LoginID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OPCSpeed'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OPCText"
echo "##################################################"
echo " "

hive -e "Drop table MES.OPCText"

hive -e "Create External table IF NOT EXISTS MES.OPCText (OPCTextID int, OPCItemID int, Description varchar(508), ModifiedDT timestamp, LoginID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OPCText'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Operation"
echo "##################################################"
echo " "

hive -e "Drop table MES.Operation"

hive -e "Create External table IF NOT EXISTS MES.Operation (OperationID int, OperationTypeID smallint, MachineStageID smallint, JobID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Operation'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table OperationType"
echo "##################################################"
echo " "

hive -e "Drop table MES.OperationType"

hive -e "Create External table IF NOT EXISTS MES.OperationType (OperationTypeID smallint, OperationType varchar(508), OperationTypeCode varchar(100), Description varchar(508), PartTypeID smallint, Sequence smallint, IsOptional tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/OperationType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table PartClassification"
echo "##################################################"
echo " "

hive -e "Drop table MES.PartClassification"

hive -e "Create External table IF NOT EXISTS MES.PartClassification (PartClassificationID smallint, PartClassification varchar(508), RfPartClassificationID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/PartClassification'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table PartInstance"
echo "##################################################"
echo " "

hive -e "Drop table MES.PartInstance"

hive -e "Create External table IF NOT EXISTS MES.PartInstance (PartInstanceID int, MeasurementSetID int, HeadNo smallint, SampleNo smallint, SerialNo varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/PartInstance'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table PartSubClassification"
echo "##################################################"
echo " "

hive -e "Drop table MES.PartSubClassification"

hive -e "Create External table IF NOT EXISTS MES.PartSubClassification (PartSubClassificationID smallint, PartSubClassification varchar(508), PartClassificationID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/PartSubClassification'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table PartType"
echo "##################################################"
echo " "

hive -e "Drop table MES.PartType"

hive -e "Create External table IF NOT EXISTS MES.PartType (PartTypeID smallint, PartType varchar(508), Description varchar(508), PartTypeCode varchar(100), Variant1TagListID smallint, Variant2TagListID smallint, Variant3TagListID smallint, Variant4TagListID smallint, Variant5TagListID smallint, Variant6TagListID smallint, Variant7TagListID smallint, Variant8TagListID smallint, Variant9TagListID smallint, Variant10TagListID smallint, Variant11TagListID smallint, Variant12TagListID smallint, Variant13TagListID smallint, Variant14TagListID smallint, Variant15TagListID smallint, Variant16TagListID smallint, Variant17TagListID smallint, Variant18TagListID smallint, Variant19TagListID smallint, Variant20TagListID smallint, RfInventoryAccountingModeID tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/PartType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table PLC"
echo "##################################################"
echo " "

hive -e "Drop table MES.PLC"

hive -e "Create External table IF NOT EXISTS MES.PLC (PLCID smallint, PLC varchar(50), Description varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/PLC'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Product"
echo "##################################################"
echo " "

hive -e "Drop table MES.Product"

hive -e "Create External table IF NOT EXISTS MES.Product (ProductID int, ProductTypeID smallint, Name varchar(508), Description varchar(508), IsRetired tinyint, PartID int, Variant1 varchar(50), Variant2 varchar(50), Variant3 varchar(50), Variant4 varchar(50), Variant5 varchar(50), Variant6 varchar(50), Variant7 varchar(50), Variant8 varchar(50), Variant9 varchar(50), Variant10 varchar(50), Variant11 varchar(50), Variant12 varchar(50), Variant13 varchar(50), Variant14 varchar(50), Variant15 varchar(50), Variant16 varchar(50), Variant17 varchar(50), Variant18 varchar(50), Variant19 varchar(50), Variant20 varchar(50),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Product'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ProductionStop"
echo "##################################################"
echo " "

hive -e "Drop table MES.ProductionStop"

hive -e "Create External table IF NOT EXISTS MES.ProductionStop (ProductionStopID int, ProductionStopReasonID smallint, JobID int, FromDT timestamp, ToDT timestamp, LineID smallint, IsEdited tinyint, RevisionNo tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ProductionStop'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ProductionStop_"
echo "##################################################"
echo " "

hive -e "Drop table MES.ProductionStop_"

hive -e "Create External table IF NOT EXISTS MES.ProductionStop_ (ProductionStopID int, StopComments varchar(508), StopLoginID smallint, OpenedStopDT timestamp, SavedStopDT timestamp, OriginalLoginID smallint, EditedProductionStopID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ProductionStop_'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ProductionStopReason"
echo "##################################################"
echo " "

hive -e "Drop table MES.ProductionStopReason"

hive -e "Create External table IF NOT EXISTS MES.ProductionStopReason (ProductionStopReasonID smallint, ProductionStopReason varchar(508), Description varchar(508), StopCode varchar(100), RfLineStopReasonTypeID smallint, RfStopRelativeToJobID tinyint, IsPlanned tinyint, IsDefaultNoJobReason tinyint, IsRetired tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ProductionStopReason'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ProductType"
echo "##################################################"
echo " "

hive -e "Drop table MES.ProductType"

hive -e "Create External table IF NOT EXISTS MES.ProductType (ProductTypeID smallint, Name varchar(508), ProductTypeCode varchar(100), Variant1TagListID smallint, Variant2TagListID smallint, Variant3TagListID smallint, Variant4TagListID smallint, Variant5TagListID smallint, Variant6TagListID smallint, Variant7TagListID smallint, Variant8TagListID smallint, Variant9TagListID smallint, Variant10TagListID smallint, Variant11TagListID smallint, Variant12TagListID smallint, Variant13TagListID smallint, Variant14TagListID smallint, Variant15TagListID smallint, Variant16TagListID smallint, Variant17TagListID smallint, Variant18TagListID smallint, Variant19TagListID smallint, Variant20TagListID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ProductType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table RootCause"
echo "##################################################"
echo " "

hive -e "Drop table MES.RootCause"

hive -e "Create External table IF NOT EXISTS MES.RootCause (RootCauseID int, RootCause varchar(508), Comments varchar(508), RootCauseTypeID smallint, LineTypeID smallint, MachineStageTypeID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/RootCause'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table RootCauseType"
echo "##################################################"
echo " "

hive -e "Drop table MES.RootCauseType"

hive -e "Create External table IF NOT EXISTS MES.RootCauseType (RootCauseTypeID smallint, RootCauseType varchar(508), Description varchar(2000), RootCauseTypeCode varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/RootCauseType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Scrap"
echo "##################################################"
echo " "

hive -e "Drop table MES.Scrap"

hive -e "Create External table IF NOT EXISTS MES.Scrap (ScrapID int, ScrapReasonID smallint, PartID int, Quantity float, UnitID smallint, DT timestamp, MachineStageID smallint, IsEdited tinyint, RevisionNo tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Scrap'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Scrap_"
echo "##################################################"
echo " "

hive -e "Drop table MES.Scrap_"

hive -e "Create External table IF NOT EXISTS MES.Scrap_ (ScrapID int, CollectionQuantity float, CollectionUnitID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedScrapID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Scrap_'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ScrapReason"
echo "##################################################"
echo " "

hive -e "Drop table MES.ScrapReason"

hive -e "Create External table IF NOT EXISTS MES.ScrapReason (ScrapReasonID smallint, ScrapReason varchar(100), Description varchar(508), MachineStageTypeID smallint, DefaultUnitID smallint, IsRetired tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ScrapReason'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ScrapReasonGroup"
echo "##################################################"
echo " "

hive -e "Drop table MES.ScrapReasonGroup"

hive -e "Create External table IF NOT EXISTS MES.ScrapReasonGroup (ScrapReasonGroupID smallint, ScrapReasonGroup varchar(508), Description varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ScrapReasonGroup'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Sequences"
echo "##################################################"
echo " "

hive -e "Drop table MES.Sequences"

hive -e "Create External table IF NOT EXISTS MES.Sequences (SeqName varchar(50), SeqValue smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Sequences'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SettingsPlantDefaults"
echo "##################################################"
echo " "

hive -e "Drop table MES.SettingsPlantDefaults"

hive -e "Create External table IF NOT EXISTS MES.SettingsPlantDefaults (SettingsPlantDefaultsID smallint, StartOfDay varchar(10), StartOfWeek smallint, StartOfYear smallint, RfLocaleID smallint, RfDefaultCurrencyID tinyint, DataEntryDefaultURI varchar(508), OnDataCommitGoTo varchar(50), ChainToStopped smallint, ColourStagesForCurrentJob smallint, UnAckAlarmsPeriod smallint, ShowOverdueIcon smallint, ShowAlarmIcon smallint, WONumberModeID tinyint, IsShowVarClassCombo tinyint, IsShowAcqClassCombo tinyint, RfMachineStopRecordModeID tinyint, IsAutoCreateProductsForParts tinyint, IsAutoCreateProductTypeForPart tinyint, EnforceClosedAlarms tinyint, ColourOrder varchar(50), IsAutoReleaseJob tinyint, JobClose tinyint, IsAllowDuplicateWONumbers tinyint, WoClose tinyint, IsOverdueRefToJob tinyint, DefaultSPCCalcStyleID smallint, IsAllowInventoryInserts tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SettingsPlantDefaults'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SettingsPlantNameTemplates"
echo "##################################################"
echo " "

hive -e "Drop table MES.SettingsPlantNameTemplates"

hive -e "Create External table IF NOT EXISTS MES.SettingsPlantNameTemplates (SettingsPlantNameTemplatesID int, CreateInvPackNoTemplate varchar(508), CustomerUniqueKeyTemplate varchar(508), InventoryPackNameTemplate varchar(508), WONumberTemplate varchar(508), ReceiveInvPackNoTemplate varchar(508), BOMVariantTemplate varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SettingsPlantNameTemplates'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SettingsPlantTimeWindows"
echo "##################################################"
echo " "

hive -e "Drop table MES.SettingsPlantTimeWindows"

hive -e "Create External table IF NOT EXISTS MES.SettingsPlantTimeWindows (SettingsPlantTimeWindowsID smallint, JobHistory int, ProductionSpoilageHistory int, DowntimeHistory int, InventoryHistory int, InventoryLabelHistory int, BuildRecordHistory int, LineInfoHistory int, QualityMeasurementHistory int, ProcessParameterHistory int, OPCItemHistoryHistory int, InitialLineInfoHistory int, MaintenanceProjectionPeriod int, ShiftLookAheadDays int, ForwardSchedulingWindow int, DefaultMaxTrendRecallWindow int, DefaultConcernDuePeriod int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SettingsPlantTimeWindows'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Shift"
echo "##################################################"
echo " "

hive -e "Drop table MES.Shift"

hive -e "Create External table IF NOT EXISTS MES.Shift (ShiftID int, ShiftTypeID smallint, ShiftPatternID smallint, FromDT timestamp, ToDT timestamp, Sequence smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Shift'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ShiftlyChecksDone"
echo "##################################################"
echo " "

hive -e "Drop table MES.ShiftlyChecksDone"

hive -e "Create External table IF NOT EXISTS MES.ShiftlyChecksDone (ShiftlyChecksDoneID int, shiftid int, jobid int, fromdt timestamp, todt timestamp, partid int, acquisitioncontextid int, machinestageid int, acquisitionvariantid int, acquisitionid int, downtime float, uptime float, total_time float, datacollectionperiod float, checks_req float, checks_req_after_downtime float, checks_done int, updated_dt timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ShiftlyChecksDone'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ShiftPattern"
echo "##################################################"
echo " "

hive -e "Drop table MES.ShiftPattern"

hive -e "Create External table IF NOT EXISTS MES.ShiftPattern (ShiftPatternID smallint, ShiftPattern varchar(100), PatternDuration int, IsPatternDirty tinyint, IsCustomPeriod tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ShiftPattern'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ShiftSequence"
echo "##################################################"
echo " "

hive -e "Drop table MES.ShiftSequence"

hive -e "Create External table IF NOT EXISTS MES.ShiftSequence (ShiftSequenceID smallint, ShiftPatternID smallint, ShiftTypeID smallint, Sequence smallint, ShiftStartTime timestamp, ShiftEndTime timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ShiftSequence'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ShiftType"
echo "##################################################"
echo " "

hive -e "Drop table MES.ShiftType"

hive -e "Create External table IF NOT EXISTS MES.ShiftType (ShiftTypeID smallint, Name varchar(100), Description varchar(508), IsNonWorking tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ShiftType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPCCalcStyle_CUS"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPCCalcStyle_CUS"

hive -e "Create External table IF NOT EXISTS MES.SPCCalcStyle_CUS (SPCCalcStyleID smallint, SPCCalcStyle varchar(100), CmThreshold float, CpThreshold float, PpThreshold float, CgThreshold float, RnRThreshold float, IsShowCpOnlyIfStable tinyint, CAMTarget float, CpBasedOnID tinyint, CLBasedOnID tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPCCalcStyle_CUS'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPCChartComponent"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPCChartComponent"

hive -e "Create External table IF NOT EXISTS MES.SPCChartComponent (SPCChartComponentID int, SPCChartDefID int, SPCVarChartID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPCChartComponent'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPCChartControlLimit"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPCChartControlLimit"

hive -e "Create External table IF NOT EXISTS MES.SPCChartControlLimit (SPCChartControlLimitID int, SPCChartComponentID int, RfChartComponentID tinyint, RfChart varchar(40), UCL float, CL float, LCL float, FromDT timestamp, ToDT timestamp, RangeToDT timestamp, ModifiedDT timestamp, LoginID smallint, RangeFromDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPCChartControlLimit'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPCChartDef"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPCChartDef"

hive -e "Create External table IF NOT EXISTS MES.SPCChartDef (SPCChartDefID int, VariableTypeID int, SPCRuleID smallint, RfStudyTypeID smallint, GroupingSize smallint, MovingRange smallint, SPCCalcStyleID smallint, RfGroupingID tinyint, NGroupMarkerID int, CpBasedOnID tinyint, CLBasedOnID tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPCChartDef'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPCChartSet"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPCChartSet"

hive -e "Create External table IF NOT EXISTS MES.SPCChartSet (SPCChartSetID smallint, SPCChartSet varchar(508), AcquisitionID smallint, SPCURI varchar(508), RfDataBandID tinyint, NPeriods int, SpecTypeID smallint, IsRunningProductOnly tinyint, LHSessionID int, MaxTrendRecallWindow smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPCChartSet'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPCChartSetView"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPCChartSetView"

hive -e "Create External table IF NOT EXISTS MES.SPCChartSetView (SPCChartSetViewID int, SPCChartSetView varchar(508), Sequence smallint, SPCChartSetID smallint, RfChartSetViewTypeID smallint, NoCols smallint, NoRows smallint, Caption varchar(100), Tooltip varchar(508), IsAggregated tinyint, RfCutByIDs varchar(50), IsPanelled tinyint, ImageURI varchar(508), GridImageRender varchar(50), ParetoXAxis varchar(508), ParetoStackBy varchar(508), SPCChartSetViewStyleID smallint, IsAutoFit tinyint, OverlayFlags int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPCChartSetView'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPCChartSetViewStyle_CUS"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPCChartSetViewStyle_CUS"

hive -e "Create External table IF NOT EXISTS MES.SPCChartSetViewStyle_CUS (SPCChartSetViewStyleID smallint, SPCChartSetViewStyle varchar(508), IsSpecLimits tinyint, IsControlLimitZones tinyint, IsGrid tinyint, IsTimescaled tinyint, IsHAxis tinyint, IsVAxis tinyint, IsXChart tinyint, IsRsChart tinyint, IsRsWChart tinyint, IsDistribution tinyint, IsShowComments tinyint, IsXScatter tinyint, IsIncludeIgnored tinyint, IsOnlyOSOCCharts tinyint, SPCStatsStyleID smallint, IsVerticalOverview tinyint, OverviewWidth smallint, OverviewHeight smallint, PageBreakRfCutByIDs varchar(50), ChartWidth smallint, ChartHeight smallint, IsFixedScale tinyint, IsParetoCurve tinyint, IsLegend tinyint, IsHorizontalDistribution tinyint, IsSigmaLines tinyint, IsShowCAComments tinyint, IsShowUnAckAlarms tinyint, HorizontalOffset smallint, IsShowLimitLabels tinyint, IsColourZones tinyint, IsSystem tinyint, IsOSHotCold tinyint, FixedScaleOverscaling float, IsConstantTitleRow tinyint, IsShowStatCategories tinyint, IsOverlayEnvelope tinyint, IsGradientBackground tinyint, RunChartFont tinyint, DistributionFont tinyint, StatisticsFont tinyint, VAxisFont tinyint, HAxisFont tinyint, OverlayKeyFont tinyint, IsShowOverlayKey tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPCChartSetViewStyle_CUS'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPCDefaultControlLimit"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPCDefaultControlLimit"

hive -e "Create External table IF NOT EXISTS MES.SPCDefaultControlLimit (SPCDefaultControlLimitID int, SPCChartDefID int, RfChartComponentID tinyint, RfChart varchar(40), UCL float, CL float, LCL float, ModifiedDT timestamp, LoginID smallint, ProductID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPCDefaultControlLimit'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPCDefaultView"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPCDefaultView"

hive -e "Create External table IF NOT EXISTS MES.SPCDefaultView (SPCDefaultViewID smallint, Sequence smallint, RfChartSetViewTypeID smallint, NoCols smallint, NoRows smallint, Caption varchar(100), Tooltip varchar(508), IsAggregated tinyint, RfCutByIDs varchar(50), IsPanelled tinyint, ImageURI varchar(508), GridImageRender varchar(50), ParetoXAxis varchar(508), ParetoStackBy varchar(508), SPCChartSetViewStyleID smallint, IsAutoFit tinyint, AcquisitionUsageID tinyint, OverlayFlags int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPCDefaultView'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPCRule"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPCRule"

hive -e "Create External table IF NOT EXISTS MES.SPCRule (SPCRuleID smallint, SPCRule varchar(100), TAGMSTYPE1ID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPCRule'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPCStatsStyle_CUS"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPCStatsStyle_CUS"

hive -e "Create External table IF NOT EXISTS MES.SPCStatsStyle_CUS (SPCStatsStyleID smallint, SPCStatsStyle varchar(100), IsSystem tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPCStatsStyle_CUS'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPCVarChart"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPCVarChart"

hive -e "Create External table IF NOT EXISTS MES.SPCVarChart (SPCVarChartID int, SPCRuleID smallint, ProductID int, AcquisitionID smallint, MachineStageID smallint, VariableTypeID int, RfAttributeClassID tinyint, HeadNo smallint, RfAcquisitionClassID tinyint, TrendStartMSID int, TAGMSTYPE1ID smallint, ATTRIBUTETYPEID smallint, TAGMSVALUE1 varchar(508), CreateDT timestamp, LoginID int, IsMsetInsert tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPCVarChart'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Spec"
echo "##################################################"
echo " "

hive -e "Drop table MES.Spec"

hive -e "Create External table IF NOT EXISTS MES.Spec (SpecID int, VariableID int, USL float, NOM float, LSL float, SpecTypeID smallint, IsEdited tinyint, RevisionNo smallint, DecPlaces tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Spec'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Spec_"
echo "##################################################"
echo " "

hive -e "Drop table MES.Spec_"

hive -e "Create External table IF NOT EXISTS MES.Spec_ (SpecID int, LoginID smallint, Units varchar(40), URL float, LRL float, FromDT timestamp, ToDT timestamp, Comments varchar(2000), ModifiedDT timestamp, DrawingNumber varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Spec_'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SpecType"
echo "##################################################"
echo " "

hive -e "Drop table MES.SpecType"

hive -e "Create External table IF NOT EXISTS MES.SpecType (SpecTypeID smallint, SpecType varchar(100), CUSTOMERID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SpecType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPMM_CalTools"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPMM_CalTools"

hive -e "Create External table IF NOT EXISTS MES.SPMM_CalTools (EDIT varchar(510), Site varchar(510), Control_No varchar(510), CSF_No float, AssetExternalControl_No varchar(510), Manufacturer varchar(510), EquipmentName varchar(510), Model_No varchar(510), Serial_No float, EquipmentLocation varchar(510), CalRequired varchar(510), CalFrequency varchar(510), CalDate timestamp, CalDueDate timestamp, Owner varchar(510), CalibrationSite varchar(510), Calibrator varchar(510), Status varchar(510), Isthelastcalibrationoutoftolerance varchar(510), DueDate timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPMM_CalTools'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table SPMM_DMCost"
echo "##################################################"
echo " "

hive -e "Drop table MES.SPMM_DMCost"

hive -e "Create External table IF NOT EXISTS MES.SPMM_DMCost (Oracle_PN varchar(100), Description varchar(510), Cost float,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/SPMM_DMCost'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Supplier"
echo "##################################################"
echo " "

hive -e "Drop table MES.Supplier"

hive -e "Create External table IF NOT EXISTS MES.Supplier (SupplierID smallint, Supplier varchar(508), SupplierCode varchar(508), AddressID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Supplier'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table sysdiagrams"
echo "##################################################"
echo " "

hive -e "Drop table MES.sysdiagrams"

hive -e "Create External table IF NOT EXISTS MES.sysdiagrams (name varchar(256), principal_id int, diagram_id int, version int, definition varbinary(8000),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/sysdiagrams'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TagCauseAction"
echo "##################################################"
echo " "

hive -e "Drop table MES.TagCauseAction"

hive -e "Create External table IF NOT EXISTS MES.TagCauseAction (TagCauseActionID int, CauseActionID int, TagTypeID smallint, TagValue varchar(508), DT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TagCauseAction'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TagDef"
echo "##################################################"
echo " "

hive -e "Drop table MES.TagDef"

hive -e "Create External table IF NOT EXISTS MES.TagDef (TagDefID int, TagOwnerID int, RfTable varchar(60), TagTypeID smallint, TagValue varchar(508), DT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TagDef'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TagDefect"
echo "##################################################"
echo " "

hive -e "Drop table MES.TagDefect"

hive -e "Create External table IF NOT EXISTS MES.TagDefect (TagDefectID int, IndividualDefectID int, TagTypeID smallint, TagValue varchar(508), DT timestamp, X smallint, Y smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TagDefect'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TagList"
echo "##################################################"
echo " "

hive -e "Drop table MES.TagList"

hive -e "Create External table IF NOT EXISTS MES.TagList (TagListID smallint, ListName varchar(100), VariantNo tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TagList'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TagListValue"
echo "##################################################"
echo " "

hive -e "Drop table MES.TagListValue"

hive -e "Create External table IF NOT EXISTS MES.TagListValue (TagListValueID int, TagListID smallint, TagListValue varchar(508), DisplayOrder smallint, IsRetired tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TagListValue'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TagMS"
echo "##################################################"
echo " "

hive -e "Drop table MES.TagMS"

hive -e "Create External table IF NOT EXISTS MES.TagMS (TagMSID int, MeasurementSetID int, TagTypeID smallint, TagValue varchar(508), DT timestamp, TagTreeNodeID smallint, X smallint, Y smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TagMS'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TagPartInstance"
echo "##################################################"
echo " "

hive -e "Drop table MES.TagPartInstance"

hive -e "Create External table IF NOT EXISTS MES.TagPartInstance (TagPartInstanceID int, PartInstanceID int, TagTypeID smallint, TagValue varchar(508), DT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TagPartInstance'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TagProfile"
echo "##################################################"
echo " "

hive -e "Drop table MES.TagProfile"

hive -e "Create External table IF NOT EXISTS MES.TagProfile (TagProfileID smallint, Name varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TagProfile'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TagTree"
echo "##################################################"
echo " "

hive -e "Drop table MES.TagTree"

hive -e "Create External table IF NOT EXISTS MES.TagTree (TagTreeID smallint, TagTree varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TagTree'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TagTreeNode"
echo "##################################################"
echo " "

hive -e "Drop table MES.TagTreeNode"

hive -e "Create External table IF NOT EXISTS MES.TagTreeNode (TagTreeNodeID smallint, TagTreeNode varchar(100), TagTreeID smallint, ParentTagTreeNodeID smallint, Depth tinyint, SortOrder tinyint, ImageURI varchar(510), NoCols tinyint, NoRows tinyint, SortExpression varchar(255), ImageWidth smallint, ImageHeight smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TagTreeNode'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TagTreeNodeImgLoc"
echo "##################################################"
echo " "

hive -e "Drop table MES.TagTreeNodeImgLoc"

hive -e "Create External table IF NOT EXISTS MES.TagTreeNodeImgLoc (TagTreeNodeImgLocID smallint, TagTreeNodeID smallint, X tinyint, Y tinyint, Width tinyint, Height tinyint, MappedTagTreeNodeID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TagTreeNodeImgLoc'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TagType"
echo "##################################################"
echo " "

hive -e "Drop table MES.TagType"

hive -e "Create External table IF NOT EXISTS MES.TagType (TagTypeID smallint, RfDataTypeID tinyint, Name varchar(508), TagTypeCode varchar(100), ISSYSTEM tinyint, TAGVIEW varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TagType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TagTypeInTagProfile"
echo "##################################################"
echo " "

hive -e "Drop table MES.TagTypeInTagProfile"

hive -e "Create External table IF NOT EXISTS MES.TagTypeInTagProfile (TagProfileID smallint, TagTypeID smallint, EntryOrder smallint, CompulsoryConditions tinyint, IsDefaulted tinyint, IsEncrypted tinyint, TagListID smallint, IsReadOnly tinyint, RptQueryID int, TagTypeInTagProfileID int, TagTreeID int, RfTagDataSourceID tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TagTypeInTagProfile'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TMP_Checks_Done"
echo "##################################################"
echo " "

hive -e "Drop table MES.TMP_Checks_Done"

hive -e "Create External table IF NOT EXISTS MES.TMP_Checks_Done (ShiftID int, JobID int, AcquisitionContextID int, Checks_Done float,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TMP_Checks_Done'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TMP_Job_Shift_Downtime"
echo "##################################################"
echo " "

hive -e "Drop table MES.TMP_Job_Shift_Downtime"

hive -e "Create External table IF NOT EXISTS MES.TMP_Job_Shift_Downtime (ShiftID int, MachineStageID int, JobID int, Downtime float,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TMP_Job_Shift_Downtime'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table TMP_Jobs_In_Shifts"
echo "##################################################"
echo " "

hive -e "Drop table MES.TMP_Jobs_In_Shifts"

hive -e "Create External table IF NOT EXISTS MES.TMP_Jobs_In_Shifts (ShiftID int, MachineStageID int, JobID int, PartID int, FromDT timestamp, ToDT timestamp, Downtime float, Total_Time float, Uptime float,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/TMP_Jobs_In_Shifts'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Tool"
echo "##################################################"
echo " "

hive -e "Drop table MES.Tool"

hive -e "Create External table IF NOT EXISTS MES.Tool (ToolID int, Tool varchar(508), ToolSet varchar(508), Description varchar(508), ToolTypeID smallint, IsRetired tinyint, NoCavities tinyint, Variant1 varchar(200), Variant2 varchar(200), Variant3 varchar(200), Variant4 varchar(200), Variant5 varchar(200), Variant6 varchar(200), Variant7 varchar(200), Variant8 varchar(200), Variant9 varchar(200), Variant10 varchar(200), Variant11 varchar(200), Variant12 varchar(200), Variant13 varchar(200), Variant14 varchar(200), Variant15 varchar(200), PartID int, Variant16 varchar(200), Variant17 varchar(200), Variant18 varchar(200), Variant19 varchar(200), Variant20 varchar(200),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Tool'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Tool_"
echo "##################################################"
echo " "

hive -e "Drop table MES.Tool_"

hive -e "Create External table IF NOT EXISTS MES.Tool_ (ToolID int, Supplier varchar(508), Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Ident varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Tool_'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Tool_Custom"
echo "##################################################"
echo " "

hive -e "Drop table MES.Tool_Custom"

hive -e "Create External table IF NOT EXISTS MES.Tool_Custom (ToolID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Tool_Custom'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ToolAtLocation"
echo "##################################################"
echo " "

hive -e "Drop table MES.ToolAtLocation"

hive -e "Create External table IF NOT EXISTS MES.ToolAtLocation (ToolAtLocationID int, LocationID int, ToolID int, FromDT timestamp, ToDT timestamp, IsEdited tinyint, RevisionNo tinyint, EditedToolAtLocationID int, MovedByLoginID smallint, ModifiedDT timestamp, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ToolAtLocation'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ToolCavity"
echo "##################################################"
echo " "

hive -e "Drop table MES.ToolCavity"

hive -e "Create External table IF NOT EXISTS MES.ToolCavity (ToolCavityID int, CavityNumber tinyint, CavityName varchar(508), ToolID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ToolCavity'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ToolCavityStateReason"
echo "##################################################"
echo " "

hive -e "Drop table MES.ToolCavityStateReason"

hive -e "Create External table IF NOT EXISTS MES.ToolCavityStateReason (ToolCavityStateReasonID smallint, ToolTypeID smallint, ToolCavityStateReason varchar(508), Description varchar(508), CavityStatusCode varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ToolCavityStateReason'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ToolChangeReason"
echo "##################################################"
echo " "

hive -e "Drop table MES.ToolChangeReason"

hive -e "Create External table IF NOT EXISTS MES.ToolChangeReason (ToolChangeReasonID smallint, ToolTypeID smallint, ChangeReason varchar(508), Description varchar(508), ChangeToRfToolStatusID tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ToolChangeReason'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ToolGroup"
echo "##################################################"
echo " "

hive -e "Drop table MES.ToolGroup"

hive -e "Create External table IF NOT EXISTS MES.ToolGroup (ToolGroupID smallint, ToolGroup varchar(508), Description varchar(508), ToolGroupCode varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ToolGroup'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ToolState"
echo "##################################################"
echo " "

hive -e "Drop table MES.ToolState"

hive -e "Create External table IF NOT EXISTS MES.ToolState (ToolStateID int, ToolID int, FromDT timestamp, ToDT timestamp, RfToolStatusID tinyint, LoginID smallint, Comments varchar(100), OpenedDT timestamp, SavedDT timestamp, IsEdited tinyint, RevisionNo tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ToolState'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ToolType"
echo "##################################################"
echo " "

hive -e "Drop table MES.ToolType"

hive -e "Create External table IF NOT EXISTS MES.ToolType (ToolTypeID smallint, ToolType varchar(508), ToolTypeCode varchar(100), Description varchar(508), Variant1TagListID smallint, Variant2TagListID smallint, Variant3TagListID smallint, Variant4TagListID smallint, Variant5TagListID smallint, Variant6TagListID smallint, Variant7TagListID smallint, Variant8TagListID smallint, Variant9TagListID smallint, Variant10TagListID smallint, Variant11TagListID smallint, Variant12TagListID smallint, Variant13TagListID smallint, Variant14TagListID smallint, Variant15TagListID smallint, Variant16TagListID smallint, Variant17TagListID smallint, Variant18TagListID smallint, Variant19TagListID smallint, Variant20TagListID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ToolType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ToolUsage"
echo "##################################################"
echo " "

hive -e "Drop table MES.ToolUsage"

hive -e "Create External table IF NOT EXISTS MES.ToolUsage (ToolUsageID int, JobID int, MachineStageID smallint, ToolID int, FromDT timestamp, ToDT timestamp, ToolPosition varchar(508), ToolChangeReasonID smallint, IsEdited tinyint, RevisionNo tinyint, OperationID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ToolUsage'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ToolUsage_"
echo "##################################################"
echo " "

hive -e "Drop table MES.ToolUsage_"

hive -e "Create External table IF NOT EXISTS MES.ToolUsage_ (ToolUsageID int, StartUsingComments varchar(508), ToolChangeComments varchar(508), StartLoginID smallint, ChangeLoginID smallint, OpenedStartDT timestamp, OpenedChangeDT timestamp, SavedStartDT timestamp, SavedChangeDT timestamp, OriginalLoginID smallint, EditedToolUsageID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/ToolUsage_'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Unit"
echo "##################################################"
echo " "

hive -e "Drop table MES.Unit"

hive -e "Create External table IF NOT EXISTS MES.Unit (UnitID smallint, Unit varchar(40), Description varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Unit'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table UnitConversion"
echo "##################################################"
echo " "

hive -e "Drop table MES.UnitConversion"

hive -e "Create External table IF NOT EXISTS MES.UnitConversion (FromUnitID smallint, ToUnitID smallint, Multiplier float, UnitConversionID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/UnitConversion'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table UnitCount"
echo "##################################################"
echo " "

hive -e "Drop table MES.UnitCount"

hive -e "Create External table IF NOT EXISTS MES.UnitCount (UnitCountID int, UnitCountTypeID smallint, PartID int, Quantity float, UnitID smallint, DT timestamp, MachineStageID smallint, IsEdited tinyint, RevisionNo tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/UnitCount'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table UnitCount_"
echo "##################################################"
echo " "

hive -e "Drop table MES.UnitCount_"

hive -e "Create External table IF NOT EXISTS MES.UnitCount_ (UnitCountID int, CollectionQuantity float, CollectionUnitID smallint, Comments varchar(1024), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedUnitCountID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/UnitCount_'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table UnitCountType"
echo "##################################################"
echo " "

hive -e "Drop table MES.UnitCountType"

hive -e "Create External table IF NOT EXISTS MES.UnitCountType (UnitCountTypeID smallint, UnitCountType varchar(100), Description varchar(508), MachineStageTypeID smallint, DefaultUnitID smallint, IsQuantityIn tinyint, IsQuantityOut tinyint, IsMaintenanceCount tinyint, IsConvertableToBaseUnits tinyint, AssetCountTypeID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/UnitCountType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table UnitCountTypeGroup"
echo "##################################################"
echo " "

hive -e "Drop table MES.UnitCountTypeGroup"

hive -e "Create External table IF NOT EXISTS MES.UnitCountTypeGroup (UnitCountTypeGroupID smallint, UnitCountTypeGroup varchar(508), Description varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/UnitCountTypeGroup'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table VarChartOC"
echo "##################################################"
echo " "

hive -e "Drop table MES.VarChartOC"

hive -e "Create External table IF NOT EXISTS MES.VarChartOC (VarChartOCID int, MeasurementSetID int, SPCChartControlLimitID int, SubgroupID varchar(20),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/VarChartOC'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Variable"
echo "##################################################"
echo " "

hive -e "Drop table MES.Variable"

hive -e "Create External table IF NOT EXISTS MES.Variable (VariableID int, VariableTypeID int, ProductID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Variable'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table VariableType"
echo "##################################################"
echo " "

hive -e "Drop table MES.VariableType"

hive -e "Create External table IF NOT EXISTS MES.VariableType (VariableTypeID int, Name varchar(508), ProductTypeID smallint, Description varchar(508), IsUnilateral tinyint, VariableTypeCode varchar(100), IsProcessParameter tinyint, VariableTypeClassID tinyint, ImageURI varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/VariableType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table VariableTypeClass"
echo "##################################################"
echo " "

hive -e "Drop table MES.VariableTypeClass"

hive -e "Create External table IF NOT EXISTS MES.VariableTypeClass (VariableTypeClassID tinyint, VariableTypeClass varchar(508), Description varchar(508), Priority tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/VariableTypeClass'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table VariableTypeGroup"
echo "##################################################"
echo " "

hive -e "Drop table MES.VariableTypeGroup"

hive -e "Create External table IF NOT EXISTS MES.VariableTypeGroup (VariableTypeGroupID smallint, Name varchar(508), Description varchar(508), VariableTypeGroupCode varchar(100), IsSmartGroup tinyint, SmartGroupPattern varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/VariableTypeGroup'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table VarMeasurement"
echo "##################################################"
echo " "

hive -e "Drop table MES.VarMeasurement"

hive -e "Create External table IF NOT EXISTS MES.VarMeasurement (VarMeasurementID int, SpecID int, MeasurementSetID int, Measurement float, Ignored tinyint, VariableTypeID int, ProductID int, HeadNo smallint, SampleNo smallint, PositionNo smallint, DT timestamp, RfIsOSID tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/VarMeasurement'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table VarMeasurementP"
echo "##################################################"
echo " "

hive -e "Drop table MES.VarMeasurementP"

hive -e "Create External table IF NOT EXISTS MES.VarMeasurementP (VarMeasurementPID int, SpecID int, MeasurementSetPID int, Measurement float, Ignored tinyint, VariableTypeID int, ProductID int, HeadNo smallint, SampleNo smallint, PositionNo smallint, DT timestamp, RfIsOSID tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/VarMeasurementP'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Version"
echo "##################################################"
echo " "

hive -e "Drop table MES.Version"

hive -e "Create External table IF NOT EXISTS MES.Version (PlantDBVersion varchar(100), Comments varchar(100), ModifiedDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Version'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table WO"
echo "##################################################"
echo " "

hive -e "Drop table MES.WO"

hive -e "Create External table IF NOT EXISTS MES.WO (WOID int, WONumber varchar(508), RunNo smallint, PartID int, QuantityOrdered float, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDT timestamp, EstimatedStartDT timestamp, EstimatedEndDT timestamp, CustomerID smallint, IsDiscrete tinyint, Reference1 varchar(100), Reference2 varchar(100), Reference3 varchar(100), Reference4 varchar(100), Reference5 varchar(100), WORefID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/WO'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table WO_"
echo "##################################################"
echo " "

hive -e "Drop table MES.WO_"

hive -e "Create External table IF NOT EXISTS MES.WO_ (WOID int, CustomerOrderNo varchar(508), LabelsPerInventoryPack smallint, ItemsPerInventoryPack float, ItemsPerLayer float, LayersPerInventoryPack int, PackingCode varchar(100), LabelTemplate varchar(508), LabelColour varchar(100), EANCode char(25), CusStartNum int, CusEndNum int, CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), PrinterURL varchar(2048), BOMVariantID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/WO_'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table WO_custom"
echo "##################################################"
echo " "

hive -e "Drop table MES.WO_custom"

hive -e "Create External table IF NOT EXISTS MES.WO_custom (WOID int, BaseWONumber varchar(254), Txn_date timestamp, Wip_Entity_ID int, Alternate_Bom varchar(100), WO_Status varchar(40), IsBtoCto tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/WO_custom'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table WORef"
echo "##################################################"
echo " "

hive -e "Drop table MES.WORef"

hive -e "Create External table IF NOT EXISTS MES.WORef (WORefID int, WOReference varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/WORef'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table WorkInstructionProcedure"
echo "##################################################"
echo " "

hive -e "Drop table MES.WorkInstructionProcedure"

hive -e "Create External table IF NOT EXISTS MES.WorkInstructionProcedure (WorkInstructionProcedureID smallint, WorkInstructionProcedure varchar(508), WorkInstructionRef varchar(100), PartID int, IsEdited tinyint, FromDT timestamp, ToDT timestamp, RevisionNo tinyint, LoginID smallint, ModifiedDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/WorkInstructionProcedure'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table WorkInstructionResult"
echo "##################################################"
echo " "

hive -e "Drop table MES.WorkInstructionResult"

hive -e "Create External table IF NOT EXISTS MES.WorkInstructionResult (WorkInstructionResultID int, WorkInstructionStepID int, OperationID int, DT timestamp, Comments varchar(2048), LoginID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/WorkInstructionResult'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table WorkInstructionStep"
echo "##################################################"
echo " "

hive -e "Drop table MES.WorkInstructionStep"

hive -e "Create External table IF NOT EXISTS MES.WorkInstructionStep (WorkInstructionStepID int, WorkInstructionStep varchar(508), WorkInstructionProcedureID smallint, OperationTypeID smallint, StepOrder float, RfSpecialActionTypeID int, AcquisitionVariantID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/WorkInstructionStep'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table xxxHipotData"
echo "##################################################"
echo " "

hive -e "Drop table MES.xxxHipotData"

hive -e "Create External table IF NOT EXISTS MES.xxxHipotData (SERIAL_NUMBER varchar(100), CONT_A decimal(18,2), CONT_B decimal(18,2), CONT_C decimal(18,2), HIPOT decimal(18,2), STATION varchar(100), DATETIME timestamp, USERNAME varchar(100), REMARKS varchar(200),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/xxxHipotData'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table xxxHipotData_Buffer"
echo "##################################################"
echo " "

hive -e "Drop table MES.xxxHipotData_Buffer"

hive -e "Create External table IF NOT EXISTS MES.xxxHipotData_Buffer (SERIAL_NUMBER varchar(100), CONT_A decimal(18,2), CONT_B decimal(18,2), CONT_C decimal(18,2), HIPOT decimal(18,2), STATION varchar(100), DATETIME timestamp, USERNAME varchar(100), REMARKS varchar(200),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/xxxHipotData_Buffer'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table xxxIPN"
echo "##################################################"
echo " "

hive -e "Drop table MES.xxxIPN"

hive -e "Create External table IF NOT EXISTS MES.xxxIPN (PartNumber varchar(100), IPN varchar(500),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/xxxIPN'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table BuildRecord"
echo "##################################################"
echo " "

hive -e "Drop table MES.BuildRecord"

hive -e "Create External table IF NOT EXISTS MES.BuildRecord (BuildRecordID int, InvPackCreatedID int, InvPackConsumedID int, QuantityUsed float, UnitID smallint, BuildDT timestamp, IsEdited tinyint, RevisionNo smallint, BuildMachineStageID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, EditedBuildRecordID int, OriginalLoginID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/BuildRecord'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table InventoryLabel"
echo "##################################################"
echo " "

hive -e "Drop table MES.InventoryLabel"

hive -e "Create External table IF NOT EXISTS MES.InventoryLabel (InventoryLabelID int, MachineStage varchar(508), PartNumber varchar(508), PartType varchar(508), QuantityOrdered float, WONumber varchar(508), InventoryPackNo varchar(508), CreatedFromDT timestamp, Quantity float, Unit varchar(40), Line varchar(508), LabelTemplate varchar(508), LabelsPerInventoryPack smallint, ItemsPerLayer float, LayersPerInventoryPack int, PrinterURL varchar(2048), PrintedDT timestamp, ItemsPerInventoryPack float, ScannedDT timestamp, IsCancelled tinyint, OrderQuantityPacks int, LineShortName varchar(100), PackNo int, IsReprint tinyint, PartDescription varchar(508), LabelSaveDirectory varchar(508), JobID int, IsPrintLandscape tinyint, NoCopies smallint, LabelColour varchar(50), EANCode varchar(20), CusNum int, PackingCode varchar(100), CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), Customer varchar(508), Address1 varchar(508), Address2 varchar(508), City varchar(50), County varchar(50), PostCode varchar(50), Country varchar(50), InventoryPackID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/InventoryLabel'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table InventoryPack"
echo "##################################################"
echo " "

hive -e "Drop table MES.InventoryPack"

hive -e "Create External table IF NOT EXISTS MES.InventoryPack (InventoryPackID int, InventoryPackNo varchar(508), WOID int, JobID int, CreatedFromDT timestamp, CreatedToDT timestamp, CreatedOnMachineStageID smallint, IsEdited tinyint, RevisionNo tinyint, PartID int, Quantity float, UnitID smallint, Ignored tinyint, InventoryPackIndex int, CustomerUniqueKey varchar(508), ReceivedDT timestamp, BirthDT timestamp, LastBuildRecordID int, msrepl_tran_version varchar(36), CurrentQuantity float, QuantityAdjustment float, PositionNumber tinyint, LocationID int, InvStateID int, LocationFromDT timestamp, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedInventoryPackID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Reference6 varchar(508), Reference7 varchar(508), Reference8 varchar(508), Reference9 varchar(508), Reference10 varchar(508), SupplierID smallint, SupplierReference varchar(508), UseByDT timestamp, UseAfterDT timestamp, Txn_date timestamp, OracleStatus tinyint, IntendedWOID int, FinalWOID int, OriginalQty float, Seq_Id int, From_Subinventory char(20), From_Locator char(80), To_Subinventory char(20), To_Locator char(80), ScrappedShiftID int, LastInventoryLabelID int, ScrapLocationID int, MachineLocationID int, ScrapReasonID smallint, ModuleInfoID int, ResealedDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/InventoryPack'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Job"
echo "##################################################"
echo " "

hive -e "Drop table MES.Job"

hive -e "Create External table IF NOT EXISTS MES.Job (JobID int, WOID int, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDT timestamp, PlannedDuration float, EstimatedStartDT timestamp, EstimatedEndDT timestamp, EstimatedDuration float, ScheduledSequence smallint, LineID smallint, ProductionStartDT timestamp, ProductionEndDT timestamp, TheoreticalCycleTime float, BudgetChangeOver int, QuantityOrdered float, IsCalculated tinyint, LineGroupID smallint, JobInstructions varchar(2048), ReleaseDT timestamp, ReleaseLoginID smallint, StartLoginID smallint, EndLoginID smallint, Comments varchar(2000), ModifiedDt timestamp, ModifiedLoginID smallint, StoppedReason varchar(508), SkippedReason varchar(508), SkippedDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Job'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Line"
echo "##################################################"
echo " "

hive -e "Drop table MES.Line"

hive -e "Create External table IF NOT EXISTS MES.Line (LineID smallint, Line varchar(508), Description varchar(508), LineTypeID smallint, IsRetired tinyint, RfIntervalModeID tinyint, IsOEEInventoryIsolation tinyint, IsOEEInventoryReintroduction tinyint, IsCountOutputInventory tinyint, IsCountInputInventory tinyint, IsLineInfoSweepEnabled tinyint, IsWOOnSingleJob tinyint, LineShortName varchar(100), CurrentLineInfoID int, LastLineInfoID int, RfInvCreatedDateModeID tinyint, RfEndJobInvModeID tinyint, CurrentJobID int, IsScrapAsQualityLoss tinyint, IsScrapInProductionCounts tinyint, LineDownCostPerHour float, IsContributeLineGroupOutput tinyint, IsContributeLineGroupWaste tinyint, IsContributeLineGroupDowntime tinyint, OEETarget float, WasteTarget float, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Line'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Location"
echo "##################################################"
echo " "

hive -e "Drop table MES.Location"

hive -e "Create External table IF NOT EXISTS MES.Location (LocationID int, Location varchar(508), LocationTypeID smallint, IsRetired tinyint, MaxQuantity float, LocationCode varchar(100), Description varchar(508), LocationType varchar(100), LocationTypeCode varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Location'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MachineStage"
echo "##################################################"
echo " "

hive -e "Drop table MES.MachineStage"

hive -e "Create External table IF NOT EXISTS MES.MachineStage (MachineStageID smallint, MachineStageTypeID smallint, Name varchar(508), IsRetired tinyint, DepartmentID smallint, Description varchar(508), CurrentShiftPatternID smallint, NoHeads smallint, IsOEEBottleNeck tinyint, IsProductionOutput tinyint, MachineStopID int, StoppedScreenThreshold smallint, LineSectionID smallint, IsDiscrete tinyint, RfDowntimeCollectionModeID tinyint, RfSpoilageCollectionModeID tinyint, RfProductionCollectionModeID tinyint, LastBuildRecordID int, CurrentJobID int, ModuleDatabase varchar(100), IntendedWOID int, MachineStageCode varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MachineStage'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MachineStop"
echo "##################################################"
echo " "

hive -e "Drop table MES.MachineStop"

hive -e "Create External table IF NOT EXISTS MES.MachineStop (MachineStopID int, MachineStopReasonID smallint, FromDT timestamp, ToDT timestamp, MachineStageID smallint, IsEdited tinyint, RevisionNo tinyint, StopComments varchar(2048), StartComments varchar(2048), StartLoginID smallint, StopLoginID smallint, OpenedStopDT timestamp, SavedStopDT timestamp, OpenedStartDT timestamp, SavedStartDT timestamp, OriginalLoginID smallint, EditedMachineStopID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/MachineStop'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Part"
echo "##################################################"
echo " "

hive -e "Drop table MES.Part"

hive -e "Create External table IF NOT EXISTS MES.Part (PartID int, PartNumber varchar(508), Description varchar(508), IsRetired tinyint, BaseUnitID smallint, PartTypeID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Variant1 varchar(200), Variant2 varchar(200), Variant3 varchar(200), Variant4 varchar(200), Variant5 varchar(200), Variant6 varchar(200), Variant7 varchar(200), Variant8 varchar(200), Variant9 varchar(200), Variant10 varchar(200), Variant11 varchar(200), Variant12 varchar(200), Variant13 varchar(200), Variant14 varchar(200), Variant15 varchar(200), Variant16 varchar(200), Variant17 varchar(200), Variant18 varchar(200), Variant19 varchar(200), Variant20 varchar(200), TheoreticalSpeed float, LabelsPerInventoryPack smallint, ItemsPerInventoryPack float, ItemsPerLayer float, LayersPerInventoryPack int, PackingCode varchar(100), LabelTemplate varchar(508), ProductionInstructions varchar(2000), QualityInstructions varchar(2000), CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), UnitPrice1 float, UnitPrice2 float, LegacyPartNo varchar(508), CreateDT timestamp, ModifiedDT timestamp, LoginID smallint, PartRevisionNo varchar(100), PartClassificationID smallint, LastPurchaseCost float, AveragePurchaseCost float, StandardPurchaseCost float, StandardManufactureCost float, StandardSaleCost float, PartSubClassificationID smallint, CreatedInvUseByPeriod int, CreatedInvUseAfterPeriod int, Txn_date timestamp, Inventory_Item_Id int, Item_Type_Description varchar(508),  org_id int, org_name varchar(10), Cell_Count varchar(200) , Demand_Category varchar(200) , Series varchar(200) ) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/Part'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table WO"
echo "##################################################"
echo " "

hive -e "Drop table MES.WO"

hive -e "Create External table IF NOT EXISTS MES.WO (WOID int, WONumber varchar(508), RunNo smallint, PartID int, QuantityOrdered float, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDT timestamp, EstimatedStartDT timestamp, EstimatedEndDT timestamp, CustomerID smallint, IsDiscrete tinyint, Reference1 varchar(100), Reference2 varchar(100), Reference3 varchar(100), Reference4 varchar(100), Reference5 varchar(100), WORefID int, CustomerOrderNo varchar(508), LabelsPerInventoryPack smallint, ItemsPerInventoryPack float, ItemsPerLayer float, LayersPerInventoryPack int, PackingCode varchar(100), LabelTemplate varchar(508), LabelColour varchar(100), EANCode char(25), CusStartNum int, CusEndNum int, CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), PrinterURL varchar(2048), BOMVariantID int, BaseWONumber varchar(254), Txn_date timestamp, Wip_Entity_ID int, Alternate_Bom varchar(100), WO_Status varchar(40), IsBtoCto tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/WO'"



echo "Complete"


