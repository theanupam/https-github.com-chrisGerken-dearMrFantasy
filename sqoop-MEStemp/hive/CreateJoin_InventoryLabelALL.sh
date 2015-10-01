#!/bin/bash


set hive.execution.engine=tez;

hive -e "Create External table IF NOT EXISTS MEStemp.InventoryLabelALL (InventoryLabelID int, MachineStage varchar(508), PartNumber varchar(508), PartType varchar(508), QuantityOrdered float, WONumber varchar(508), InventoryPackNo varchar(508), CreatedFromDT timestamp, Quantity float, Unit varchar(40), Line varchar(508), LabelTemplate varchar(508), LabelsPerInventoryPack smallint, ItemsPerLayer float, LayersPerInventoryPack int, PrinterURL varchar(2048), PrintedDT timestamp, ItemsPerInventoryPack float, ScannedDT timestamp, IsCancelled tinyint, OrderQuantityPacks int, LineShortName varchar(100), PackNo int, IsReprint tinyint, PartDescription varchar(508), LabelSaveDirectory varchar(508), JobID int, IsPrintLandscape tinyint, NoCopies smallint, LabelColour varchar(50), EANCode varchar(20), CusNum int, PackingCode varchar(100), CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), Customer varchar(508), Address1 varchar(508), Address2 varchar(508), City varchar(50), County varchar(50), PostCode varchar(50), Country varchar(50), InventoryPackID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InventoryLabelALL'"

