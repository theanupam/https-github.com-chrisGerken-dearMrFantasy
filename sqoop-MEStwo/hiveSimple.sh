#!/bin/bash

echo "##################################################"
echo " "
date 
rm timings.txt
SCRIPTBEGINTIME=$SECONDS

#  hadoop fs -test -d /MEStwo
#      if [ $? = 0 ]
#              then
#                  hdfs dfs -rm -r -skipTrash /MEStwo
#                  else
#                   echo "/MEStwo not present in HDFS"
#      fi

echo "     connect: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     connect: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     connect: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     connect: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     connect: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "

echo " "
echo "##################################################"
echo "sqoop: LineGroup "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStwo/LineGroup/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineGroup already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 1 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineGroup/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER LineGroup" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStwo/LineGroup/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineGroup already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 2 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineGroup/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineGroup" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStwo/LineGroup/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineGroup already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 3 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineGroup/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER LineGroup" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStwo/LineGroup/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineGroup already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 4 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineGroup/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineGroup" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStwo/LineGroup/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineGroup already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 5 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineGroup/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER LineGroup" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: LineInfo "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStwo/LineInfo/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineInfo already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 1 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineInfo/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER LineInfo" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStwo/LineInfo/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineInfo already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 2 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineInfo/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineInfo" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStwo/LineInfo/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineInfo already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 3 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineInfo/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER LineInfo" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStwo/LineInfo/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineInfo already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 4 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineInfo/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineInfo" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStwo/LineInfo/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineInfo already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 5 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineInfo/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER LineInfo" >> timings.txt
    fi



echo "After simple table ingest: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt

set hive.execution.engine=tez;
echo " "
echo "##################################################"
echo "Hive: Conditionally create data base MEStwo"
echo "##################################################"
echo " "

