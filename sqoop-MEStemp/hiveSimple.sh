#!/bin/bash

echo "#################################################3"
echo " "
date 

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Asset
                else
                 echo "/MEStemp/Asset not present in HDFS"
    fi


sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Asset -m 1 --target-dir /MEStemp/Asset/ --direct  -- --schema dbo --validate


set hive.execution.engine=tez;

hive

CREATE DATABASE IF NOT EXISTS MEStemp;


Create External table IF NOT EXISTS MEStemp.Asset (AssetID int, AssetName varchar(508), RfAssetTypeID smallint, LineID smallint, MachineStageID smallint, ToolID int, GaugeID smallint, PartID int, InventoryPackID int, LocationID int, IsRetired tinyint, CostCentreID smallint, ManufacturerID smallint, SupplierID smallint, AcquiredDT timestamp, PONumber varchar(100), OrderedDT timestamp, ExpectedDeliveryDT timestamp, ExpectedFirstUseDT timestamp, EndUseDT timestamp, EndUseReason varchar(100), PurchaseCost float, DefaultLocationID int, Comments varchar(508),  modcoID int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Asset/';



