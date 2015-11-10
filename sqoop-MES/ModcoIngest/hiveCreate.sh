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
echo "Hive: Drop and Create table U_SPML_ModuleInfo"
echo "##################################################"
echo " "

hive -e "Drop table MES.U_SPML_ModuleInfo"

hive -e "Create External table IF NOT EXISTS MES.U_SPML_ModuleInfo (ModuleInfoID int, SerialNo varchar(508), LaminateID int, LaminateCreatedDT timestamp, LaminateOrderNo varchar(508), LaminatePartNo varchar(508), BINNo varchar(508), CktFormBuildPart varchar(508), CktFormBuildMachine varchar(508), CktFormBuildDT timestamp, GlassBuildPart varchar(508), GlassBuildDate timestamp, LaminationBuildMachine varchar(508), LaminationBuildDT timestamp, ModuleID int, ModuleCreatedDT timestamp, ModuleOrderNo varchar(508), IntendedModulePartNo varchar(508), IntendedModulePartDesc varchar(508), FramingBuildPart varchar(508), FramingBuildMachine varchar(508), FramingBuildDT timestamp, JboxBuildPart varchar(508), JboxBuildDT timestamp, FlashtestClassifiedDT timestamp, FinalModulePartNo varchar(508), FinalModulePartDesc varchar(508), ActualPower float, ActualVocMod float, ActualFF float, PackedDT timestamp, InventoryState varchar(508), JboxBuildMachine varchar(508), ActualIsc float, FlashtestBuildMachine varchar(508), Komax1 varchar(508), Komax2 varchar(508), Komax3 varchar(508), GlassID int, CellType varchar(100), StringerOperator varchar(100), CircuitOperator1 varchar(100), CircuitOperator2 varchar(100), TrimChangeReason varchar(4000), PowerChartGenerated tinyint, LaminateWoId int, ModuleWoId int, VisualStateId smallint, RfInvStateId smallint, ElTestDate timestamp, ElBuildMachine varchar(508), ActualVmpMod float, ActualImpMod float, TrimBuildMachine varchar(508), TrimBuildDT timestamp, CellThickness varchar(508), PalletID bigint, FlashTestID int, PadLock varchar(36), BtoCtoSerialNo varchar(508), EvaUseByDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/U_SPML_ModuleInfo'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table InvChangeState"
echo "##################################################"
echo " "

hive -e "Drop table MES.InvChangeState"

hive -e "Create External table IF NOT EXISTS MES.InvChangeState (InvChangeStateID int, InventoryPackID int, FromDT timestamp, ToDT timestamp, InvIsolatedReasonID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, IsEdited tinyint, RevisionNo tinyint, OriginalLoginID smallint, EditedInvChangeStateID int, InvStateID smallint,  org_id int, org_name varchar(10), Trans_Hours int , ShiftStart_DateTime timestamp ) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InvChangeState'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table InvIsolatedReason"
echo "##################################################"
echo " "

hive -e "Drop table MES.InvIsolatedReason"

hive -e "Create External table IF NOT EXISTS MES.InvIsolatedReason (InvIsolatedReasonID smallint, PartTypeID smallint, IsolatedReason varchar(508), InvStateID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InvIsolatedReason'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table InvState"
echo "##################################################"
echo " "

hive -e "Drop table MES.InvState"

hive -e "Create External table IF NOT EXISTS MES.InvState (InvStateID smallint, InvState varchar(508), Description varchar(508), RfInvStateID smallint, InvStateCode varchar(508), IsAddToProduction tinyint, IsAddToHFI tinyint, IsDefault tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InvState'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table MachineStageType"
echo "##################################################"
echo " "

hive -e "Drop table MES.MachineStageType"

hive -e "Create External table IF NOT EXISTS MES.MachineStageType (MachineStageTypeID smallint, Name varchar(508), Description varchar(508), MachineStageTypeCode varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/MachineStageType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table PartType"
echo "##################################################"
echo " "

hive -e "Drop table MES.PartType"

hive -e "Create External table IF NOT EXISTS MES.PartType (PartTypeID smallint, PartType varchar(508), Description varchar(508), PartTypeCode varchar(100), Variant1TagListID smallint, Variant2TagListID smallint, Variant3TagListID smallint, Variant4TagListID smallint, Variant5TagListID smallint, Variant6TagListID smallint, Variant7TagListID smallint, Variant8TagListID smallint, Variant9TagListID smallint, Variant10TagListID smallint, Variant11TagListID smallint, Variant12TagListID smallint, Variant13TagListID smallint, Variant14TagListID smallint, Variant15TagListID smallint, Variant16TagListID smallint, Variant17TagListID smallint, Variant18TagListID smallint, Variant19TagListID smallint, Variant20TagListID smallint, RfInventoryAccountingModeID tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/PartType'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table ScrapReason"
echo "##################################################"
echo " "

hive -e "Drop table MES.ScrapReason"

hive -e "Create External table IF NOT EXISTS MES.ScrapReason (ScrapReasonID smallint, ScrapReason varchar(100), Description varchar(508), MachineStageTypeID smallint, DefaultUnitID smallint, IsRetired tinyint,  org_id int, org_name varchar(10)) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/ScrapReason'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Supplier"
echo "##################################################"
echo " "

hive -e "Drop table MES.Supplier"

hive -e "Create External table IF NOT EXISTS MES.Supplier (SupplierID smallint, Supplier varchar(508), SupplierCode varchar(508), AddressID smallint,  org_id int, org_name varchar(10)) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Supplier'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Unit"
echo "##################################################"
echo " "

