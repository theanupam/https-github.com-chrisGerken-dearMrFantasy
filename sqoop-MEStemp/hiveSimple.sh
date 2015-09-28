#!/bin/bash

echo "##################################################"
echo " "
date 

hadoop fs -test -d /MEStemp
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r -skipTrash /MEStemp
                else
                 echo "/MEStemp not present in HDFS"
    fi

echo " "
echo "##################################################"
echo "sqoop: BuildRecord "
echo "##################################################"
echo " "

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT BuildRecordID,InvPackCreatedID,InvPackConsumedID,QuantityUsed,UnitID,BuildDT,IsEdited,RevisionNo,BuildMachineStageID, 1 as \"org_id\"  FROM dbo.BuildRecord WHERE \$CONDITIONS" --split-by BuildRecordID  --num-mappers 8 --target-dir /MEStemp/BuildRecord/1 --direct  -- --schema dbo --validate

echo " "
echo "##################################################"
echo "sqoop: Address "
echo "##################################################"
echo " "

sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username app_MES_ReadOnlyUserMX --password X2{01_p7gyltm --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 1 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/1 --direct  -- --schema dbo --validate


set hive.execution.engine=tez;
echo " "
echo "##################################################"
echo "Hive: Conditionally create data base MEStemp
echo "##################################################"
echo " "

hive -e "CREATE DATABASE IF NOT EXISTS MEStemp\"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table BuildRecord
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.BuildRecord (BuildRecordID int, InvPackCreatedID int, InvPackConsumedID int, QuantityUsed float, UnitID smallint, BuildDT timestamp, IsEdited tinyint, RevisionNo smallint, BuildMachineStageID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/BuildRecord'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Address
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Address (AddressID smallint, Address1 varchar(508), Address2 varchar(508), City varchar(100), County varchar(100), PostCode varchar(100), Country varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Address'"



quit;