hive -e "CREATE DATABASE IF NOT EXISTS MEStwo"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.LineGroup (LineGroupID smallint, LineGroup varchar(100), LineGroupCode varchar(100), Description varchar(508), OEETarget float, WasteTarget float, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/LineGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineInfo"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.LineInfo (LineInfoID int, RfLineInfoEventID tinyint, LineID smallint, ShiftID int, WOID int, FromDT timestamp, ToDT timestamp, rfDayHourPeriodID int, TotalTime int, ExcludedTime int, ScheduledTime int, STOperations int, STInduced int, DTTechnical int, DTOperations int, DTQuality int, DownTime int, StopTime int, RunTime int, NotRunTime int, TheoreticalCycleTime float, QuantityScrap float, QuantityGood float, ModifiedDT timestamp, LoginID smallint, QuantityIn float, TotalInventoryProduced float, TotalInventoryReintroduced float, NetQuantityProduced float, QuantityInLineSpoilage float, TotalSpoilage float, AccountedSpoilage float, TotalInventoryIsolated float, ProductionStopJobID int, TotalUnitsProduced float, BottleNeckMachineStageID smallint, InventoryIn int, InterProdStopTime int, InProdStopTime int, QuantityUnitsIn float, QuantityInventoryIn float, TotalQuantityProduced float, TotalPacksProduced int, TotalPacksIsolated int, TotalPacksReintroduced int, TotalPacksMade int, ValidState tinyint, LineGroupID smallint, LineGroupShiftID int, LineGroupBottleneckID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/LineInfo'"


echo "After simple table define: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: BuildRecordALL from BuildRecord, BuildRecord_
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     BuildRecordALL from BuildRecord, BuildRecord_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/BuildRecordALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/BuildRecordALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  1 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord. = BuildRecord_.)   WHERE \$CONDITIONS" --split-by BuildRecord. --num-mappers 600  --target-dir /MEStwo/BuildRecordALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali BuildRecordALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     BuildRecordALL from BuildRecord, BuildRecord_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/BuildRecordALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/BuildRecordALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  2 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord. = BuildRecord_.)   WHERE \$CONDITIONS" --split-by BuildRecord. --num-mappers 600  --target-dir /MEStwo/BuildRecordALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila BuildRecordALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     BuildRecordALL from BuildRecord, BuildRecord_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/BuildRecordALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/BuildRecordALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord. = BuildRecord_.)   WHERE \$CONDITIONS" --split-by BuildRecord. --num-mappers 600  --target-dir /MEStwo/BuildRecordALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule BuildRecordALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     BuildRecordALL from BuildRecord, BuildRecord_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/BuildRecordALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/BuildRecordALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  4 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord. = BuildRecord_.)   WHERE \$CONDITIONS" --split-by BuildRecord. --num-mappers 600  --target-dir /MEStwo/BuildRecordALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse BuildRecordALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     BuildRecordALL from BuildRecord, BuildRecord_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/BuildRecordALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/BuildRecordALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  5 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord. = BuildRecord_.)   WHERE \$CONDITIONS" --split-by BuildRecord. --num-mappers 600  --target-dir /MEStwo/BuildRecordALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa BuildRecordALL" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: InventoryLabelALL from InventoryLabel, InventoryLabel_, InventoryLabel_custom
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     InventoryLabelALL from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/InventoryLabelALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/InventoryLabelALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  1 as \"org_id\" FROM InventoryLabel FULL JOIN InventoryLabel_ ON (InventoryLabel. = InventoryLabel_.) FULL JOIN InventoryLabel_custom ON (InventoryLabel. = InventoryLabel_custom.)   WHERE \$CONDITIONS" --split-by InventoryLabel. --num-mappers 600  --target-dir /MEStwo/InventoryLabelALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali InventoryLabelALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryLabelALL from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/InventoryLabelALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/InventoryLabelALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  2 as \"org_id\" FROM InventoryLabel FULL JOIN InventoryLabel_ ON (InventoryLabel. = InventoryLabel_.) FULL JOIN InventoryLabel_custom ON (InventoryLabel. = InventoryLabel_custom.)   WHERE \$CONDITIONS" --split-by InventoryLabel. --num-mappers 600  --target-dir /MEStwo/InventoryLabelALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila InventoryLabelALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryLabelALL from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/InventoryLabelALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/InventoryLabelALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM InventoryLabel FULL JOIN InventoryLabel_ ON (InventoryLabel. = InventoryLabel_.) FULL JOIN InventoryLabel_custom ON (InventoryLabel. = InventoryLabel_custom.)   WHERE \$CONDITIONS" --split-by InventoryLabel. --num-mappers 600  --target-dir /MEStwo/InventoryLabelALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule InventoryLabelALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryLabelALL from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/InventoryLabelALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/InventoryLabelALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  4 as \"org_id\" FROM InventoryLabel FULL JOIN InventoryLabel_ ON (InventoryLabel. = InventoryLabel_.) FULL JOIN InventoryLabel_custom ON (InventoryLabel. = InventoryLabel_custom.)   WHERE \$CONDITIONS" --split-by InventoryLabel. --num-mappers 600  --target-dir /MEStwo/InventoryLabelALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse InventoryLabelALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryLabelALL from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/InventoryLabelALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/InventoryLabelALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  5 as \"org_id\" FROM InventoryLabel FULL JOIN InventoryLabel_ ON (InventoryLabel. = InventoryLabel_.) FULL JOIN InventoryLabel_custom ON (InventoryLabel. = InventoryLabel_custom.)   WHERE \$CONDITIONS" --split-by InventoryLabel. --num-mappers 600  --target-dir /MEStwo/InventoryLabelALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa InventoryLabelALL" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: InventoryPackALL from InventoryPack, InventoryPack_, InventoryPack_Custom
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     InventoryPackALL from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/InventoryPackALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/InventoryPackALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  1 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack. = InventoryPack_.) FULL JOIN InventoryPack_Custom ON (InventoryPack. = InventoryPack_Custom.)   WHERE \$CONDITIONS" --split-by InventoryPack. --num-mappers 600  --target-dir /MEStwo/InventoryPackALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali InventoryPackALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryPackALL from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/InventoryPackALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/InventoryPackALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  2 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack. = InventoryPack_.) FULL JOIN InventoryPack_Custom ON (InventoryPack. = InventoryPack_Custom.)   WHERE \$CONDITIONS" --split-by InventoryPack. --num-mappers 600  --target-dir /MEStwo/InventoryPackALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila InventoryPackALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryPackALL from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/InventoryPackALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/InventoryPackALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack. = InventoryPack_.) FULL JOIN InventoryPack_Custom ON (InventoryPack. = InventoryPack_Custom.)   WHERE \$CONDITIONS" --split-by InventoryPack. --num-mappers 600  --target-dir /MEStwo/InventoryPackALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule InventoryPackALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryPackALL from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/InventoryPackALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/InventoryPackALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  4 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack. = InventoryPack_.) FULL JOIN InventoryPack_Custom ON (InventoryPack. = InventoryPack_Custom.)   WHERE \$CONDITIONS" --split-by InventoryPack. --num-mappers 600  --target-dir /MEStwo/InventoryPackALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse InventoryPackALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryPackALL from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/InventoryPackALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/InventoryPackALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  5 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack. = InventoryPack_.) FULL JOIN InventoryPack_Custom ON (InventoryPack. = InventoryPack_Custom.)   WHERE \$CONDITIONS" --split-by InventoryPack. --num-mappers 600  --target-dir /MEStwo/InventoryPackALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa InventoryPackALL" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: JobALL from Job, Job_, Job_Custom
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     JobALL from Job, Job_, Job_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/JobALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/JobALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  1 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job. = Job_.) FULL JOIN Job_Custom ON (Job. = Job_Custom.)   WHERE \$CONDITIONS" --split-by Job. --num-mappers 600  --target-dir /MEStwo/JobALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali JobALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     JobALL from Job, Job_, Job_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/JobALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/JobALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  2 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job. = Job_.) FULL JOIN Job_Custom ON (Job. = Job_Custom.)   WHERE \$CONDITIONS" --split-by Job. --num-mappers 600  --target-dir /MEStwo/JobALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila JobALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     JobALL from Job, Job_, Job_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/JobALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/JobALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job. = Job_.) FULL JOIN Job_Custom ON (Job. = Job_Custom.)   WHERE \$CONDITIONS" --split-by Job. --num-mappers 600  --target-dir /MEStwo/JobALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule JobALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     JobALL from Job, Job_, Job_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/JobALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/JobALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  4 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job. = Job_.) FULL JOIN Job_Custom ON (Job. = Job_Custom.)   WHERE \$CONDITIONS" --split-by Job. --num-mappers 600  --target-dir /MEStwo/JobALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse JobALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     JobALL from Job, Job_, Job_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/JobALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/JobALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  5 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job. = Job_.) FULL JOIN Job_Custom ON (Job. = Job_Custom.)   WHERE \$CONDITIONS" --split-by Job. --num-mappers 600  --target-dir /MEStwo/JobALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa JobALL" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: LineALL from Line, Line_
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     LineALL from Line, Line_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/LineALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  1 as \"org_id\" FROM Line FULL JOIN Line_ ON (Line. = Line_.)   WHERE \$CONDITIONS" --split-by Line. --num-mappers 600  --target-dir /MEStwo/LineALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali LineALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineALL from Line, Line_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/LineALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  2 as \"org_id\" FROM Line FULL JOIN Line_ ON (Line. = Line_.)   WHERE \$CONDITIONS" --split-by Line. --num-mappers 600  --target-dir /MEStwo/LineALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila LineALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineALL from Line, Line_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/LineALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM Line FULL JOIN Line_ ON (Line. = Line_.)   WHERE \$CONDITIONS" --split-by Line. --num-mappers 600  --target-dir /MEStwo/LineALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule LineALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineALL from Line, Line_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/LineALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  4 as \"org_id\" FROM Line FULL JOIN Line_ ON (Line. = Line_.)   WHERE \$CONDITIONS" --split-by Line. --num-mappers 600  --target-dir /MEStwo/LineALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse LineALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineALL from Line, Line_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/LineALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LineALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  5 as \"org_id\" FROM Line FULL JOIN Line_ ON (Line. = Line_.)   WHERE \$CONDITIONS" --split-by Line. --num-mappers 600  --target-dir /MEStwo/LineALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa LineALL" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: LocationAll from Location, LocationType
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     LocationAll from Location, LocationType"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/LocationAll/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LocationAll already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  1 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location. = LocationType.)   WHERE \$CONDITIONS" --split-by Location. --num-mappers 600  --target-dir /MEStwo/LocationAll/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali LocationAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LocationAll from Location, LocationType"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/LocationAll/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LocationAll already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  2 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location. = LocationType.)   WHERE \$CONDITIONS" --split-by Location. --num-mappers 600  --target-dir /MEStwo/LocationAll/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila LocationAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LocationAll from Location, LocationType"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/LocationAll/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LocationAll already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location. = LocationType.)   WHERE \$CONDITIONS" --split-by Location. --num-mappers 600  --target-dir /MEStwo/LocationAll/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule LocationAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LocationAll from Location, LocationType"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/LocationAll/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LocationAll already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  4 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location. = LocationType.)   WHERE \$CONDITIONS" --split-by Location. --num-mappers 600  --target-dir /MEStwo/LocationAll/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse LocationAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LocationAll from Location, LocationType"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/LocationAll/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/LocationAll already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  5 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location. = LocationType.)   WHERE \$CONDITIONS" --split-by Location. --num-mappers 600  --target-dir /MEStwo/LocationAll/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa LocationAll" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: MachineStageAll from MachineStage, MachineStage_Custom
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     MachineStageAll from MachineStage, MachineStage_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/MachineStageAll/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/MachineStageAll already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  1 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage. = MachineStage_Custom.)   WHERE \$CONDITIONS" --split-by MachineStage. --num-mappers 600  --target-dir /MEStwo/MachineStageAll/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali MachineStageAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStageAll from MachineStage, MachineStage_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/MachineStageAll/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/MachineStageAll already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  2 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage. = MachineStage_Custom.)   WHERE \$CONDITIONS" --split-by MachineStage. --num-mappers 600  --target-dir /MEStwo/MachineStageAll/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila MachineStageAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStageAll from MachineStage, MachineStage_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/MachineStageAll/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/MachineStageAll already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage. = MachineStage_Custom.)   WHERE \$CONDITIONS" --split-by MachineStage. --num-mappers 600  --target-dir /MEStwo/MachineStageAll/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule MachineStageAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStageAll from MachineStage, MachineStage_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/MachineStageAll/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/MachineStageAll already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  4 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage. = MachineStage_Custom.)   WHERE \$CONDITIONS" --split-by MachineStage. --num-mappers 600  --target-dir /MEStwo/MachineStageAll/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse MachineStageAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStageAll from MachineStage, MachineStage_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/MachineStageAll/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/MachineStageAll already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  5 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage. = MachineStage_Custom.)   WHERE \$CONDITIONS" --split-by MachineStage. --num-mappers 600  --target-dir /MEStwo/MachineStageAll/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa MachineStageAll" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: PartALL from Part, Part_, Part_custom
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     PartALL from Part, Part_, Part_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/PartALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/PartALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  1 as \"org_id\" FROM Part FULL JOIN Part_ ON (Part. = Part_.) FULL JOIN Part_custom ON (Part. = Part_custom.)   WHERE \$CONDITIONS" --split-by Part. --num-mappers 600  --target-dir /MEStwo/PartALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali PartALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartALL from Part, Part_, Part_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/PartALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/PartALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  2 as \"org_id\" FROM Part FULL JOIN Part_ ON (Part. = Part_.) FULL JOIN Part_custom ON (Part. = Part_custom.)   WHERE \$CONDITIONS" --split-by Part. --num-mappers 600  --target-dir /MEStwo/PartALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila PartALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartALL from Part, Part_, Part_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/PartALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/PartALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM Part FULL JOIN Part_ ON (Part. = Part_.) FULL JOIN Part_custom ON (Part. = Part_custom.)   WHERE \$CONDITIONS" --split-by Part. --num-mappers 600  --target-dir /MEStwo/PartALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule PartALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartALL from Part, Part_, Part_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/PartALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/PartALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  4 as \"org_id\" FROM Part FULL JOIN Part_ ON (Part. = Part_.) FULL JOIN Part_custom ON (Part. = Part_custom.)   WHERE \$CONDITIONS" --split-by Part. --num-mappers 600  --target-dir /MEStwo/PartALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse PartALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartALL from Part, Part_, Part_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/PartALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/PartALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  5 as \"org_id\" FROM Part FULL JOIN Part_ ON (Part. = Part_.) FULL JOIN Part_custom ON (Part. = Part_custom.)   WHERE \$CONDITIONS" --split-by Part. --num-mappers 600  --target-dir /MEStwo/PartALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa PartALL" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: WOALL from WO, WO_
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     WOALL from WO, WO_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/WOALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/WOALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  1 as \"org_id\" FROM WO FULL JOIN WO_ ON (WO. = WO_.)   WHERE \$CONDITIONS" --split-by WO. --num-mappers 600  --target-dir /MEStwo/WOALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali WOALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     WOALL from WO, WO_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/WOALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/WOALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  2 as \"org_id\" FROM WO FULL JOIN WO_ ON (WO. = WO_.)   WHERE \$CONDITIONS" --split-by WO. --num-mappers 600  --target-dir /MEStwo/WOALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila WOALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     WOALL from WO, WO_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/WOALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/WOALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM WO FULL JOIN WO_ ON (WO. = WO_.)   WHERE \$CONDITIONS" --split-by WO. --num-mappers 600  --target-dir /MEStwo/WOALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule WOALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     WOALL from WO, WO_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/WOALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/WOALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  4 as \"org_id\" FROM WO FULL JOIN WO_ ON (WO. = WO_.)   WHERE \$CONDITIONS" --split-by WO. --num-mappers 600  --target-dir /MEStwo/WOALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse WOALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     WOALL from WO, WO_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStwo/WOALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStwo/WOALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  5 as \"org_id\" FROM WO FULL JOIN WO_ ON (WO. = WO_.)   WHERE \$CONDITIONS" --split-by WO. --num-mappers 600  --target-dir /MEStwo/WOALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa WOALL" >> timings.txt
    fi



echo "After joined table ingest: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt


echo " "
echo "##################################################"
echo "Hive: Conditionally create table BuildRecordALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.BuildRecordALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/BuildRecordALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryLabelALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.InventoryLabelALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/InventoryLabelALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryPackALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.InventoryPackALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/InventoryPackALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table JobALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.JobALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/JobALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.LineALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/LineALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LocationAll"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.LocationAll ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/LocationAll'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStageAll"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.MachineStageAll ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/MachineStageAll'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.PartALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/PartALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table WOALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStwo.WOALL ( org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStwo/WOALL'"


echo "Script execution time: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt


