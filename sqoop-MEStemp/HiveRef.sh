#!/bin/bash

echo "#################################################3"
echo " "
date 

hadoop fs -test -d /MES
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r -skipTrash /MES/Address
                else
                 echo "/MES not present in HDFS"
    fi

hadoop fs -test -d /MES
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r -skipTrash /MES/BuildRecord
                else
                 echo "/MES not present in HDFS"
    fi


sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table Address -m 1 --target-dir /MES/Address/ --direct  -- --schema dbo --validate

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --table BuildRecord -m 12 --target-dir /MES/BuildRecord/ --direct  -- --schema dbo --validate



set hive.execution.engine=tez;

hive

CREATE DATABASE IF NOT EXISTS MES;

Create External table IF NOT EXISTS MES.Address (AddressID smallint, Address1 varchar(254), Address2 varchar(254), City varchar(50), County varchar(50), PostCode varchar(50), Country varchar(50))row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/Address';


Create External table IF NOT EXISTS MES.BuildRecord (BuildRecordID int, InvPackCreatedID int, InvPackConsumedID int, QuantityUsed decimal, UnitID smallint, BuildDT timestamp, IsEdited tinyint, RevisionNo smallint, BuildMachineStageID smallint)row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MES/BuildRecord';
