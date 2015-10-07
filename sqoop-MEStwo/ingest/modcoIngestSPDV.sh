#!/bin/bash

echo "##################################################"
echo " "
date 
rm timings.txt
SCRIPTBEGINTIME=$SECONDS

echo " "
echo "##################################################"
echo "sqoop: LineGroup "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 3 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineGroup/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER LineGroup" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: LineInfo "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 3 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStwo/LineInfo/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER LineInfo" >> timings.txt


echo "After simple table ingest: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt

set hive.execution.engine=tez;
echo " "
echo "##################################################"
echo "Hive: Conditionally create data base MEStwo"
echo "##################################################"
echo " "

echo "After simple table define: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: BuildRecordALL " from BuildRecord, BuildRecord_
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     BuildRecordALL " from BuildRecord, BuildRecord_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord. = BuildRecord_.)   WHERE \$CONDITIONS" --split-by BuildRecord. --num-mappers 600  --target-dir /MEStwo/BuildRecordALL/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule BuildRecordALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryLabelALL " from InventoryLabel, InventoryLabel_, InventoryLabel_custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InventoryLabelALL " from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM InventoryLabel FULL JOIN InventoryLabel_ ON (InventoryLabel. = InventoryLabel_.) FULL JOIN InventoryLabel_custom ON (InventoryLabel. = InventoryLabel_custom.)   WHERE \$CONDITIONS" --split-by InventoryLabel. --num-mappers 600  --target-dir /MEStwo/InventoryLabelALL/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule InventoryLabelALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: InventoryPackALL " from InventoryPack, InventoryPack_, InventoryPack_Custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InventoryPackALL " from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack. = InventoryPack_.) FULL JOIN InventoryPack_Custom ON (InventoryPack. = InventoryPack_Custom.)   WHERE \$CONDITIONS" --split-by InventoryPack. --num-mappers 600  --target-dir /MEStwo/InventoryPackALL/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule InventoryPackALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: JobALL " from Job, Job_, Job_Custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     JobALL " from Job, Job_, Job_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job. = Job_.) FULL JOIN Job_Custom ON (Job. = Job_Custom.)   WHERE \$CONDITIONS" --split-by Job. --num-mappers 600  --target-dir /MEStwo/JobALL/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule JobALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LineALL " from Line, Line_
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineALL " from Line, Line_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM Line FULL JOIN Line_ ON (Line. = Line_.)   WHERE \$CONDITIONS" --split-by Line. --num-mappers 600  --target-dir /MEStwo/LineALL/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule LineALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LocationAll " from Location, LocationType
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LocationAll " from Location, LocationType"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location. = LocationType.)   WHERE \$CONDITIONS" --split-by Location. --num-mappers 600  --target-dir /MEStwo/LocationAll/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule LocationAll" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStageAll " from MachineStage, MachineStage_Custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStageAll " from MachineStage, MachineStage_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage. = MachineStage_Custom.)   WHERE \$CONDITIONS" --split-by MachineStage. --num-mappers 600  --target-dir /MEStwo/MachineStageAll/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule MachineStageAll" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: PartALL " from Part, Part_, Part_custom
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartALL " from Part, Part_, Part_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM Part FULL JOIN Part_ ON (Part. = Part_.) FULL JOIN Part_custom ON (Part. = Part_custom.)   WHERE \$CONDITIONS" --split-by Part. --num-mappers 600  --target-dir /MEStwo/PartALL/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule PartALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: WOALL " from WO, WO_
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     WOALL " from WO, WO_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT  3 as \"org_id\" FROM WO FULL JOIN WO_ ON (WO. = WO_.)   WHERE \$CONDITIONS" --split-by WO. --num-mappers 600  --target-dir /MEStwo/WOALL/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule WOALL" >> timings.txt


echo "After joined table ingest: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt

echo "Script execution time: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt


