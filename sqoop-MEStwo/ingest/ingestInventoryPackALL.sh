#!/bin/bash

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryPack.InventoryPackID, InventoryPack.InventoryPackNo, InventoryPack.WOID, InventoryPack.JobID, InventoryPack.CreatedFromDT, InventoryPack.CreatedToDT, InventoryPack.CreatedOnMachineStageID, InventoryPack.IsEdited, InventoryPack.RevisionNo, InventoryPack.PartID, InventoryPack.Quantity, InventoryPack.UnitID, InventoryPack.Ignored, InventoryPack.InventoryPackIndex, InventoryPack.CustomerUniqueKey, InventoryPack.ReceivedDT, InventoryPack.BirthDT, InventoryPack.LastBuildRecordID, InventoryPack.msrepl_tran_version, InventoryPack.CurrentQuantity, InventoryPack.QuantityAdjustment, InventoryPack.PositionNumber, InventoryPack.LocationID, InventoryPack.InvStateID, InventoryPack.LocationFromDT, InventoryPack_.Comments, InventoryPack_.LoginID, InventoryPack_.OpenedDT, InventoryPack_.SavedDT, InventoryPack_.OriginalLoginID, InventoryPack_.EditedInventoryPackID, InventoryPack_.Reference1, InventoryPack_.Reference2, InventoryPack_.Reference3, InventoryPack_.Reference4, InventoryPack_.Reference5, InventoryPack_.Reference6, InventoryPack_.Reference7, InventoryPack_.Reference8, InventoryPack_.Reference9, InventoryPack_.Reference10, InventoryPack_.SupplierID, InventoryPack_.SupplierReference, InventoryPack_.UseByDT, InventoryPack_.UseAfterDT, InventoryPack_Custom.Txn_date, InventoryPack_Custom.OracleStatus, InventoryPack_Custom.IntendedWOID, InventoryPack_Custom.FinalWOID, InventoryPack_Custom.OriginalQty, InventoryPack_Custom.Seq_Id, InventoryPack_Custom.From_Subinventory, InventoryPack_Custom.From_Locator, InventoryPack_Custom.To_Subinventory, InventoryPack_Custom.To_Locator, InventoryPack_Custom.ScrappedShiftID, InventoryPack_Custom.LastInventoryLabelID, InventoryPack_Custom.ScrapLocationID, InventoryPack_Custom.MachineLocationID, InventoryPack_Custom.ScrapReasonID, InventoryPack_Custom.ModuleInfoID, InventoryPack_Custom.ResealedDT,  1 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack.InventoryPackID = InventoryPack_.InventoryPackID) FULL JOIN InventoryPack_Custom ON (InventoryPack.InventoryPackID = InventoryPack_Custom.InventoryPackId)   WHERE \$CONDITIONS" --split-by InventoryPack.InventoryPackID --num-mappers 600  --target-dir /MEStwo/InventoryPackALL/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryPack.InventoryPackID, InventoryPack.InventoryPackNo, InventoryPack.WOID, InventoryPack.JobID, InventoryPack.CreatedFromDT, InventoryPack.CreatedToDT, InventoryPack.CreatedOnMachineStageID, InventoryPack.IsEdited, InventoryPack.RevisionNo, InventoryPack.PartID, InventoryPack.Quantity, InventoryPack.UnitID, InventoryPack.Ignored, InventoryPack.InventoryPackIndex, InventoryPack.CustomerUniqueKey, InventoryPack.ReceivedDT, InventoryPack.BirthDT, InventoryPack.LastBuildRecordID, InventoryPack.msrepl_tran_version, InventoryPack.CurrentQuantity, InventoryPack.QuantityAdjustment, InventoryPack.PositionNumber, InventoryPack.LocationID, InventoryPack.InvStateID, InventoryPack.LocationFromDT, InventoryPack_.Comments, InventoryPack_.LoginID, InventoryPack_.OpenedDT, InventoryPack_.SavedDT, InventoryPack_.OriginalLoginID, InventoryPack_.EditedInventoryPackID, InventoryPack_.Reference1, InventoryPack_.Reference2, InventoryPack_.Reference3, InventoryPack_.Reference4, InventoryPack_.Reference5, InventoryPack_.Reference6, InventoryPack_.Reference7, InventoryPack_.Reference8, InventoryPack_.Reference9, InventoryPack_.Reference10, InventoryPack_.SupplierID, InventoryPack_.SupplierReference, InventoryPack_.UseByDT, InventoryPack_.UseAfterDT, InventoryPack_Custom.Txn_date, InventoryPack_Custom.OracleStatus, InventoryPack_Custom.IntendedWOID, InventoryPack_Custom.FinalWOID, InventoryPack_Custom.OriginalQty, InventoryPack_Custom.Seq_Id, InventoryPack_Custom.From_Subinventory, InventoryPack_Custom.From_Locator, InventoryPack_Custom.To_Subinventory, InventoryPack_Custom.To_Locator, InventoryPack_Custom.ScrappedShiftID, InventoryPack_Custom.LastInventoryLabelID, InventoryPack_Custom.ScrapLocationID, InventoryPack_Custom.MachineLocationID, InventoryPack_Custom.ScrapReasonID, InventoryPack_Custom.ModuleInfoID, InventoryPack_Custom.ResealedDT,  2 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack.InventoryPackID = InventoryPack_.InventoryPackID) FULL JOIN InventoryPack_Custom ON (InventoryPack.InventoryPackID = InventoryPack_Custom.InventoryPackId)   WHERE \$CONDITIONS" --split-by InventoryPack.InventoryPackID --num-mappers 600  --target-dir /MEStwo/InventoryPackALL/2 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryPack.InventoryPackID, InventoryPack.InventoryPackNo, InventoryPack.WOID, InventoryPack.JobID, InventoryPack.CreatedFromDT, InventoryPack.CreatedToDT, InventoryPack.CreatedOnMachineStageID, InventoryPack.IsEdited, InventoryPack.RevisionNo, InventoryPack.PartID, InventoryPack.Quantity, InventoryPack.UnitID, InventoryPack.Ignored, InventoryPack.InventoryPackIndex, InventoryPack.CustomerUniqueKey, InventoryPack.ReceivedDT, InventoryPack.BirthDT, InventoryPack.LastBuildRecordID, InventoryPack.msrepl_tran_version, InventoryPack.CurrentQuantity, InventoryPack.QuantityAdjustment, InventoryPack.PositionNumber, InventoryPack.LocationID, InventoryPack.InvStateID, InventoryPack.LocationFromDT, InventoryPack_.Comments, InventoryPack_.LoginID, InventoryPack_.OpenedDT, InventoryPack_.SavedDT, InventoryPack_.OriginalLoginID, InventoryPack_.EditedInventoryPackID, InventoryPack_.Reference1, InventoryPack_.Reference2, InventoryPack_.Reference3, InventoryPack_.Reference4, InventoryPack_.Reference5, InventoryPack_.Reference6, InventoryPack_.Reference7, InventoryPack_.Reference8, InventoryPack_.Reference9, InventoryPack_.Reference10, InventoryPack_.SupplierID, InventoryPack_.SupplierReference, InventoryPack_.UseByDT, InventoryPack_.UseAfterDT, InventoryPack_Custom.Txn_date, InventoryPack_Custom.OracleStatus, InventoryPack_Custom.IntendedWOID, InventoryPack_Custom.FinalWOID, InventoryPack_Custom.OriginalQty, InventoryPack_Custom.Seq_Id, InventoryPack_Custom.From_Subinventory, InventoryPack_Custom.From_Locator, InventoryPack_Custom.To_Subinventory, InventoryPack_Custom.To_Locator, InventoryPack_Custom.ScrappedShiftID, InventoryPack_Custom.LastInventoryLabelID, InventoryPack_Custom.ScrapLocationID, InventoryPack_Custom.MachineLocationID, InventoryPack_Custom.ScrapReasonID, InventoryPack_Custom.ModuleInfoID, InventoryPack_Custom.ResealedDT,  3 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack.InventoryPackID = InventoryPack_.InventoryPackID) FULL JOIN InventoryPack_Custom ON (InventoryPack.InventoryPackID = InventoryPack_Custom.InventoryPackId)   WHERE \$CONDITIONS" --split-by InventoryPack.InventoryPackID --num-mappers 600  --target-dir /MEStwo/InventoryPackALL/3 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryPack.InventoryPackID, InventoryPack.InventoryPackNo, InventoryPack.WOID, InventoryPack.JobID, InventoryPack.CreatedFromDT, InventoryPack.CreatedToDT, InventoryPack.CreatedOnMachineStageID, InventoryPack.IsEdited, InventoryPack.RevisionNo, InventoryPack.PartID, InventoryPack.Quantity, InventoryPack.UnitID, InventoryPack.Ignored, InventoryPack.InventoryPackIndex, InventoryPack.CustomerUniqueKey, InventoryPack.ReceivedDT, InventoryPack.BirthDT, InventoryPack.LastBuildRecordID, InventoryPack.msrepl_tran_version, InventoryPack.CurrentQuantity, InventoryPack.QuantityAdjustment, InventoryPack.PositionNumber, InventoryPack.LocationID, InventoryPack.InvStateID, InventoryPack.LocationFromDT, InventoryPack_.Comments, InventoryPack_.LoginID, InventoryPack_.OpenedDT, InventoryPack_.SavedDT, InventoryPack_.OriginalLoginID, InventoryPack_.EditedInventoryPackID, InventoryPack_.Reference1, InventoryPack_.Reference2, InventoryPack_.Reference3, InventoryPack_.Reference4, InventoryPack_.Reference5, InventoryPack_.Reference6, InventoryPack_.Reference7, InventoryPack_.Reference8, InventoryPack_.Reference9, InventoryPack_.Reference10, InventoryPack_.SupplierID, InventoryPack_.SupplierReference, InventoryPack_.UseByDT, InventoryPack_.UseAfterDT, InventoryPack_Custom.Txn_date, InventoryPack_Custom.OracleStatus, InventoryPack_Custom.IntendedWOID, InventoryPack_Custom.FinalWOID, InventoryPack_Custom.OriginalQty, InventoryPack_Custom.Seq_Id, InventoryPack_Custom.From_Subinventory, InventoryPack_Custom.From_Locator, InventoryPack_Custom.To_Subinventory, InventoryPack_Custom.To_Locator, InventoryPack_Custom.ScrappedShiftID, InventoryPack_Custom.LastInventoryLabelID, InventoryPack_Custom.ScrapLocationID, InventoryPack_Custom.MachineLocationID, InventoryPack_Custom.ScrapReasonID, InventoryPack_Custom.ModuleInfoID, InventoryPack_Custom.ResealedDT,  4 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack.InventoryPackID = InventoryPack_.InventoryPackID) FULL JOIN InventoryPack_Custom ON (InventoryPack.InventoryPackID = InventoryPack_Custom.InventoryPackId)   WHERE \$CONDITIONS" --split-by InventoryPack.InventoryPackID --num-mappers 600  --target-dir /MEStwo/InventoryPackALL/4 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryPack.InventoryPackID, InventoryPack.InventoryPackNo, InventoryPack.WOID, InventoryPack.JobID, InventoryPack.CreatedFromDT, InventoryPack.CreatedToDT, InventoryPack.CreatedOnMachineStageID, InventoryPack.IsEdited, InventoryPack.RevisionNo, InventoryPack.PartID, InventoryPack.Quantity, InventoryPack.UnitID, InventoryPack.Ignored, InventoryPack.InventoryPackIndex, InventoryPack.CustomerUniqueKey, InventoryPack.ReceivedDT, InventoryPack.BirthDT, InventoryPack.LastBuildRecordID, InventoryPack.msrepl_tran_version, InventoryPack.CurrentQuantity, InventoryPack.QuantityAdjustment, InventoryPack.PositionNumber, InventoryPack.LocationID, InventoryPack.InvStateID, InventoryPack.LocationFromDT, InventoryPack_.Comments, InventoryPack_.LoginID, InventoryPack_.OpenedDT, InventoryPack_.SavedDT, InventoryPack_.OriginalLoginID, InventoryPack_.EditedInventoryPackID, InventoryPack_.Reference1, InventoryPack_.Reference2, InventoryPack_.Reference3, InventoryPack_.Reference4, InventoryPack_.Reference5, InventoryPack_.Reference6, InventoryPack_.Reference7, InventoryPack_.Reference8, InventoryPack_.Reference9, InventoryPack_.Reference10, InventoryPack_.SupplierID, InventoryPack_.SupplierReference, InventoryPack_.UseByDT, InventoryPack_.UseAfterDT, InventoryPack_Custom.Txn_date, InventoryPack_Custom.OracleStatus, InventoryPack_Custom.IntendedWOID, InventoryPack_Custom.FinalWOID, InventoryPack_Custom.OriginalQty, InventoryPack_Custom.Seq_Id, InventoryPack_Custom.From_Subinventory, InventoryPack_Custom.From_Locator, InventoryPack_Custom.To_Subinventory, InventoryPack_Custom.To_Locator, InventoryPack_Custom.ScrappedShiftID, InventoryPack_Custom.LastInventoryLabelID, InventoryPack_Custom.ScrapLocationID, InventoryPack_Custom.MachineLocationID, InventoryPack_Custom.ScrapReasonID, InventoryPack_Custom.ModuleInfoID, InventoryPack_Custom.ResealedDT,  5 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack.InventoryPackID = InventoryPack_.InventoryPackID) FULL JOIN InventoryPack_Custom ON (InventoryPack.InventoryPackID = InventoryPack_Custom.InventoryPackId)   WHERE \$CONDITIONS" --split-by InventoryPack.InventoryPackID --num-mappers 600  --target-dir /MEStwo/InventoryPackALL/5 --direct  -- --schema dbo --validate