hive -e "Drop table MES.Unit"

hive -e "Create External table IF NOT EXISTS MES.Unit (UnitID smallint, Unit varchar(40), Description varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Unit'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table BuildRecord"
echo "##################################################"
echo " "

hive -e "Drop table MES.BuildRecord"

hive -e "Create External table IF NOT EXISTS MES.BuildRecord (BuildRecordID int, InvPackCreatedID int, InvPackConsumedID int, QuantityUsed float, UnitID smallint, BuildDT timestamp, IsEdited tinyint, RevisionNo smallint, BuildMachineStageID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, EditedBuildRecordID int, OriginalLoginID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int, org_name varchar(10)) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/BuildRecord'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table InventoryPack"
echo "##################################################"
echo " "

hive -e "Drop table MES.InventoryPack"

hive -e "Create External table IF NOT EXISTS MES.InventoryPack (InventoryPackID int, InventoryPackNo varchar(508), WOID int, JobID int, CreatedFromDT timestamp, CreatedToDT timestamp, CreatedOnMachineStageID smallint, IsEdited tinyint, RevisionNo tinyint, PartID int, Quantity float, UnitID smallint, Ignored tinyint, InventoryPackIndex int, CustomerUniqueKey varchar(508), ReceivedDT timestamp, BirthDT timestamp, LastBuildRecordID int, msrepl_tran_version varchar(36), CurrentQuantity float, QuantityAdjustment float, PositionNumber tinyint, LocationID int, InvStateID int, LocationFromDT timestamp, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedInventoryPackID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Reference6 varchar(508), Reference7 varchar(508), Reference8 varchar(508), Reference9 varchar(508), Reference10 varchar(508), SupplierID smallint, SupplierReference varchar(508), UseByDT timestamp, UseAfterDT timestamp, Txn_date timestamp, OracleStatus tinyint, IntendedWOID int, FinalWOID int, OriginalQty float, Seq_Id int, From_Subinventory char(20), From_Locator char(80), To_Subinventory char(20), To_Locator char(80), ScrappedShiftID int, LastInventoryLabelID int, ScrapLocationID int, MachineLocationID int, ScrapReasonID smallint, ModuleInfoID int, ResealedDT timestamp,  org_id int, org_name varchar(10)) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/InventoryPack'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Location"
echo "##################################################"
echo " "

hive -e "Drop table MES.Location"

hive -e "Create External table IF NOT EXISTS MES.Location (LocationID int, Location varchar(508), LocationTypeID smallint, IsRetired tinyint, MaxQuantity float, LocationCode varchar(100), Description varchar(508), LocationType varchar(100), LocationTypeCode varchar(100),  org_id int, org_name varchar(10)) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Location'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table Part"
echo "##################################################"
echo " "

hive -e "Drop table MES.Part"

hive -e "Create External table IF NOT EXISTS MES.Part (PartID int, PartNumber varchar(508), Description varchar(508), IsRetired tinyint, BaseUnitID smallint, PartTypeID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Variant1 varchar(200), Variant2 varchar(200), Variant3 varchar(200), Variant4 varchar(200), Variant5 varchar(200), Variant6 varchar(200), Variant7 varchar(200), Variant8 varchar(200), Variant9 varchar(200), Variant10 varchar(200), Variant11 varchar(200), Variant12 varchar(200), Variant13 varchar(200), Variant14 varchar(200), Variant15 varchar(200), Variant16 varchar(200), Variant17 varchar(200), Variant18 varchar(200), Variant19 varchar(200), Variant20 varchar(200), TheoreticalSpeed float, LabelsPerInventoryPack smallint, ItemsPerInventoryPack float, ItemsPerLayer float, LayersPerInventoryPack int, PackingCode varchar(100), LabelTemplate varchar(508), ProductionInstructions varchar(2000), QualityInstructions varchar(2000), CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), UnitPrice1 float, UnitPrice2 float, LegacyPartNo varchar(508), CreateDT timestamp, ModifiedDT timestamp, LoginID smallint, PartRevisionNo varchar(100), PartClassificationID smallint, LastPurchaseCost float, AveragePurchaseCost float, StandardPurchaseCost float, StandardManufactureCost float, StandardSaleCost float, PartSubClassificationID smallint, CreatedInvUseByPeriod int, CreatedInvUseAfterPeriod int, Txn_date timestamp, Inventory_Item_Id int, Item_Type_Description varchar(508),  org_id int, org_name varchar(10), Cell_Count varchar(200) , Demand_Category varchar(200) , Series varchar(200) ) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Part'"

echo " "
echo "##################################################"
echo "Hive: Drop and Create table WO"
echo "##################################################"
echo " "

hive -e "Drop table MES.WO"

hive -e "Create External table IF NOT EXISTS MES.WO (WOID int, WONumber varchar(508), RunNo smallint, PartID int, QuantityOrdered float, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDT timestamp, EstimatedStartDT timestamp, EstimatedEndDT timestamp, CustomerID smallint, IsDiscrete tinyint, Reference1 varchar(100), Reference2 varchar(100), Reference3 varchar(100), Reference4 varchar(100), Reference5 varchar(100), WORefID int, CustomerOrderNo varchar(508), LabelsPerInventoryPack smallint, ItemsPerInventoryPack float, ItemsPerLayer float, LayersPerInventoryPack int, PackingCode varchar(100), LabelTemplate varchar(508), LabelColour varchar(100), EANCode char(25), CusStartNum int, CusEndNum int, CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), PrinterURL varchar(2048), BOMVariantID int,  org_id int, org_name varchar(10)) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/WO'"



echo "Complete"


