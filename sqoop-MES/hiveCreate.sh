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
echo "Hive: Conditionally create table U_SPML_ModuleInfo"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.U_SPML_ModuleInfo (ModuleInfoID int, SerialNo varchar(508), LaminateID int, LaminateCreatedDT timestamp, LaminateOrderNo varchar(508), LaminatePartNo varchar(508), BINNo varchar(508), CktFormBuildPart varchar(508), CktFormBuildMachine varchar(508), CktFormBuildDT timestamp, GlassBuildPart varchar(508), GlassBuildDate timestamp, LaminationBuildMachine varchar(508), LaminationBuildDT timestamp, ModuleID int, ModuleCreatedDT timestamp, ModuleOrderNo varchar(508), IntendedModulePartNo varchar(508), IntendedModulePartDesc varchar(508), FramingBuildPart varchar(508), FramingBuildMachine varchar(508), FramingBuildDT timestamp, JboxBuildPart varchar(508), JboxBuildDT timestamp, FlashtestClassifiedDT timestamp, FinalModulePartNo varchar(508), FinalModulePartDesc varchar(508), ActualPower float, ActualVocMod float, ActualFF float, PackedDT timestamp, InventoryState varchar(508), JboxBuildMachine varchar(508), ActualIsc float, FlashtestBuildMachine varchar(508), Komax1 varchar(508), Komax2 varchar(508), Komax3 varchar(508), GlassID int, CellType varchar(100), StringerOperator varchar(100), CircuitOperator1 varchar(100), CircuitOperator2 varchar(100), TrimChangeReason varchar(4000), PowerChartGenerated tinyint, LaminateWoId int, ModuleWoId int, VisualStateId smallint, RfInvStateId smallint, ElTestDate timestamp, ElBuildMachine varchar(508), ActualVmpMod float, ActualImpMod float, TrimBuildMachine varchar(508), TrimBuildDT timestamp, CellThickness varchar(508), PalletID bigint, FlashTestID int, PadLock varchar(36), BtoCtoSerialNo varchar(508), EvaUseByDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/U_SPML_ModuleInfo'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Department"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.Department (DepartmentID smallint, Name varchar(508), DepartmentGroup varchar(508), Classification1 varchar(100), PlantID smallint, DepartmentCode varchar(100), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Department'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InvChangeState"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.InvChangeState (InvChangeStateID int, InventoryPackID int, FromDT timestamp, ToDT timestamp, InvIsolatedReasonID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, IsEdited tinyint, RevisionNo tinyint, OriginalLoginID smallint, EditedInvChangeStateID int, InvStateID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InvChangeState'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InvIsolatedReason"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.InvIsolatedReason (InvIsolatedReasonID smallint, PartTypeID smallint, IsolatedReason varchar(508), InvStateID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InvIsolatedReason'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InvState"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.InvState (InvStateID smallint, InvState varchar(508), Description varchar(508), RfInvStateID smallint, InvStateCode varchar(508), IsAddToProduction tinyint, IsAddToHFI tinyint, IsDefault tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InvState'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.LineGroup (LineGroupID smallint, LineGroup varchar(100), LineGroupCode varchar(100), Description varchar(508), OEETarget float, WasteTarget float, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/LineGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineInfo"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.LineInfo (LineInfoID int, RfLineInfoEventID tinyint, LineID smallint, ShiftID int, WOID int, FromDT timestamp, ToDT timestamp, rfDayHourPeriodID int, TotalTime int, ExcludedTime int, ScheduledTime int, STOperations int, STInduced int, DTTechnical int, DTOperations int, DTQuality int, DownTime int, StopTime int, RunTime int, NotRunTime int, TheoreticalCycleTime float, QuantityScrap float, QuantityGood float, ModifiedDT timestamp, LoginID smallint, QuantityIn float, TotalInventoryProduced float, TotalInventoryReintroduced float, NetQuantityProduced float, QuantityInLineSpoilage float, TotalSpoilage float, AccountedSpoilage float, TotalInventoryIsolated float, ProductionStopJobID int, TotalUnitsProduced float, BottleNeckMachineStageID smallint, InventoryIn int, InterProdStopTime int, InProdStopTime int, QuantityUnitsIn float, QuantityInventoryIn float, TotalQuantityProduced float, TotalPacksProduced int, TotalPacksIsolated int, TotalPacksReintroduced int, TotalPacksMade int, ValidState tinyint, LineGroupID smallint, LineGroupShiftID int, LineGroupBottleneckID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/LineInfo'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineSection"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.LineSection (LineSectionID smallint, LineSection varchar(508), Description varchar(508), IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/LineSection'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.LineType (LineTypeID smallint, LineType varchar(508), Description varchar(508), IsRetired tinyint, LineInfoPrecedence tinyint, BudgetChangeOver int, BudgetEfficiency float,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/LineType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStageType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.MachineStageType (MachineStageTypeID smallint, Name varchar(508), Description varchar(508), MachineStageTypeCode varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/MachineStageType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStopCategory"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.MachineStopCategory (MachineStopCategoryID smallint, MachineStopCategory varchar(508), Description varchar(508), MachineStageTypeID smallint, StopCategoryCode varchar(100), DisplayOrder smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/MachineStopCategory'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStopReason"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.MachineStopReason (MachineStopReasonID smallint, StopReason varchar(508), Description varchar(508), MachineStageTypeID smallint, IsPlanned tinyint, StopCode varchar(100), RfMachineStopClassID tinyint, RfLineStopReasonTypeID smallint, MachineStopCategoryID smallint, IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/MachineStopReason'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Operation"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.Operation (OperationID int, OperationTypeID smallint, MachineStageID smallint, JobID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Operation'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OperationType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.OperationType (OperationTypeID smallint, OperationType varchar(508), OperationTypeCode varchar(100), Description varchar(508), PartTypeID smallint, Sequence smallint, IsOptional tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/OperationType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartClassification"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.PartClassification (PartClassificationID smallint, PartClassification varchar(508), RfPartClassificationID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/PartClassification'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartSubClassification"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.PartSubClassification (PartSubClassificationID smallint, PartSubClassification varchar(508), PartClassificationID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/PartSubClassification'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.PartType (PartTypeID smallint, PartType varchar(508), Description varchar(508), PartTypeCode varchar(100), Variant1TagListID smallint, Variant2TagListID smallint, Variant3TagListID smallint, Variant4TagListID smallint, Variant5TagListID smallint, Variant6TagListID smallint, Variant7TagListID smallint, Variant8TagListID smallint, Variant9TagListID smallint, Variant10TagListID smallint, Variant11TagListID smallint, Variant12TagListID smallint, Variant13TagListID smallint, Variant14TagListID smallint, Variant15TagListID smallint, Variant16TagListID smallint, Variant17TagListID smallint, Variant18TagListID smallint, Variant19TagListID smallint, Variant20TagListID smallint, RfInventoryAccountingModeID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/PartType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ScrapReason"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.ScrapReason (ScrapReasonID smallint, ScrapReason varchar(100), Description varchar(508), MachineStageTypeID smallint, DefaultUnitID smallint, IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/ScrapReason'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Supplier"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.Supplier (SupplierID smallint, Supplier varchar(508), SupplierCode varchar(508), AddressID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Supplier'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagList"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.TagList (TagListID smallint, ListName varchar(100), VariantNo tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/TagList'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Unit"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.Unit (UnitID smallint, Unit varchar(40), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Unit'"


echo " "
echo "##################################################"
echo "Hive: Conditionally create table BuildRecordALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.BuildRecordALL (BuildRecordID int, InvPackCreatedID int, InvPackConsumedID int, QuantityUsed float, UnitID smallint, BuildDT timestamp, IsEdited tinyint, RevisionNo smallint, BuildMachineStageID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, EditedBuildRecordID int, OriginalLoginID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/BuildRecordALL'"


echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryLabelALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.InventoryLabelALL (InventoryLabelID int, MachineStage varchar(508), PartNumber varchar(508), PartType varchar(508), QuantityOrdered float, WONumber varchar(508), InventoryPackNo varchar(508), CreatedFromDT timestamp, Quantity float, Unit varchar(40), Line varchar(508), LabelTemplate varchar(508), LabelsPerInventoryPack smallint, ItemsPerLayer float, LayersPerInventoryPack int, PrinterURL varchar(2048), PrintedDT timestamp, ItemsPerInventoryPack float, ScannedDT timestamp, IsCancelled tinyint, OrderQuantityPacks int, LineShortName varchar(100), PackNo int, IsReprint tinyint, PartDescription varchar(508), LabelSaveDirectory varchar(508), JobID int, IsPrintLandscape tinyint, NoCopies smallint, LabelColour varchar(50), EANCode varchar(20), CusNum int, PackingCode varchar(100), CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), Customer varchar(508), Address1 varchar(508), Address2 varchar(508), City varchar(50), County varchar(50), PostCode varchar(50), Country varchar(50), InventoryPackID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InventoryLabelALL'"


echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryPackALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.InventoryPackALL (InventoryPackID int, InventoryPackNo varchar(508), WOID int, JobID int, CreatedFromDT timestamp, CreatedToDT timestamp, CreatedOnMachineStageID smallint, IsEdited tinyint, RevisionNo tinyint, PartID int, Quantity float, UnitID smallint, Ignored tinyint, InventoryPackIndex int, CustomerUniqueKey varchar(508), ReceivedDT timestamp, BirthDT timestamp, LastBuildRecordID int, msrepl_tran_version varchar(36), CurrentQuantity float, QuantityAdjustment float, PositionNumber tinyint, LocationID int, InvStateID int, LocationFromDT timestamp, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedInventoryPackID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Reference6 varchar(508), Reference7 varchar(508), Reference8 varchar(508), Reference9 varchar(508), Reference10 varchar(508), SupplierID smallint, SupplierReference varchar(508), UseByDT timestamp, UseAfterDT timestamp, Txn_date timestamp, OracleStatus tinyint, IntendedWOID int, FinalWOID int, OriginalQty float, Seq_Id int, From_Subinventory char(20), From_Locator char(80), To_Subinventory char(20), To_Locator char(80), ScrappedShiftID int, LastInventoryLabelID int, ScrapLocationID int, MachineLocationID int, ScrapReasonID smallint, ModuleInfoID int, ResealedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InventoryPackALL'"


echo " "
echo "##################################################"
echo "Hive: Conditionally create table JobALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.JobALL (JobID int, WOID int, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDT timestamp, PlannedDuration float, EstimatedStartDT timestamp, EstimatedEndDT timestamp, EstimatedDuration float, ScheduledSequence smallint, LineID smallint, ProductionStartDT timestamp, ProductionEndDT timestamp, TheoreticalCycleTime float, BudgetChangeOver int, QuantityOrdered float, IsCalculated tinyint, LineGroupID smallint, JobInstructions varchar(2048), ReleaseDT timestamp, ReleaseLoginID smallint, StartLoginID smallint, EndLoginID smallint, Comments varchar(2000), ModifiedDt timestamp, ModifiedLoginID smallint, StoppedReason varchar(508), SkippedReason varchar(508), SkippedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/JobALL'"


echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.LineALL (LineID smallint, Line varchar(508), Description varchar(508), LineTypeID smallint, IsRetired tinyint, RfIntervalModeID tinyint, IsOEEInventoryIsolation tinyint, IsOEEInventoryReintroduction tinyint, IsCountOutputInventory tinyint, IsCountInputInventory tinyint, IsLineInfoSweepEnabled tinyint, IsWOOnSingleJob tinyint, LineShortName varchar(100), CurrentLineInfoID int, LastLineInfoID int, RfInvCreatedDateModeID tinyint, RfEndJobInvModeID tinyint, CurrentJobID int, IsScrapAsQualityLoss tinyint, IsScrapInProductionCounts tinyint, LineDownCostPerHour float, IsContributeLineGroupOutput tinyint, IsContributeLineGroupWaste tinyint, IsContributeLineGroupDowntime tinyint, OEETarget float, WasteTarget float, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/LineALL'"


echo " "
echo "##################################################"
echo "Hive: Conditionally create table LocationALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.LocationALL (LocationID int, Location varchar(508), LocationTypeID smallint, IsRetired tinyint, MaxQuantity float, LocationCode varchar(100), Description varchar(508), LocationType varchar(100), LocationTypeCode varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/LocationALL'"


echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStageALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.MachineStageALL (MachineStageID smallint, MachineStageTypeID smallint, Name varchar(508), IsRetired tinyint, DepartmentID smallint, Description varchar(508), CurrentShiftPatternID smallint, NoHeads smallint, IsOEEBottleNeck tinyint, IsProductionOutput tinyint, MachineStopID int, StoppedScreenThreshold smallint, LineSectionID smallint, IsDiscrete tinyint, RfDowntimeCollectionModeID tinyint, RfSpoilageCollectionModeID tinyint, RfProductionCollectionModeID tinyint, LastBuildRecordID int, CurrentJobID int, ModuleDatabase varchar(100), IntendedWOID int, MachineStageCode varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/MachineStageALL'"


echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStopALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.MachineStopALL (MachineStopID int, MachineStopReasonID smallint, FromDT timestamp, ToDT timestamp, MachineStageID smallint, IsEdited tinyint, RevisionNo tinyint, StopComments varchar(2048), StartComments varchar(2048), StartLoginID smallint, StopLoginID smallint, OpenedStopDT timestamp, SavedStopDT timestamp, OpenedStartDT timestamp, SavedStartDT timestamp, OriginalLoginID smallint, EditedMachineStopID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/MachineStopALL'"


echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.PartALL (PartID int, PartNumber varchar(508), Description varchar(508), IsRetired tinyint, BaseUnitID smallint, PartTypeID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Variant1 varchar(200), Variant2 varchar(200), Variant3 varchar(200), Variant4 varchar(200), Variant5 varchar(200), Variant6 varchar(200), Variant7 varchar(200), Variant8 varchar(200), Variant9 varchar(200), Variant10 varchar(200), Variant11 varchar(200), Variant12 varchar(200), Variant13 varchar(200), Variant14 varchar(200), Variant15 varchar(200), Variant16 varchar(200), Variant17 varchar(200), Variant18 varchar(200), Variant19 varchar(200), Variant20 varchar(200), TheoreticalSpeed float, LabelsPerInventoryPack smallint, ItemsPerInventoryPack float, ItemsPerLayer float, LayersPerInventoryPack int, PackingCode varchar(100), LabelTemplate varchar(508), ProductionInstructions varchar(2000), QualityInstructions varchar(2000), CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), UnitPrice1 float, UnitPrice2 float, LegacyPartNo varchar(508), CreateDT timestamp, ModifiedDT timestamp, LoginID smallint, PartRevisionNo varchar(100), PartClassificationID smallint, LastPurchaseCost float, AveragePurchaseCost float, StandardPurchaseCost float, StandardManufactureCost float, StandardSaleCost float, PartSubClassificationID smallint, CreatedInvUseByPeriod int, CreatedInvUseAfterPeriod int, Txn_date timestamp, Inventory_Item_Id int, Item_Type_Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/PartALL'"


echo " "
echo "##################################################"
echo "Hive: Conditionally create table WOALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MES.WOALL (WOID int, WONumber varchar(508), RunNo smallint, PartID int, QuantityOrdered float, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDT timestamp, EstimatedStartDT timestamp, EstimatedEndDT timestamp, CustomerID smallint, IsDiscrete tinyint, Reference1 varchar(100), Reference2 varchar(100), Reference3 varchar(100), Reference4 varchar(100), Reference5 varchar(100), WORefID int, CustomerOrderNo varchar(508), LabelsPerInventoryPack smallint, ItemsPerInventoryPack float, ItemsPerLayer float, LayersPerInventoryPack int, PackingCode varchar(100), LabelTemplate varchar(508), LabelColour varchar(100), EANCode char(25), CusStartNum int, CusEndNum int, CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), PrinterURL varchar(2048), BOMVariantID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/WOALL'"



echo "Complete"