set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStwo.InventoryPackALL (InventoryPackID int, InventoryPackNo varchar(508), WOID int, JobID int, CreatedFromDT timestamp, CreatedToDT timestamp, CreatedOnMachineStageID smallint, IsEdited tinyint, RevisionNo tinyint, PartID int, Quantity float, UnitID smallint, Ignored tinyint, InventoryPackIndex int, CustomerUniqueKey varchar(508), ReceivedDT timestamp, BirthDT timestamp, LastBuildRecordID int, msrepl_tran_version varchar(36), CurrentQuantity float, QuantityAdjustment float, PositionNumber tinyint, LocationID int, InvStateID int, LocationFromDT timestamp, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedInventoryPackID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Reference6 varchar(508), Reference7 varchar(508), Reference8 varchar(508), Reference9 varchar(508), Reference10 varchar(508), SupplierID smallint, SupplierReference varchar(508), UseByDT timestamp, UseAfterDT timestamp, Txn_date timestamp, OracleStatus tinyint, IntendedWOID int, FinalWOID int, OriginalQty float, Seq_Id int, From_Subinventory char(20), From_Locator char(80), To_Subinventory char(20), To_Locator char(80), ScrappedShiftID int, LastInventoryLabelID int, ScrapLocationID int, MachineLocationID int, ScrapReasonID smallint, ModuleInfoID int, ResealedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/InventoryPackALL'"

