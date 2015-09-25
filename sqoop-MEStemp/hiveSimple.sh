#!/bin/bash

echo "#################################################3"
echo " "
date 

hadoop fs -test -d /MEStemp
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r -skipTrash /MEStemp
                else
                 echo "/MEStemp not present in HDFS"
    fi

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query 'SELECT AssetID,AssetName,RfAssetTypeID,LineID,MachineStageID,ToolID,GaugeID,PartID,InventoryPackID,LocationID,IsRetired,CostCentreID,ManufacturerID,SupplierID,AcquiredDT,PONumber,OrderedDT,ExpectedDeliveryDT,ExpectedFirstUseDT,EndUseDT,EndUseReason,PurchaseCost,DefaultLocationID,Comments, 1 as "org_id"  FROM MEStemp.Asset WHERE $CONDITIONS' --split-by Asset.AssetID  -m 1 --target-dir /MEStemp/Asset/1 --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query 'SELECT BuildRecordID,InvPackCreatedID,InvPackConsumedID,QuantityUsed,UnitID,BuildDT,IsEdited,RevisionNo,BuildMachineStageID, 1 as "org_id"  FROM MEStemp.BuildRecord WHERE $CONDITIONS' --split-by BuildRecord.BuildRecordID  -m 15 --target-dir /MEStemp/BuildRecord/1 --direct  -- --schema dbo --validate


set hive.execution.engine=tez;

hive

CREATE DATABASE IF NOT EXISTS MEStemp;


Create External table IF NOT EXISTS MEStemp.Asset (AssetID int, AssetName varchar(508), RfAssetTypeID smallint, LineID smallint, MachineStageID smallint, ToolID int, GaugeID smallint, PartID int, InventoryPackID int, LocationID int, IsRetired tinyint, CostCentreID smallint, ManufacturerID smallint, SupplierID smallint, AcquiredDT timestamp, PONumber varchar(100), OrderedDT timestamp, ExpectedDeliveryDT timestamp, ExpectedFirstUseDT timestamp, EndUseDT timestamp, EndUseReason varchar(100), PurchaseCost float, DefaultLocationID int, Comments varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Asset/';


Create External table IF NOT EXISTS MEStemp.BuildRecord (BuildRecordID int, InvPackCreatedID int, InvPackConsumedID int, QuantityUsed float, UnitID smallint, BuildDT timestamp, IsEdited tinyint, RevisionNo smallint, BuildMachineStageID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/BuildRecord/';



