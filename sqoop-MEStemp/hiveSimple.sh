#!/bin/bash

echo "##################################################"
echo " "
date 
rm timings.txt
SCRIPTBEGINTIME=$SECONDS

#  hadoop fs -test -d /MEStemp
#      if [ $? = 0 ]
#              then
#                  hdfs dfs -rm -r -skipTrash /MEStemp
#                  else
#                   echo "/MEStemp not present in HDFS"
#      fi

echo "     connect: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     connect: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     connect: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     connect: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     connect: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "

echo " "
echo "##################################################"
echo "sqoop: _SPML_ModuleInfo "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     _SPML_ModuleInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/U_SPML_ModuleInfo/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/U_SPML_ModuleInfo already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ModuleInfoID,SerialNo,LaminateID,LaminateCreatedDT,LaminateOrderNo,LaminatePartNo,BINNo,CktFormBuildPart,CktFormBuildMachine,CktFormBuildDT,GlassBuildPart,GlassBuildDate,LaminationBuildMachine,LaminationBuildDT,ModuleID,ModuleCreatedDT,ModuleOrderNo,IntendedModulePartNo,IntendedModulePartDesc,FramingBuildPart,FramingBuildMachine,FramingBuildDT,JboxBuildPart,JboxBuildDT,FlashtestClassifiedDT,FinalModulePartNo,FinalModulePartDesc,ActualPower,ActualVocMod,ActualFF,PackedDT,InventoryState,JboxBuildMachine,ActualIsc,FlashtestBuildMachine,Komax1,Komax2,Komax3,GlassID,CellType,StringerOperator,CircuitOperator1,CircuitOperator2,TrimChangeReason,PowerChartGenerated,LaminateWoId,ModuleWoId,VisualStateId,RfInvStateId,ElTestDate,ElBuildMachine,ActualVmpMod,ActualImpMod,TrimBuildMachine,TrimBuildDT,CellThickness,PalletID,FlashTestID,PadLock,BtoCtoSerialNo,EvaUseByDT, 1 as \"org_id\"  FROM dbo._SPML_ModuleInfo WHERE \$CONDITIONS" --split-by ModuleInfoID  --num-mappers 600 --target-dir /MEStemp/U_SPML_ModuleInfo/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER _SPML_ModuleInfo" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     _SPML_ModuleInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/U_SPML_ModuleInfo/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/U_SPML_ModuleInfo already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ModuleInfoID,SerialNo,LaminateID,LaminateCreatedDT,LaminateOrderNo,LaminatePartNo,BINNo,CktFormBuildPart,CktFormBuildMachine,CktFormBuildDT,GlassBuildPart,GlassBuildDate,LaminationBuildMachine,LaminationBuildDT,ModuleID,ModuleCreatedDT,ModuleOrderNo,IntendedModulePartNo,IntendedModulePartDesc,FramingBuildPart,FramingBuildMachine,FramingBuildDT,JboxBuildPart,JboxBuildDT,FlashtestClassifiedDT,FinalModulePartNo,FinalModulePartDesc,ActualPower,ActualVocMod,ActualFF,PackedDT,InventoryState,JboxBuildMachine,ActualIsc,FlashtestBuildMachine,Komax1,Komax2,Komax3,GlassID,CellType,StringerOperator,CircuitOperator1,CircuitOperator2,TrimChangeReason,PowerChartGenerated,LaminateWoId,ModuleWoId,VisualStateId,RfInvStateId,ElTestDate,ElBuildMachine,ActualVmpMod,ActualImpMod,TrimBuildMachine,TrimBuildDT,CellThickness,PalletID,FlashTestID,PadLock,BtoCtoSerialNo,EvaUseByDT, 2 as \"org_id\"  FROM dbo._SPML_ModuleInfo WHERE \$CONDITIONS" --split-by ModuleInfoID  --num-mappers 600 --target-dir /MEStemp/U_SPML_ModuleInfo/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER _SPML_ModuleInfo" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     _SPML_ModuleInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/U_SPML_ModuleInfo/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/U_SPML_ModuleInfo already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ModuleInfoID,SerialNo,LaminateID,LaminateCreatedDT,LaminateOrderNo,LaminatePartNo,BINNo,CktFormBuildPart,CktFormBuildMachine,CktFormBuildDT,GlassBuildPart,GlassBuildDate,LaminationBuildMachine,LaminationBuildDT,ModuleID,ModuleCreatedDT,ModuleOrderNo,IntendedModulePartNo,IntendedModulePartDesc,FramingBuildPart,FramingBuildMachine,FramingBuildDT,JboxBuildPart,JboxBuildDT,FlashtestClassifiedDT,FinalModulePartNo,FinalModulePartDesc,ActualPower,ActualVocMod,ActualFF,PackedDT,InventoryState,JboxBuildMachine,ActualIsc,FlashtestBuildMachine,Komax1,Komax2,Komax3,GlassID,CellType,StringerOperator,CircuitOperator1,CircuitOperator2,TrimChangeReason,PowerChartGenerated,LaminateWoId,ModuleWoId,VisualStateId,RfInvStateId,ElTestDate,ElBuildMachine,ActualVmpMod,ActualImpMod,TrimBuildMachine,TrimBuildDT,CellThickness,PalletID,FlashTestID,PadLock,BtoCtoSerialNo,EvaUseByDT, 3 as \"org_id\"  FROM dbo._SPML_ModuleInfo WHERE \$CONDITIONS" --split-by ModuleInfoID  --num-mappers 600 --target-dir /MEStemp/U_SPML_ModuleInfo/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER _SPML_ModuleInfo" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     _SPML_ModuleInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/U_SPML_ModuleInfo/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/U_SPML_ModuleInfo already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ModuleInfoID,SerialNo,LaminateID,LaminateCreatedDT,LaminateOrderNo,LaminatePartNo,BINNo,CktFormBuildPart,CktFormBuildMachine,CktFormBuildDT,GlassBuildPart,GlassBuildDate,LaminationBuildMachine,LaminationBuildDT,ModuleID,ModuleCreatedDT,ModuleOrderNo,IntendedModulePartNo,IntendedModulePartDesc,FramingBuildPart,FramingBuildMachine,FramingBuildDT,JboxBuildPart,JboxBuildDT,FlashtestClassifiedDT,FinalModulePartNo,FinalModulePartDesc,ActualPower,ActualVocMod,ActualFF,PackedDT,InventoryState,JboxBuildMachine,ActualIsc,FlashtestBuildMachine,Komax1,Komax2,Komax3,GlassID,CellType,StringerOperator,CircuitOperator1,CircuitOperator2,TrimChangeReason,PowerChartGenerated,LaminateWoId,ModuleWoId,VisualStateId,RfInvStateId,ElTestDate,ElBuildMachine,ActualVmpMod,ActualImpMod,TrimBuildMachine,TrimBuildDT,CellThickness,PalletID,FlashTestID,PadLock,BtoCtoSerialNo,EvaUseByDT, 4 as \"org_id\"  FROM dbo._SPML_ModuleInfo WHERE \$CONDITIONS" --split-by ModuleInfoID  --num-mappers 600 --target-dir /MEStemp/U_SPML_ModuleInfo/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER _SPML_ModuleInfo" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     _SPML_ModuleInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/U_SPML_ModuleInfo/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/U_SPML_ModuleInfo already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ModuleInfoID,SerialNo,LaminateID,LaminateCreatedDT,LaminateOrderNo,LaminatePartNo,BINNo,CktFormBuildPart,CktFormBuildMachine,CktFormBuildDT,GlassBuildPart,GlassBuildDate,LaminationBuildMachine,LaminationBuildDT,ModuleID,ModuleCreatedDT,ModuleOrderNo,IntendedModulePartNo,IntendedModulePartDesc,FramingBuildPart,FramingBuildMachine,FramingBuildDT,JboxBuildPart,JboxBuildDT,FlashtestClassifiedDT,FinalModulePartNo,FinalModulePartDesc,ActualPower,ActualVocMod,ActualFF,PackedDT,InventoryState,JboxBuildMachine,ActualIsc,FlashtestBuildMachine,Komax1,Komax2,Komax3,GlassID,CellType,StringerOperator,CircuitOperator1,CircuitOperator2,TrimChangeReason,PowerChartGenerated,LaminateWoId,ModuleWoId,VisualStateId,RfInvStateId,ElTestDate,ElBuildMachine,ActualVmpMod,ActualImpMod,TrimBuildMachine,TrimBuildDT,CellThickness,PalletID,FlashTestID,PadLock,BtoCtoSerialNo,EvaUseByDT, 5 as \"org_id\"  FROM dbo._SPML_ModuleInfo WHERE \$CONDITIONS" --split-by ModuleInfoID  --num-mappers 600 --target-dir /MEStemp/U_SPML_ModuleInfo/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER _SPML_ModuleInfo" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: Address "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Address "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Address/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Address already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 1 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Address" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Address "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Address/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Address already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 2 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Address" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Address "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Address/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Address already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 3 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Address" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Address "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Address/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Address already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 4 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Address" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Address "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Address/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Address already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 5 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Address" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: Customer "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Customer "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Customer/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Customer already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 1 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Customer/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Customer" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Customer "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Customer/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Customer already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 2 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Customer/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Customer" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Customer "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Customer/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Customer already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 3 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Customer/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Customer" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Customer "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Customer/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Customer already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 4 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Customer/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Customer" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Customer "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Customer/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Customer already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 5 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Customer/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Customer" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: Department "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Department "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Department/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Department already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 1 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Department/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Department" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Department "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Department/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Department already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 2 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Department/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Department" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Department "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Department/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Department already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 3 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Department/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Department" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Department "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Department/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Department already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 4 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Department/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Department" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Department "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Department/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Department already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 5 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Department/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Department" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: InvIsolatedReason "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InvIsolatedReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/InvIsolatedReason/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InvIsolatedReason already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 1 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvIsolatedReason/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER InvIsolatedReason" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InvIsolatedReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/InvIsolatedReason/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InvIsolatedReason already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 2 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvIsolatedReason/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER InvIsolatedReason" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InvIsolatedReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/InvIsolatedReason/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InvIsolatedReason already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 3 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvIsolatedReason/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER InvIsolatedReason" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InvIsolatedReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/InvIsolatedReason/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InvIsolatedReason already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 4 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvIsolatedReason/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER InvIsolatedReason" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InvIsolatedReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/InvIsolatedReason/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InvIsolatedReason already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 5 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvIsolatedReason/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER InvIsolatedReason" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: InvState "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InvState "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/InvState/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InvState already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 1 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvState/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER InvState" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InvState "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/InvState/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InvState already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 2 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvState/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER InvState" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InvState "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/InvState/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InvState already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 3 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvState/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER InvState" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InvState "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/InvState/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InvState already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 4 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvState/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER InvState" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InvState "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/InvState/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InvState already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 5 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvState/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER InvState" >> timings.txt
    fi


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

hadoop fs -test -d /MEStemp/LineGroup/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineGroup already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 1 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineGroup/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER LineGroup" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineGroup/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineGroup already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 2 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineGroup/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineGroup" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineGroup/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineGroup already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 3 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineGroup/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER LineGroup" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineGroup/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineGroup already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 4 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineGroup/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineGroup" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineGroup/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineGroup already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 5 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineGroup/5 --direct  -- --schema dbo --validate
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

hadoop fs -test -d /MEStemp/LineInfo/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineInfo already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 1 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER LineInfo" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineInfo/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineInfo already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 2 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineInfo" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineInfo/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineInfo already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 3 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER LineInfo" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineInfo/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineInfo already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 4 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineInfo" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineInfo/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineInfo already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 5 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER LineInfo" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: LineSection "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineSection "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineSection/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineSection already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 1 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineSection/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER LineSection" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineSection "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineSection/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineSection already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 2 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineSection/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineSection" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineSection "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineSection/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineSection already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 3 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineSection/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER LineSection" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineSection "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineSection/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineSection already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 4 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineSection/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineSection" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineSection "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineSection/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineSection already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 5 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineSection/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER LineSection" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: LineType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineType/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineType already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineTypeID,LineType,Description,IsRetired,LineInfoPrecedence,BudgetChangeOver,BudgetEfficiency, 1 as \"org_id\"  FROM dbo.LineType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineType/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER LineType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineType/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineType already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineTypeID,LineType,Description,IsRetired,LineInfoPrecedence,BudgetChangeOver,BudgetEfficiency, 2 as \"org_id\"  FROM dbo.LineType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineType/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineType/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineType already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineTypeID,LineType,Description,IsRetired,LineInfoPrecedence,BudgetChangeOver,BudgetEfficiency, 3 as \"org_id\"  FROM dbo.LineType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineType/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER LineType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineType/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineType already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineTypeID,LineType,Description,IsRetired,LineInfoPrecedence,BudgetChangeOver,BudgetEfficiency, 4 as \"org_id\"  FROM dbo.LineType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineType/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/LineType/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineType already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineTypeID,LineType,Description,IsRetired,LineInfoPrecedence,BudgetChangeOver,BudgetEfficiency, 5 as \"org_id\"  FROM dbo.LineType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineType/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER LineType" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: MachineStageType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStageType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStageType/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStageType already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 1 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER MachineStageType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStageType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStageType/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStageType already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 2 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER MachineStageType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStageType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStageType/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStageType already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 3 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER MachineStageType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStageType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStageType/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStageType already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 4 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER MachineStageType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStageType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStageType/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStageType already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 5 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER MachineStageType" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: MachineStop "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStop "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStop/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStop already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 1 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStop/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER MachineStop" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStop "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStop/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStop already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 2 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStop/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER MachineStop" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStop "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStop/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStop already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 3 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStop/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER MachineStop" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStop "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStop/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStop already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 4 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStop/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER MachineStop" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStop "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStop/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStop already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 5 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStop/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER MachineStop" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: MachineStopCategory "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStopCategory "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStopCategory/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStopCategory already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 1 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopCategory/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER MachineStopCategory" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStopCategory "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStopCategory/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStopCategory already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 2 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopCategory/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER MachineStopCategory" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStopCategory "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStopCategory/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStopCategory already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 3 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopCategory/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER MachineStopCategory" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStopCategory "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStopCategory/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStopCategory already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 4 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopCategory/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER MachineStopCategory" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStopCategory "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStopCategory/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStopCategory already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 5 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopCategory/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER MachineStopCategory" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: MachineStopReason "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStopReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStopReason/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStopReason already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 1 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReason/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER MachineStopReason" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStopReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStopReason/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStopReason already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 2 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReason/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER MachineStopReason" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStopReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStopReason/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStopReason already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 3 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReason/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER MachineStopReason" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStopReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStopReason/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStopReason already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 4 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReason/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER MachineStopReason" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStopReason "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/MachineStopReason/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStopReason already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 5 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReason/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER MachineStopReason" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: Operation "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Operation "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Operation/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Operation already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 1 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Operation/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Operation" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Operation "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Operation/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Operation already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 2 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Operation/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Operation" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Operation "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Operation/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Operation already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 3 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Operation/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Operation" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Operation "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Operation/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Operation already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 4 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Operation/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Operation" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Operation "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Operation/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Operation already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 5 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Operation/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Operation" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: OperationType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     OperationType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/OperationType/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/OperationType already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 1 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OperationType/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER OperationType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     OperationType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/OperationType/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/OperationType already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 2 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OperationType/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER OperationType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     OperationType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/OperationType/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/OperationType already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 3 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OperationType/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER OperationType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     OperationType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/OperationType/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/OperationType already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 4 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OperationType/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER OperationType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     OperationType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/OperationType/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/OperationType already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 5 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OperationType/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER OperationType" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: PartClassification "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartClassification/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartClassification already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 1 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartClassification/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER PartClassification" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartClassification/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartClassification already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 2 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartClassification/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER PartClassification" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartClassification/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartClassification already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 3 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartClassification/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER PartClassification" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartClassification/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartClassification already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 4 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartClassification/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER PartClassification" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartClassification/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartClassification already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 5 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartClassification/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER PartClassification" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: PartSubClassification "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartSubClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartSubClassification/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartSubClassification already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 1 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartSubClassification/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER PartSubClassification" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartSubClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartSubClassification/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartSubClassification already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 2 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartSubClassification/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER PartSubClassification" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartSubClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartSubClassification/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartSubClassification already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 3 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartSubClassification/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER PartSubClassification" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartSubClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartSubClassification/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartSubClassification already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 4 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartSubClassification/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER PartSubClassification" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartSubClassification "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartSubClassification/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartSubClassification already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 5 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartSubClassification/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER PartSubClassification" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: PartType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartType/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartType already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartTypeID,PartType,Description,PartTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID,RfInventoryAccountingModeID, 1 as \"org_id\"  FROM dbo.PartType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartType/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER PartType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartType/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartType already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartTypeID,PartType,Description,PartTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID,RfInventoryAccountingModeID, 2 as \"org_id\"  FROM dbo.PartType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartType/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER PartType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartType/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartType already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartTypeID,PartType,Description,PartTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID,RfInventoryAccountingModeID, 3 as \"org_id\"  FROM dbo.PartType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartType/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER PartType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartType/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartType already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartTypeID,PartType,Description,PartTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID,RfInventoryAccountingModeID, 4 as \"org_id\"  FROM dbo.PartType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartType/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER PartType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/PartType/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartType already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartTypeID,PartType,Description,PartTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID,RfInventoryAccountingModeID, 5 as \"org_id\"  FROM dbo.PartType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartType/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER PartType" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: Shift "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Shift "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Shift/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Shift already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 1 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Shift/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Shift" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Shift "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Shift/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Shift already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 2 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Shift/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Shift" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Shift "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Shift/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Shift already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 3 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Shift/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Shift" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Shift "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Shift/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Shift already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 4 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Shift/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Shift" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Shift "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Shift/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Shift already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 5 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Shift/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Shift" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: ShiftPattern "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     ShiftPattern "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/ShiftPattern/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/ShiftPattern already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 1 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER ShiftPattern" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     ShiftPattern "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/ShiftPattern/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/ShiftPattern already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 2 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER ShiftPattern" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     ShiftPattern "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/ShiftPattern/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/ShiftPattern already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 3 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER ShiftPattern" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     ShiftPattern "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/ShiftPattern/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/ShiftPattern already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 4 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER ShiftPattern" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     ShiftPattern "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/ShiftPattern/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/ShiftPattern already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 5 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER ShiftPattern" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: ShiftType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     ShiftType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/ShiftType/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/ShiftType already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 1 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER ShiftType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     ShiftType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/ShiftType/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/ShiftType already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 2 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER ShiftType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     ShiftType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/ShiftType/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/ShiftType already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 3 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER ShiftType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     ShiftType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/ShiftType/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/ShiftType already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 4 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER ShiftType" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     ShiftType "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/ShiftType/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/ShiftType already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 5 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER ShiftType" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: Supplier "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Supplier "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Supplier/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Supplier already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 1 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Supplier/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Supplier" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Supplier "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Supplier/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Supplier already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 2 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Supplier/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Supplier" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Supplier "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Supplier/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Supplier already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 3 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Supplier/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Supplier" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Supplier "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Supplier/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Supplier already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 4 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Supplier/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Supplier" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Supplier "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Supplier/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Supplier already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 5 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Supplier/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Supplier" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: TagList "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     TagList "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/TagList/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/TagList already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT TagListID,ListName,VariantNo, 1 as \"org_id\"  FROM dbo.TagList WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagList/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER TagList" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     TagList "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/TagList/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/TagList already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT TagListID,ListName,VariantNo, 2 as \"org_id\"  FROM dbo.TagList WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagList/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER TagList" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     TagList "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/TagList/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/TagList already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT TagListID,ListName,VariantNo, 3 as \"org_id\"  FROM dbo.TagList WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagList/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER TagList" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     TagList "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/TagList/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/TagList already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT TagListID,ListName,VariantNo, 4 as \"org_id\"  FROM dbo.TagList WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagList/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER TagList" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     TagList "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/TagList/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/TagList already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT TagListID,ListName,VariantNo, 5 as \"org_id\"  FROM dbo.TagList WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagList/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER TagList" >> timings.txt
    fi


echo " "
echo "##################################################"
echo "sqoop: Unit "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Unit "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Unit/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Unit already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 1 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Unit" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Unit "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Unit/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Unit already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 2 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Unit" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Unit "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Unit/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Unit already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 3 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Unit" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Unit "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Unit/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Unit already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 4 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Unit" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     Unit "
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "

hadoop fs -test -d /MEStemp/Unit/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/Unit already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 5 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Unit" >> timings.txt
    fi



echo "After simple table ingest: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt

set hive.execution.engine=tez;
echo " "
echo "##################################################"
echo "Hive: Conditionally create data base MEStemp"
echo "##################################################"
echo " "

hive -e "CREATE DATABASE IF NOT EXISTS MEStemp"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table U_SPML_ModuleInfo"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.U_SPML_ModuleInfo (ModuleInfoID int, SerialNo varchar(508), LaminateID int, LaminateCreatedDT timestamp, LaminateOrderNo varchar(508), LaminatePartNo varchar(508), BINNo varchar(508), CktFormBuildPart varchar(508), CktFormBuildMachine varchar(508), CktFormBuildDT timestamp, GlassBuildPart varchar(508), GlassBuildDate timestamp, LaminationBuildMachine varchar(508), LaminationBuildDT timestamp, ModuleID int, ModuleCreatedDT timestamp, ModuleOrderNo varchar(508), IntendedModulePartNo varchar(508), IntendedModulePartDesc varchar(508), FramingBuildPart varchar(508), FramingBuildMachine varchar(508), FramingBuildDT timestamp, JboxBuildPart varchar(508), JboxBuildDT timestamp, FlashtestClassifiedDT timestamp, FinalModulePartNo varchar(508), FinalModulePartDesc varchar(508), ActualPower float, ActualVocMod float, ActualFF float, PackedDT timestamp, InventoryState varchar(508), JboxBuildMachine varchar(508), ActualIsc float, FlashtestBuildMachine varchar(508), Komax1 varchar(508), Komax2 varchar(508), Komax3 varchar(508), GlassID int, CellType varchar(100), StringerOperator varchar(100), CircuitOperator1 varchar(100), CircuitOperator2 varchar(100), TrimChangeReason varchar(4000), PowerChartGenerated tinyint, LaminateWoId int, ModuleWoId int, VisualStateId smallint, RfInvStateId smallint, ElTestDate timestamp, ElBuildMachine varchar(508), ActualVmpMod float, ActualImpMod float, TrimBuildMachine varchar(508), TrimBuildDT timestamp, CellThickness varchar(508), PalletID bigint, FlashTestID int, PadLock varchar(36), BtoCtoSerialNo varchar(508), EvaUseByDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/U_SPML_ModuleInfo'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Address"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Address (AddressID smallint, Address1 varchar(508), Address2 varchar(508), City varchar(100), County varchar(100), PostCode varchar(100), Country varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Address'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Customer"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Customer (CustomerID smallint, Customer varchar(508), CustomerCode varchar(508), AddressID smallint, RfLanguageID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Customer'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Department"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Department (DepartmentID smallint, Name varchar(508), DepartmentGroup varchar(508), Classification1 varchar(100), PlantID smallint, DepartmentCode varchar(100), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Department'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InvIsolatedReason"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InvIsolatedReason (InvIsolatedReasonID smallint, PartTypeID smallint, IsolatedReason varchar(508), InvStateID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InvIsolatedReason'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InvState"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InvState (InvStateID smallint, InvState varchar(508), Description varchar(508), RfInvStateID smallint, InvStateCode varchar(508), IsAddToProduction tinyint, IsAddToHFI tinyint, IsDefault tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InvState'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineGroup"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LineGroup (LineGroupID smallint, LineGroup varchar(100), LineGroupCode varchar(100), Description varchar(508), OEETarget float, WasteTarget float, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LineGroup'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineInfo"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LineInfo (LineInfoID int, RfLineInfoEventID tinyint, LineID smallint, ShiftID int, WOID int, FromDT timestamp, ToDT timestamp, rfDayHourPeriodID int, TotalTime int, ExcludedTime int, ScheduledTime int, STOperations int, STInduced int, DTTechnical int, DTOperations int, DTQuality int, DownTime int, StopTime int, RunTime int, NotRunTime int, TheoreticalCycleTime float, QuantityScrap float, QuantityGood float, ModifiedDT timestamp, LoginID smallint, QuantityIn float, TotalInventoryProduced float, TotalInventoryReintroduced float, NetQuantityProduced float, QuantityInLineSpoilage float, TotalSpoilage float, AccountedSpoilage float, TotalInventoryIsolated float, ProductionStopJobID int, TotalUnitsProduced float, BottleNeckMachineStageID smallint, InventoryIn int, InterProdStopTime int, InProdStopTime int, QuantityUnitsIn float, QuantityInventoryIn float, TotalQuantityProduced float, TotalPacksProduced int, TotalPacksIsolated int, TotalPacksReintroduced int, TotalPacksMade int, ValidState tinyint, LineGroupID smallint, LineGroupShiftID int, LineGroupBottleneckID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LineInfo'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineSection"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LineSection (LineSectionID smallint, LineSection varchar(508), Description varchar(508), IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LineSection'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LineType (LineTypeID smallint, LineType varchar(508), Description varchar(508), IsRetired tinyint, LineInfoPrecedence tinyint, BudgetChangeOver int, BudgetEfficiency float,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LineType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStageType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStageType (MachineStageTypeID smallint, Name varchar(508), Description varchar(508), MachineStageTypeCode varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStageType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStop"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStop (MachineStopID int, MachineStopReasonID smallint, FromDT timestamp, ToDT timestamp, MachineStageID smallint, IsEdited tinyint, RevisionNo tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStop'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStopCategory"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStopCategory (MachineStopCategoryID smallint, MachineStopCategory varchar(508), Description varchar(508), MachineStageTypeID smallint, StopCategoryCode varchar(100), DisplayOrder smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStopCategory'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStopReason"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStopReason (MachineStopReasonID smallint, StopReason varchar(508), Description varchar(508), MachineStageTypeID smallint, IsPlanned tinyint, StopCode varchar(100), RfMachineStopClassID tinyint, RfLineStopReasonTypeID smallint, MachineStopCategoryID smallint, IsRetired tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStopReason'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Operation"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Operation (OperationID int, OperationTypeID smallint, MachineStageID smallint, JobID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Operation'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table OperationType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.OperationType (OperationTypeID smallint, OperationType varchar(508), OperationTypeCode varchar(100), Description varchar(508), PartTypeID smallint, Sequence smallint, IsOptional tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/OperationType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartClassification"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.PartClassification (PartClassificationID smallint, PartClassification varchar(508), RfPartClassificationID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/PartClassification'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartSubClassification"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.PartSubClassification (PartSubClassificationID smallint, PartSubClassification varchar(508), PartClassificationID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/PartSubClassification'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.PartType (PartTypeID smallint, PartType varchar(508), Description varchar(508), PartTypeCode varchar(100), Variant1TagListID smallint, Variant2TagListID smallint, Variant3TagListID smallint, Variant4TagListID smallint, Variant5TagListID smallint, Variant6TagListID smallint, Variant7TagListID smallint, Variant8TagListID smallint, Variant9TagListID smallint, Variant10TagListID smallint, Variant11TagListID smallint, Variant12TagListID smallint, Variant13TagListID smallint, Variant14TagListID smallint, Variant15TagListID smallint, Variant16TagListID smallint, Variant17TagListID smallint, Variant18TagListID smallint, Variant19TagListID smallint, Variant20TagListID smallint, RfInventoryAccountingModeID tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/PartType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Shift"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Shift (ShiftID int, ShiftTypeID smallint, ShiftPatternID smallint, FromDT timestamp, ToDT timestamp, Sequence smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Shift'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ShiftPattern"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ShiftPattern (ShiftPatternID smallint, ShiftPattern varchar(100), PatternDuration int, IsPatternDirty tinyint, IsCustomPeriod tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ShiftPattern'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table ShiftType"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.ShiftType (ShiftTypeID smallint, Name varchar(100), Description varchar(508), IsNonWorking tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/ShiftType'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Supplier"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Supplier (SupplierID smallint, Supplier varchar(508), SupplierCode varchar(508), AddressID smallint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Supplier'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table TagList"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.TagList (TagListID smallint, ListName varchar(100), VariantNo tinyint,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/TagList'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table Unit"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.Unit (UnitID smallint, Unit varchar(40), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/Unit'"


echo "After simple table define: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: BuildRecordALL from BuildRecord, BuildRecord_"
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     BuildRecordALL from BuildRecord, BuildRecord_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/BuildRecordALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/BuildRecordALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT BuildRecord.BuildRecordID, BuildRecord.InvPackCreatedID, BuildRecord.InvPackConsumedID, BuildRecord.QuantityUsed, BuildRecord.UnitID, BuildRecord.BuildDT, BuildRecord.IsEdited, BuildRecord.RevisionNo, BuildRecord.BuildMachineStageID, BuildRecord_.Comments, BuildRecord_.LoginID, BuildRecord_.OpenedDT, BuildRecord_.SavedDT, BuildRecord_.EditedBuildRecordID, BuildRecord_.OriginalLoginID, BuildRecord_.Reference1, BuildRecord_.Reference2, BuildRecord_.Reference3, BuildRecord_.Reference4, BuildRecord_.Reference5,  1 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord.BuildRecordID = BuildRecord_.BuildRecordID)   WHERE \$CONDITIONS" --split-by BuildRecord.BuildRecordID --num-mappers 600  --target-dir /MEStemp/BuildRecordALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali BuildRecordALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     BuildRecordALL from BuildRecord, BuildRecord_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/BuildRecordALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/BuildRecordALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT BuildRecord.BuildRecordID, BuildRecord.InvPackCreatedID, BuildRecord.InvPackConsumedID, BuildRecord.QuantityUsed, BuildRecord.UnitID, BuildRecord.BuildDT, BuildRecord.IsEdited, BuildRecord.RevisionNo, BuildRecord.BuildMachineStageID, BuildRecord_.Comments, BuildRecord_.LoginID, BuildRecord_.OpenedDT, BuildRecord_.SavedDT, BuildRecord_.EditedBuildRecordID, BuildRecord_.OriginalLoginID, BuildRecord_.Reference1, BuildRecord_.Reference2, BuildRecord_.Reference3, BuildRecord_.Reference4, BuildRecord_.Reference5,  2 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord.BuildRecordID = BuildRecord_.BuildRecordID)   WHERE \$CONDITIONS" --split-by BuildRecord.BuildRecordID --num-mappers 600  --target-dir /MEStemp/BuildRecordALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila BuildRecordALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     BuildRecordALL from BuildRecord, BuildRecord_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/BuildRecordALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/BuildRecordALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT BuildRecord.BuildRecordID, BuildRecord.InvPackCreatedID, BuildRecord.InvPackConsumedID, BuildRecord.QuantityUsed, BuildRecord.UnitID, BuildRecord.BuildDT, BuildRecord.IsEdited, BuildRecord.RevisionNo, BuildRecord.BuildMachineStageID, BuildRecord_.Comments, BuildRecord_.LoginID, BuildRecord_.OpenedDT, BuildRecord_.SavedDT, BuildRecord_.EditedBuildRecordID, BuildRecord_.OriginalLoginID, BuildRecord_.Reference1, BuildRecord_.Reference2, BuildRecord_.Reference3, BuildRecord_.Reference4, BuildRecord_.Reference5,  3 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord.BuildRecordID = BuildRecord_.BuildRecordID)   WHERE \$CONDITIONS" --split-by BuildRecord.BuildRecordID --num-mappers 600  --target-dir /MEStemp/BuildRecordALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule BuildRecordALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     BuildRecordALL from BuildRecord, BuildRecord_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/BuildRecordALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/BuildRecordALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT BuildRecord.BuildRecordID, BuildRecord.InvPackCreatedID, BuildRecord.InvPackConsumedID, BuildRecord.QuantityUsed, BuildRecord.UnitID, BuildRecord.BuildDT, BuildRecord.IsEdited, BuildRecord.RevisionNo, BuildRecord.BuildMachineStageID, BuildRecord_.Comments, BuildRecord_.LoginID, BuildRecord_.OpenedDT, BuildRecord_.SavedDT, BuildRecord_.EditedBuildRecordID, BuildRecord_.OriginalLoginID, BuildRecord_.Reference1, BuildRecord_.Reference2, BuildRecord_.Reference3, BuildRecord_.Reference4, BuildRecord_.Reference5,  4 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord.BuildRecordID = BuildRecord_.BuildRecordID)   WHERE \$CONDITIONS" --split-by BuildRecord.BuildRecordID --num-mappers 600  --target-dir /MEStemp/BuildRecordALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse BuildRecordALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     BuildRecordALL from BuildRecord, BuildRecord_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/BuildRecordALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/BuildRecordALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT BuildRecord.BuildRecordID, BuildRecord.InvPackCreatedID, BuildRecord.InvPackConsumedID, BuildRecord.QuantityUsed, BuildRecord.UnitID, BuildRecord.BuildDT, BuildRecord.IsEdited, BuildRecord.RevisionNo, BuildRecord.BuildMachineStageID, BuildRecord_.Comments, BuildRecord_.LoginID, BuildRecord_.OpenedDT, BuildRecord_.SavedDT, BuildRecord_.EditedBuildRecordID, BuildRecord_.OriginalLoginID, BuildRecord_.Reference1, BuildRecord_.Reference2, BuildRecord_.Reference3, BuildRecord_.Reference4, BuildRecord_.Reference5,  5 as \"org_id\" FROM BuildRecord FULL JOIN BuildRecord_ ON (BuildRecord.BuildRecordID = BuildRecord_.BuildRecordID)   WHERE \$CONDITIONS" --split-by BuildRecord.BuildRecordID --num-mappers 600  --target-dir /MEStemp/BuildRecordALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa BuildRecordALL" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: InventoryLabelALL from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     InventoryLabelALL from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/InventoryLabelALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InventoryLabelALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryLabel.InventoryLabelID, InventoryLabel.MachineStage, InventoryLabel.PartNumber, InventoryLabel.PartType, InventoryLabel.QuantityOrdered, InventoryLabel.WONumber, InventoryLabel.InventoryPackNo, InventoryLabel.CreatedFromDT, InventoryLabel.Quantity, InventoryLabel.Unit, InventoryLabel.Line, InventoryLabel.LabelTemplate, InventoryLabel.LabelsPerInventoryPack, InventoryLabel.ItemsPerLayer, InventoryLabel.LayersPerInventoryPack, InventoryLabel.PrinterURL, InventoryLabel.PrintedDT, InventoryLabel.ItemsPerInventoryPack, InventoryLabel.ScannedDT, InventoryLabel.IsCancelled, InventoryLabel.OrderQuantityPacks, InventoryLabel.LineShortName, InventoryLabel.PackNo, InventoryLabel.IsReprint, InventoryLabel.PartDescription, InventoryLabel.LabelSaveDirectory, InventoryLabel.JobID, InventoryLabel.IsPrintLandscape, InventoryLabel.NoCopies, InventoryLabel_.LabelColour, InventoryLabel_.EANCode, InventoryLabel_.CusNum, InventoryLabel_.PackingCode, InventoryLabel_.CustomerPartNo, InventoryLabel_.CustomerPartDescription, InventoryLabel_.LabelText1, InventoryLabel_.LabelText2, InventoryLabel_.LabelText3, InventoryLabel_.Customer, InventoryLabel_.Address1, InventoryLabel_.Address2, InventoryLabel_.City, InventoryLabel_.County, InventoryLabel_.PostCode, InventoryLabel_.Country, InventoryLabel_custom.InventoryPackID,  1 as \"org_id\" FROM InventoryLabel FULL JOIN InventoryLabel_ ON (InventoryLabel.InventoryLabelID = InventoryLabel_.InventoryLabelID) FULL JOIN InventoryLabel_custom ON (InventoryLabel.InventoryLabelID = InventoryLabel_custom.InventoryLabelID)   WHERE \$CONDITIONS" --split-by InventoryLabel.InventoryLabelID --num-mappers 600  --target-dir /MEStemp/InventoryLabelALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali InventoryLabelALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryLabelALL from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/InventoryLabelALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InventoryLabelALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryLabel.InventoryLabelID, InventoryLabel.MachineStage, InventoryLabel.PartNumber, InventoryLabel.PartType, InventoryLabel.QuantityOrdered, InventoryLabel.WONumber, InventoryLabel.InventoryPackNo, InventoryLabel.CreatedFromDT, InventoryLabel.Quantity, InventoryLabel.Unit, InventoryLabel.Line, InventoryLabel.LabelTemplate, InventoryLabel.LabelsPerInventoryPack, InventoryLabel.ItemsPerLayer, InventoryLabel.LayersPerInventoryPack, InventoryLabel.PrinterURL, InventoryLabel.PrintedDT, InventoryLabel.ItemsPerInventoryPack, InventoryLabel.ScannedDT, InventoryLabel.IsCancelled, InventoryLabel.OrderQuantityPacks, InventoryLabel.LineShortName, InventoryLabel.PackNo, InventoryLabel.IsReprint, InventoryLabel.PartDescription, InventoryLabel.LabelSaveDirectory, InventoryLabel.JobID, InventoryLabel.IsPrintLandscape, InventoryLabel.NoCopies, InventoryLabel_.LabelColour, InventoryLabel_.EANCode, InventoryLabel_.CusNum, InventoryLabel_.PackingCode, InventoryLabel_.CustomerPartNo, InventoryLabel_.CustomerPartDescription, InventoryLabel_.LabelText1, InventoryLabel_.LabelText2, InventoryLabel_.LabelText3, InventoryLabel_.Customer, InventoryLabel_.Address1, InventoryLabel_.Address2, InventoryLabel_.City, InventoryLabel_.County, InventoryLabel_.PostCode, InventoryLabel_.Country, InventoryLabel_custom.InventoryPackID,  2 as \"org_id\" FROM InventoryLabel FULL JOIN InventoryLabel_ ON (InventoryLabel.InventoryLabelID = InventoryLabel_.InventoryLabelID) FULL JOIN InventoryLabel_custom ON (InventoryLabel.InventoryLabelID = InventoryLabel_custom.InventoryLabelID)   WHERE \$CONDITIONS" --split-by InventoryLabel.InventoryLabelID --num-mappers 600  --target-dir /MEStemp/InventoryLabelALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila InventoryLabelALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryLabelALL from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/InventoryLabelALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InventoryLabelALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryLabel.InventoryLabelID, InventoryLabel.MachineStage, InventoryLabel.PartNumber, InventoryLabel.PartType, InventoryLabel.QuantityOrdered, InventoryLabel.WONumber, InventoryLabel.InventoryPackNo, InventoryLabel.CreatedFromDT, InventoryLabel.Quantity, InventoryLabel.Unit, InventoryLabel.Line, InventoryLabel.LabelTemplate, InventoryLabel.LabelsPerInventoryPack, InventoryLabel.ItemsPerLayer, InventoryLabel.LayersPerInventoryPack, InventoryLabel.PrinterURL, InventoryLabel.PrintedDT, InventoryLabel.ItemsPerInventoryPack, InventoryLabel.ScannedDT, InventoryLabel.IsCancelled, InventoryLabel.OrderQuantityPacks, InventoryLabel.LineShortName, InventoryLabel.PackNo, InventoryLabel.IsReprint, InventoryLabel.PartDescription, InventoryLabel.LabelSaveDirectory, InventoryLabel.JobID, InventoryLabel.IsPrintLandscape, InventoryLabel.NoCopies, InventoryLabel_.LabelColour, InventoryLabel_.EANCode, InventoryLabel_.CusNum, InventoryLabel_.PackingCode, InventoryLabel_.CustomerPartNo, InventoryLabel_.CustomerPartDescription, InventoryLabel_.LabelText1, InventoryLabel_.LabelText2, InventoryLabel_.LabelText3, InventoryLabel_.Customer, InventoryLabel_.Address1, InventoryLabel_.Address2, InventoryLabel_.City, InventoryLabel_.County, InventoryLabel_.PostCode, InventoryLabel_.Country, InventoryLabel_custom.InventoryPackID,  3 as \"org_id\" FROM InventoryLabel FULL JOIN InventoryLabel_ ON (InventoryLabel.InventoryLabelID = InventoryLabel_.InventoryLabelID) FULL JOIN InventoryLabel_custom ON (InventoryLabel.InventoryLabelID = InventoryLabel_custom.InventoryLabelID)   WHERE \$CONDITIONS" --split-by InventoryLabel.InventoryLabelID --num-mappers 600  --target-dir /MEStemp/InventoryLabelALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule InventoryLabelALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryLabelALL from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/InventoryLabelALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InventoryLabelALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryLabel.InventoryLabelID, InventoryLabel.MachineStage, InventoryLabel.PartNumber, InventoryLabel.PartType, InventoryLabel.QuantityOrdered, InventoryLabel.WONumber, InventoryLabel.InventoryPackNo, InventoryLabel.CreatedFromDT, InventoryLabel.Quantity, InventoryLabel.Unit, InventoryLabel.Line, InventoryLabel.LabelTemplate, InventoryLabel.LabelsPerInventoryPack, InventoryLabel.ItemsPerLayer, InventoryLabel.LayersPerInventoryPack, InventoryLabel.PrinterURL, InventoryLabel.PrintedDT, InventoryLabel.ItemsPerInventoryPack, InventoryLabel.ScannedDT, InventoryLabel.IsCancelled, InventoryLabel.OrderQuantityPacks, InventoryLabel.LineShortName, InventoryLabel.PackNo, InventoryLabel.IsReprint, InventoryLabel.PartDescription, InventoryLabel.LabelSaveDirectory, InventoryLabel.JobID, InventoryLabel.IsPrintLandscape, InventoryLabel.NoCopies, InventoryLabel_.LabelColour, InventoryLabel_.EANCode, InventoryLabel_.CusNum, InventoryLabel_.PackingCode, InventoryLabel_.CustomerPartNo, InventoryLabel_.CustomerPartDescription, InventoryLabel_.LabelText1, InventoryLabel_.LabelText2, InventoryLabel_.LabelText3, InventoryLabel_.Customer, InventoryLabel_.Address1, InventoryLabel_.Address2, InventoryLabel_.City, InventoryLabel_.County, InventoryLabel_.PostCode, InventoryLabel_.Country, InventoryLabel_custom.InventoryPackID,  4 as \"org_id\" FROM InventoryLabel FULL JOIN InventoryLabel_ ON (InventoryLabel.InventoryLabelID = InventoryLabel_.InventoryLabelID) FULL JOIN InventoryLabel_custom ON (InventoryLabel.InventoryLabelID = InventoryLabel_custom.InventoryLabelID)   WHERE \$CONDITIONS" --split-by InventoryLabel.InventoryLabelID --num-mappers 600  --target-dir /MEStemp/InventoryLabelALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse InventoryLabelALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryLabelALL from InventoryLabel, InventoryLabel_, InventoryLabel_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/InventoryLabelALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InventoryLabelALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryLabel.InventoryLabelID, InventoryLabel.MachineStage, InventoryLabel.PartNumber, InventoryLabel.PartType, InventoryLabel.QuantityOrdered, InventoryLabel.WONumber, InventoryLabel.InventoryPackNo, InventoryLabel.CreatedFromDT, InventoryLabel.Quantity, InventoryLabel.Unit, InventoryLabel.Line, InventoryLabel.LabelTemplate, InventoryLabel.LabelsPerInventoryPack, InventoryLabel.ItemsPerLayer, InventoryLabel.LayersPerInventoryPack, InventoryLabel.PrinterURL, InventoryLabel.PrintedDT, InventoryLabel.ItemsPerInventoryPack, InventoryLabel.ScannedDT, InventoryLabel.IsCancelled, InventoryLabel.OrderQuantityPacks, InventoryLabel.LineShortName, InventoryLabel.PackNo, InventoryLabel.IsReprint, InventoryLabel.PartDescription, InventoryLabel.LabelSaveDirectory, InventoryLabel.JobID, InventoryLabel.IsPrintLandscape, InventoryLabel.NoCopies, InventoryLabel_.LabelColour, InventoryLabel_.EANCode, InventoryLabel_.CusNum, InventoryLabel_.PackingCode, InventoryLabel_.CustomerPartNo, InventoryLabel_.CustomerPartDescription, InventoryLabel_.LabelText1, InventoryLabel_.LabelText2, InventoryLabel_.LabelText3, InventoryLabel_.Customer, InventoryLabel_.Address1, InventoryLabel_.Address2, InventoryLabel_.City, InventoryLabel_.County, InventoryLabel_.PostCode, InventoryLabel_.Country, InventoryLabel_custom.InventoryPackID,  5 as \"org_id\" FROM InventoryLabel FULL JOIN InventoryLabel_ ON (InventoryLabel.InventoryLabelID = InventoryLabel_.InventoryLabelID) FULL JOIN InventoryLabel_custom ON (InventoryLabel.InventoryLabelID = InventoryLabel_custom.InventoryLabelID)   WHERE \$CONDITIONS" --split-by InventoryLabel.InventoryLabelID --num-mappers 600  --target-dir /MEStemp/InventoryLabelALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa InventoryLabelALL" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: InventoryPackALL from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     InventoryPackALL from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/InventoryPackALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InventoryPackALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryPack.InventoryPackID, InventoryPack.InventoryPackNo, InventoryPack.WOID, InventoryPack.JobID, InventoryPack.CreatedFromDT, InventoryPack.CreatedToDT, InventoryPack.CreatedOnMachineStageID, InventoryPack.IsEdited, InventoryPack.RevisionNo, InventoryPack.PartID, InventoryPack.Quantity, InventoryPack.UnitID, InventoryPack.Ignored, InventoryPack.InventoryPackIndex, InventoryPack.CustomerUniqueKey, InventoryPack.ReceivedDT, InventoryPack.BirthDT, InventoryPack.LastBuildRecordID, InventoryPack.msrepl_tran_version, InventoryPack.CurrentQuantity, InventoryPack.QuantityAdjustment, InventoryPack.PositionNumber, InventoryPack.LocationID, InventoryPack.InvStateID, InventoryPack.LocationFromDT, InventoryPack_.Comments, InventoryPack_.LoginID, InventoryPack_.OpenedDT, InventoryPack_.SavedDT, InventoryPack_.OriginalLoginID, InventoryPack_.EditedInventoryPackID, InventoryPack_.Reference1, InventoryPack_.Reference2, InventoryPack_.Reference3, InventoryPack_.Reference4, InventoryPack_.Reference5, InventoryPack_.Reference6, InventoryPack_.Reference7, InventoryPack_.Reference8, InventoryPack_.Reference9, InventoryPack_.Reference10, InventoryPack_.SupplierID, InventoryPack_.SupplierReference, InventoryPack_.UseByDT, InventoryPack_.UseAfterDT, InventoryPack_Custom.Txn_date, InventoryPack_Custom.OracleStatus, InventoryPack_Custom.IntendedWOID, InventoryPack_Custom.FinalWOID, InventoryPack_Custom.OriginalQty, InventoryPack_Custom.Seq_Id, InventoryPack_Custom.From_Subinventory, InventoryPack_Custom.From_Locator, InventoryPack_Custom.To_Subinventory, InventoryPack_Custom.To_Locator, InventoryPack_Custom.ScrappedShiftID, InventoryPack_Custom.LastInventoryLabelID, InventoryPack_Custom.ScrapLocationID, InventoryPack_Custom.MachineLocationID, InventoryPack_Custom.ScrapReasonID, InventoryPack_Custom.ModuleInfoID, InventoryPack_Custom.ResealedDT,  1 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack.InventoryPackID = InventoryPack_.InventoryPackID) FULL JOIN InventoryPack_Custom ON (InventoryPack.InventoryPackID = InventoryPack_Custom.InventoryPackId)   WHERE \$CONDITIONS" --split-by InventoryPack.InventoryPackID --num-mappers 600  --target-dir /MEStemp/InventoryPackALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali InventoryPackALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryPackALL from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/InventoryPackALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InventoryPackALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryPack.InventoryPackID, InventoryPack.InventoryPackNo, InventoryPack.WOID, InventoryPack.JobID, InventoryPack.CreatedFromDT, InventoryPack.CreatedToDT, InventoryPack.CreatedOnMachineStageID, InventoryPack.IsEdited, InventoryPack.RevisionNo, InventoryPack.PartID, InventoryPack.Quantity, InventoryPack.UnitID, InventoryPack.Ignored, InventoryPack.InventoryPackIndex, InventoryPack.CustomerUniqueKey, InventoryPack.ReceivedDT, InventoryPack.BirthDT, InventoryPack.LastBuildRecordID, InventoryPack.msrepl_tran_version, InventoryPack.CurrentQuantity, InventoryPack.QuantityAdjustment, InventoryPack.PositionNumber, InventoryPack.LocationID, InventoryPack.InvStateID, InventoryPack.LocationFromDT, InventoryPack_.Comments, InventoryPack_.LoginID, InventoryPack_.OpenedDT, InventoryPack_.SavedDT, InventoryPack_.OriginalLoginID, InventoryPack_.EditedInventoryPackID, InventoryPack_.Reference1, InventoryPack_.Reference2, InventoryPack_.Reference3, InventoryPack_.Reference4, InventoryPack_.Reference5, InventoryPack_.Reference6, InventoryPack_.Reference7, InventoryPack_.Reference8, InventoryPack_.Reference9, InventoryPack_.Reference10, InventoryPack_.SupplierID, InventoryPack_.SupplierReference, InventoryPack_.UseByDT, InventoryPack_.UseAfterDT, InventoryPack_Custom.Txn_date, InventoryPack_Custom.OracleStatus, InventoryPack_Custom.IntendedWOID, InventoryPack_Custom.FinalWOID, InventoryPack_Custom.OriginalQty, InventoryPack_Custom.Seq_Id, InventoryPack_Custom.From_Subinventory, InventoryPack_Custom.From_Locator, InventoryPack_Custom.To_Subinventory, InventoryPack_Custom.To_Locator, InventoryPack_Custom.ScrappedShiftID, InventoryPack_Custom.LastInventoryLabelID, InventoryPack_Custom.ScrapLocationID, InventoryPack_Custom.MachineLocationID, InventoryPack_Custom.ScrapReasonID, InventoryPack_Custom.ModuleInfoID, InventoryPack_Custom.ResealedDT,  2 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack.InventoryPackID = InventoryPack_.InventoryPackID) FULL JOIN InventoryPack_Custom ON (InventoryPack.InventoryPackID = InventoryPack_Custom.InventoryPackId)   WHERE \$CONDITIONS" --split-by InventoryPack.InventoryPackID --num-mappers 600  --target-dir /MEStemp/InventoryPackALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila InventoryPackALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryPackALL from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/InventoryPackALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InventoryPackALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryPack.InventoryPackID, InventoryPack.InventoryPackNo, InventoryPack.WOID, InventoryPack.JobID, InventoryPack.CreatedFromDT, InventoryPack.CreatedToDT, InventoryPack.CreatedOnMachineStageID, InventoryPack.IsEdited, InventoryPack.RevisionNo, InventoryPack.PartID, InventoryPack.Quantity, InventoryPack.UnitID, InventoryPack.Ignored, InventoryPack.InventoryPackIndex, InventoryPack.CustomerUniqueKey, InventoryPack.ReceivedDT, InventoryPack.BirthDT, InventoryPack.LastBuildRecordID, InventoryPack.msrepl_tran_version, InventoryPack.CurrentQuantity, InventoryPack.QuantityAdjustment, InventoryPack.PositionNumber, InventoryPack.LocationID, InventoryPack.InvStateID, InventoryPack.LocationFromDT, InventoryPack_.Comments, InventoryPack_.LoginID, InventoryPack_.OpenedDT, InventoryPack_.SavedDT, InventoryPack_.OriginalLoginID, InventoryPack_.EditedInventoryPackID, InventoryPack_.Reference1, InventoryPack_.Reference2, InventoryPack_.Reference3, InventoryPack_.Reference4, InventoryPack_.Reference5, InventoryPack_.Reference6, InventoryPack_.Reference7, InventoryPack_.Reference8, InventoryPack_.Reference9, InventoryPack_.Reference10, InventoryPack_.SupplierID, InventoryPack_.SupplierReference, InventoryPack_.UseByDT, InventoryPack_.UseAfterDT, InventoryPack_Custom.Txn_date, InventoryPack_Custom.OracleStatus, InventoryPack_Custom.IntendedWOID, InventoryPack_Custom.FinalWOID, InventoryPack_Custom.OriginalQty, InventoryPack_Custom.Seq_Id, InventoryPack_Custom.From_Subinventory, InventoryPack_Custom.From_Locator, InventoryPack_Custom.To_Subinventory, InventoryPack_Custom.To_Locator, InventoryPack_Custom.ScrappedShiftID, InventoryPack_Custom.LastInventoryLabelID, InventoryPack_Custom.ScrapLocationID, InventoryPack_Custom.MachineLocationID, InventoryPack_Custom.ScrapReasonID, InventoryPack_Custom.ModuleInfoID, InventoryPack_Custom.ResealedDT,  3 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack.InventoryPackID = InventoryPack_.InventoryPackID) FULL JOIN InventoryPack_Custom ON (InventoryPack.InventoryPackID = InventoryPack_Custom.InventoryPackId)   WHERE \$CONDITIONS" --split-by InventoryPack.InventoryPackID --num-mappers 600  --target-dir /MEStemp/InventoryPackALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule InventoryPackALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryPackALL from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/InventoryPackALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InventoryPackALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryPack.InventoryPackID, InventoryPack.InventoryPackNo, InventoryPack.WOID, InventoryPack.JobID, InventoryPack.CreatedFromDT, InventoryPack.CreatedToDT, InventoryPack.CreatedOnMachineStageID, InventoryPack.IsEdited, InventoryPack.RevisionNo, InventoryPack.PartID, InventoryPack.Quantity, InventoryPack.UnitID, InventoryPack.Ignored, InventoryPack.InventoryPackIndex, InventoryPack.CustomerUniqueKey, InventoryPack.ReceivedDT, InventoryPack.BirthDT, InventoryPack.LastBuildRecordID, InventoryPack.msrepl_tran_version, InventoryPack.CurrentQuantity, InventoryPack.QuantityAdjustment, InventoryPack.PositionNumber, InventoryPack.LocationID, InventoryPack.InvStateID, InventoryPack.LocationFromDT, InventoryPack_.Comments, InventoryPack_.LoginID, InventoryPack_.OpenedDT, InventoryPack_.SavedDT, InventoryPack_.OriginalLoginID, InventoryPack_.EditedInventoryPackID, InventoryPack_.Reference1, InventoryPack_.Reference2, InventoryPack_.Reference3, InventoryPack_.Reference4, InventoryPack_.Reference5, InventoryPack_.Reference6, InventoryPack_.Reference7, InventoryPack_.Reference8, InventoryPack_.Reference9, InventoryPack_.Reference10, InventoryPack_.SupplierID, InventoryPack_.SupplierReference, InventoryPack_.UseByDT, InventoryPack_.UseAfterDT, InventoryPack_Custom.Txn_date, InventoryPack_Custom.OracleStatus, InventoryPack_Custom.IntendedWOID, InventoryPack_Custom.FinalWOID, InventoryPack_Custom.OriginalQty, InventoryPack_Custom.Seq_Id, InventoryPack_Custom.From_Subinventory, InventoryPack_Custom.From_Locator, InventoryPack_Custom.To_Subinventory, InventoryPack_Custom.To_Locator, InventoryPack_Custom.ScrappedShiftID, InventoryPack_Custom.LastInventoryLabelID, InventoryPack_Custom.ScrapLocationID, InventoryPack_Custom.MachineLocationID, InventoryPack_Custom.ScrapReasonID, InventoryPack_Custom.ModuleInfoID, InventoryPack_Custom.ResealedDT,  4 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack.InventoryPackID = InventoryPack_.InventoryPackID) FULL JOIN InventoryPack_Custom ON (InventoryPack.InventoryPackID = InventoryPack_Custom.InventoryPackId)   WHERE \$CONDITIONS" --split-by InventoryPack.InventoryPackID --num-mappers 600  --target-dir /MEStemp/InventoryPackALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse InventoryPackALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     InventoryPackALL from InventoryPack, InventoryPack_, InventoryPack_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/InventoryPackALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/InventoryPackALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InventoryPack.InventoryPackID, InventoryPack.InventoryPackNo, InventoryPack.WOID, InventoryPack.JobID, InventoryPack.CreatedFromDT, InventoryPack.CreatedToDT, InventoryPack.CreatedOnMachineStageID, InventoryPack.IsEdited, InventoryPack.RevisionNo, InventoryPack.PartID, InventoryPack.Quantity, InventoryPack.UnitID, InventoryPack.Ignored, InventoryPack.InventoryPackIndex, InventoryPack.CustomerUniqueKey, InventoryPack.ReceivedDT, InventoryPack.BirthDT, InventoryPack.LastBuildRecordID, InventoryPack.msrepl_tran_version, InventoryPack.CurrentQuantity, InventoryPack.QuantityAdjustment, InventoryPack.PositionNumber, InventoryPack.LocationID, InventoryPack.InvStateID, InventoryPack.LocationFromDT, InventoryPack_.Comments, InventoryPack_.LoginID, InventoryPack_.OpenedDT, InventoryPack_.SavedDT, InventoryPack_.OriginalLoginID, InventoryPack_.EditedInventoryPackID, InventoryPack_.Reference1, InventoryPack_.Reference2, InventoryPack_.Reference3, InventoryPack_.Reference4, InventoryPack_.Reference5, InventoryPack_.Reference6, InventoryPack_.Reference7, InventoryPack_.Reference8, InventoryPack_.Reference9, InventoryPack_.Reference10, InventoryPack_.SupplierID, InventoryPack_.SupplierReference, InventoryPack_.UseByDT, InventoryPack_.UseAfterDT, InventoryPack_Custom.Txn_date, InventoryPack_Custom.OracleStatus, InventoryPack_Custom.IntendedWOID, InventoryPack_Custom.FinalWOID, InventoryPack_Custom.OriginalQty, InventoryPack_Custom.Seq_Id, InventoryPack_Custom.From_Subinventory, InventoryPack_Custom.From_Locator, InventoryPack_Custom.To_Subinventory, InventoryPack_Custom.To_Locator, InventoryPack_Custom.ScrappedShiftID, InventoryPack_Custom.LastInventoryLabelID, InventoryPack_Custom.ScrapLocationID, InventoryPack_Custom.MachineLocationID, InventoryPack_Custom.ScrapReasonID, InventoryPack_Custom.ModuleInfoID, InventoryPack_Custom.ResealedDT,  5 as \"org_id\" FROM InventoryPack FULL JOIN InventoryPack_ ON (InventoryPack.InventoryPackID = InventoryPack_.InventoryPackID) FULL JOIN InventoryPack_Custom ON (InventoryPack.InventoryPackID = InventoryPack_Custom.InventoryPackId)   WHERE \$CONDITIONS" --split-by InventoryPack.InventoryPackID --num-mappers 600  --target-dir /MEStemp/InventoryPackALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa InventoryPackALL" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: JobALL from Job, Job_, Job_Custom"
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     JobALL from Job, Job_, Job_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/JobALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/JobALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Job.JobID, Job.WOID, Job.RfJobStatusID, Job.DeadlineDT, Job.ActualStartDT, Job.ActualEndDT, Job.PlannedStartDT, Job.PlannedEndDT, Job.PlannedDuration, Job.EstimatedStartDT, Job.EstimatedEndDT, Job.EstimatedDuration, Job.ScheduledSequence, Job.LineID, Job.ProductionStartDT, Job.ProductionEndDT, Job.TheoreticalCycleTime, Job.BudgetChangeOver, Job.QuantityOrdered, Job.IsCalculated, Job.LineGroupID, Job_.JobInstructions, Job_.ReleaseDT, Job_.ReleaseLoginID, Job_.StartLoginID, Job_.EndLoginID, Job_.Comments, Job_.ModifiedDt, Job_.ModifiedLoginID, Job_.StoppedReason, Job_.SkippedReason, Job_.SkippedDT,  1 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job.JobID = Job_.JobID) FULL JOIN Job_Custom ON (Job.JobID = Job_Custom.JobID)   WHERE \$CONDITIONS" --split-by Job.JobID --num-mappers 600  --target-dir /MEStemp/JobALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali JobALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     JobALL from Job, Job_, Job_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/JobALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/JobALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Job.JobID, Job.WOID, Job.RfJobStatusID, Job.DeadlineDT, Job.ActualStartDT, Job.ActualEndDT, Job.PlannedStartDT, Job.PlannedEndDT, Job.PlannedDuration, Job.EstimatedStartDT, Job.EstimatedEndDT, Job.EstimatedDuration, Job.ScheduledSequence, Job.LineID, Job.ProductionStartDT, Job.ProductionEndDT, Job.TheoreticalCycleTime, Job.BudgetChangeOver, Job.QuantityOrdered, Job.IsCalculated, Job.LineGroupID, Job_.JobInstructions, Job_.ReleaseDT, Job_.ReleaseLoginID, Job_.StartLoginID, Job_.EndLoginID, Job_.Comments, Job_.ModifiedDt, Job_.ModifiedLoginID, Job_.StoppedReason, Job_.SkippedReason, Job_.SkippedDT,  2 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job.JobID = Job_.JobID) FULL JOIN Job_Custom ON (Job.JobID = Job_Custom.JobID)   WHERE \$CONDITIONS" --split-by Job.JobID --num-mappers 600  --target-dir /MEStemp/JobALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila JobALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     JobALL from Job, Job_, Job_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/JobALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/JobALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Job.JobID, Job.WOID, Job.RfJobStatusID, Job.DeadlineDT, Job.ActualStartDT, Job.ActualEndDT, Job.PlannedStartDT, Job.PlannedEndDT, Job.PlannedDuration, Job.EstimatedStartDT, Job.EstimatedEndDT, Job.EstimatedDuration, Job.ScheduledSequence, Job.LineID, Job.ProductionStartDT, Job.ProductionEndDT, Job.TheoreticalCycleTime, Job.BudgetChangeOver, Job.QuantityOrdered, Job.IsCalculated, Job.LineGroupID, Job_.JobInstructions, Job_.ReleaseDT, Job_.ReleaseLoginID, Job_.StartLoginID, Job_.EndLoginID, Job_.Comments, Job_.ModifiedDt, Job_.ModifiedLoginID, Job_.StoppedReason, Job_.SkippedReason, Job_.SkippedDT,  3 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job.JobID = Job_.JobID) FULL JOIN Job_Custom ON (Job.JobID = Job_Custom.JobID)   WHERE \$CONDITIONS" --split-by Job.JobID --num-mappers 600  --target-dir /MEStemp/JobALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule JobALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     JobALL from Job, Job_, Job_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/JobALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/JobALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Job.JobID, Job.WOID, Job.RfJobStatusID, Job.DeadlineDT, Job.ActualStartDT, Job.ActualEndDT, Job.PlannedStartDT, Job.PlannedEndDT, Job.PlannedDuration, Job.EstimatedStartDT, Job.EstimatedEndDT, Job.EstimatedDuration, Job.ScheduledSequence, Job.LineID, Job.ProductionStartDT, Job.ProductionEndDT, Job.TheoreticalCycleTime, Job.BudgetChangeOver, Job.QuantityOrdered, Job.IsCalculated, Job.LineGroupID, Job_.JobInstructions, Job_.ReleaseDT, Job_.ReleaseLoginID, Job_.StartLoginID, Job_.EndLoginID, Job_.Comments, Job_.ModifiedDt, Job_.ModifiedLoginID, Job_.StoppedReason, Job_.SkippedReason, Job_.SkippedDT,  4 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job.JobID = Job_.JobID) FULL JOIN Job_Custom ON (Job.JobID = Job_Custom.JobID)   WHERE \$CONDITIONS" --split-by Job.JobID --num-mappers 600  --target-dir /MEStemp/JobALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse JobALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     JobALL from Job, Job_, Job_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/JobALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/JobALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Job.JobID, Job.WOID, Job.RfJobStatusID, Job.DeadlineDT, Job.ActualStartDT, Job.ActualEndDT, Job.PlannedStartDT, Job.PlannedEndDT, Job.PlannedDuration, Job.EstimatedStartDT, Job.EstimatedEndDT, Job.EstimatedDuration, Job.ScheduledSequence, Job.LineID, Job.ProductionStartDT, Job.ProductionEndDT, Job.TheoreticalCycleTime, Job.BudgetChangeOver, Job.QuantityOrdered, Job.IsCalculated, Job.LineGroupID, Job_.JobInstructions, Job_.ReleaseDT, Job_.ReleaseLoginID, Job_.StartLoginID, Job_.EndLoginID, Job_.Comments, Job_.ModifiedDt, Job_.ModifiedLoginID, Job_.StoppedReason, Job_.SkippedReason, Job_.SkippedDT,  5 as \"org_id\" FROM Job FULL JOIN Job_ ON (Job.JobID = Job_.JobID) FULL JOIN Job_Custom ON (Job.JobID = Job_Custom.JobID)   WHERE \$CONDITIONS" --split-by Job.JobID --num-mappers 600  --target-dir /MEStemp/JobALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa JobALL" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: LineALL from Line, Line_"
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     LineALL from Line, Line_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/LineALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Line.LineID, Line.Line, Line.Description, Line.LineTypeID, Line.IsRetired, Line.RfIntervalModeID, Line.IsOEEInventoryIsolation, Line.IsOEEInventoryReintroduction, Line.IsCountOutputInventory, Line.IsCountInputInventory, Line.IsLineInfoSweepEnabled, Line.IsWOOnSingleJob, Line.LineShortName, Line.CurrentLineInfoID, Line.LastLineInfoID, Line.RfInvCreatedDateModeID, Line.RfEndJobInvModeID, Line.CurrentJobID, Line.IsScrapAsQualityLoss, Line.IsScrapInProductionCounts, Line.LineDownCostPerHour, Line.IsContributeLineGroupOutput, Line.IsContributeLineGroupWaste, Line.IsContributeLineGroupDowntime, Line_.OEETarget, Line_.WasteTarget, Line_.Reference1, Line_.Reference2, Line_.Reference3, Line_.Reference4, Line_.Reference5,  1 as \"org_id\" FROM Line FULL JOIN Line_ ON (Line.LineID = Line_.LineID)   WHERE \$CONDITIONS" --split-by Line.LineID --num-mappers 600  --target-dir /MEStemp/LineALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali LineALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineALL from Line, Line_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/LineALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Line.LineID, Line.Line, Line.Description, Line.LineTypeID, Line.IsRetired, Line.RfIntervalModeID, Line.IsOEEInventoryIsolation, Line.IsOEEInventoryReintroduction, Line.IsCountOutputInventory, Line.IsCountInputInventory, Line.IsLineInfoSweepEnabled, Line.IsWOOnSingleJob, Line.LineShortName, Line.CurrentLineInfoID, Line.LastLineInfoID, Line.RfInvCreatedDateModeID, Line.RfEndJobInvModeID, Line.CurrentJobID, Line.IsScrapAsQualityLoss, Line.IsScrapInProductionCounts, Line.LineDownCostPerHour, Line.IsContributeLineGroupOutput, Line.IsContributeLineGroupWaste, Line.IsContributeLineGroupDowntime, Line_.OEETarget, Line_.WasteTarget, Line_.Reference1, Line_.Reference2, Line_.Reference3, Line_.Reference4, Line_.Reference5,  2 as \"org_id\" FROM Line FULL JOIN Line_ ON (Line.LineID = Line_.LineID)   WHERE \$CONDITIONS" --split-by Line.LineID --num-mappers 600  --target-dir /MEStemp/LineALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila LineALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineALL from Line, Line_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/LineALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Line.LineID, Line.Line, Line.Description, Line.LineTypeID, Line.IsRetired, Line.RfIntervalModeID, Line.IsOEEInventoryIsolation, Line.IsOEEInventoryReintroduction, Line.IsCountOutputInventory, Line.IsCountInputInventory, Line.IsLineInfoSweepEnabled, Line.IsWOOnSingleJob, Line.LineShortName, Line.CurrentLineInfoID, Line.LastLineInfoID, Line.RfInvCreatedDateModeID, Line.RfEndJobInvModeID, Line.CurrentJobID, Line.IsScrapAsQualityLoss, Line.IsScrapInProductionCounts, Line.LineDownCostPerHour, Line.IsContributeLineGroupOutput, Line.IsContributeLineGroupWaste, Line.IsContributeLineGroupDowntime, Line_.OEETarget, Line_.WasteTarget, Line_.Reference1, Line_.Reference2, Line_.Reference3, Line_.Reference4, Line_.Reference5,  3 as \"org_id\" FROM Line FULL JOIN Line_ ON (Line.LineID = Line_.LineID)   WHERE \$CONDITIONS" --split-by Line.LineID --num-mappers 600  --target-dir /MEStemp/LineALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule LineALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineALL from Line, Line_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/LineALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Line.LineID, Line.Line, Line.Description, Line.LineTypeID, Line.IsRetired, Line.RfIntervalModeID, Line.IsOEEInventoryIsolation, Line.IsOEEInventoryReintroduction, Line.IsCountOutputInventory, Line.IsCountInputInventory, Line.IsLineInfoSweepEnabled, Line.IsWOOnSingleJob, Line.LineShortName, Line.CurrentLineInfoID, Line.LastLineInfoID, Line.RfInvCreatedDateModeID, Line.RfEndJobInvModeID, Line.CurrentJobID, Line.IsScrapAsQualityLoss, Line.IsScrapInProductionCounts, Line.LineDownCostPerHour, Line.IsContributeLineGroupOutput, Line.IsContributeLineGroupWaste, Line.IsContributeLineGroupDowntime, Line_.OEETarget, Line_.WasteTarget, Line_.Reference1, Line_.Reference2, Line_.Reference3, Line_.Reference4, Line_.Reference5,  4 as \"org_id\" FROM Line FULL JOIN Line_ ON (Line.LineID = Line_.LineID)   WHERE \$CONDITIONS" --split-by Line.LineID --num-mappers 600  --target-dir /MEStemp/LineALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse LineALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LineALL from Line, Line_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/LineALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LineALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Line.LineID, Line.Line, Line.Description, Line.LineTypeID, Line.IsRetired, Line.RfIntervalModeID, Line.IsOEEInventoryIsolation, Line.IsOEEInventoryReintroduction, Line.IsCountOutputInventory, Line.IsCountInputInventory, Line.IsLineInfoSweepEnabled, Line.IsWOOnSingleJob, Line.LineShortName, Line.CurrentLineInfoID, Line.LastLineInfoID, Line.RfInvCreatedDateModeID, Line.RfEndJobInvModeID, Line.CurrentJobID, Line.IsScrapAsQualityLoss, Line.IsScrapInProductionCounts, Line.LineDownCostPerHour, Line.IsContributeLineGroupOutput, Line.IsContributeLineGroupWaste, Line.IsContributeLineGroupDowntime, Line_.OEETarget, Line_.WasteTarget, Line_.Reference1, Line_.Reference2, Line_.Reference3, Line_.Reference4, Line_.Reference5,  5 as \"org_id\" FROM Line FULL JOIN Line_ ON (Line.LineID = Line_.LineID)   WHERE \$CONDITIONS" --split-by Line.LineID --num-mappers 600  --target-dir /MEStemp/LineALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa LineALL" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: LocationAll from Location, LocationType"
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     LocationAll from Location, LocationType"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/LocationAll/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LocationAll already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Location.LocationID, Location.Location, Location.LocationTypeID, Location.IsRetired, Location.MaxQuantity, Location.LocationCode, Location.Description, LocationType.LocationType, LocationType.LocationTypeCode,  1 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location.LocationID = LocationType.LocationTypeID)   WHERE \$CONDITIONS" --split-by Location.LocationID --num-mappers 600  --target-dir /MEStemp/LocationAll/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali LocationAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LocationAll from Location, LocationType"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/LocationAll/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LocationAll already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Location.LocationID, Location.Location, Location.LocationTypeID, Location.IsRetired, Location.MaxQuantity, Location.LocationCode, Location.Description, LocationType.LocationType, LocationType.LocationTypeCode,  2 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location.LocationID = LocationType.LocationTypeID)   WHERE \$CONDITIONS" --split-by Location.LocationID --num-mappers 600  --target-dir /MEStemp/LocationAll/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila LocationAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LocationAll from Location, LocationType"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/LocationAll/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LocationAll already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Location.LocationID, Location.Location, Location.LocationTypeID, Location.IsRetired, Location.MaxQuantity, Location.LocationCode, Location.Description, LocationType.LocationType, LocationType.LocationTypeCode,  3 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location.LocationID = LocationType.LocationTypeID)   WHERE \$CONDITIONS" --split-by Location.LocationID --num-mappers 600  --target-dir /MEStemp/LocationAll/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule LocationAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LocationAll from Location, LocationType"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/LocationAll/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LocationAll already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Location.LocationID, Location.Location, Location.LocationTypeID, Location.IsRetired, Location.MaxQuantity, Location.LocationCode, Location.Description, LocationType.LocationType, LocationType.LocationTypeCode,  4 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location.LocationID = LocationType.LocationTypeID)   WHERE \$CONDITIONS" --split-by Location.LocationID --num-mappers 600  --target-dir /MEStemp/LocationAll/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse LocationAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     LocationAll from Location, LocationType"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/LocationAll/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/LocationAll already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Location.LocationID, Location.Location, Location.LocationTypeID, Location.IsRetired, Location.MaxQuantity, Location.LocationCode, Location.Description, LocationType.LocationType, LocationType.LocationTypeCode,  5 as \"org_id\" FROM Location FULL JOIN LocationType ON (Location.LocationID = LocationType.LocationTypeID)   WHERE \$CONDITIONS" --split-by Location.LocationID --num-mappers 600  --target-dir /MEStemp/LocationAll/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa LocationAll" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: MachineStageAll from MachineStage, MachineStage_Custom"
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     MachineStageAll from MachineStage, MachineStage_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/MachineStageAll/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStageAll already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStage.MachineStageID, MachineStage.MachineStageTypeID, MachineStage.Name, MachineStage.IsRetired, MachineStage.DepartmentID, MachineStage.Description, MachineStage.CurrentShiftPatternID, MachineStage.NoHeads, MachineStage.IsOEEBottleNeck, MachineStage.IsProductionOutput, MachineStage.MachineStopID, MachineStage.StoppedScreenThreshold, MachineStage.LineSectionID, MachineStage.IsDiscrete, MachineStage.RfDowntimeCollectionModeID, MachineStage.RfSpoilageCollectionModeID, MachineStage.RfProductionCollectionModeID, MachineStage.LastBuildRecordID, MachineStage.CurrentJobID, MachineStage_Custom.ModuleDatabase, MachineStage_Custom.IntendedWOID, MachineStage_Custom.MachineStageCode, MachineStage_Custom.CurrentLaminateSize, MachineStage_Custom.Color, MachineStage_Custom.ModifiedDT, MachineStage_Custom.CleanState, MachineStage_Custom.CleaningCycleNo, MachineStage_Custom.CleaningLaminatePartID, MachineStage_Custom.CleaningLaminateSize,  1 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage.MachineStageID = MachineStage_Custom.MachineStageID)   WHERE \$CONDITIONS" --split-by MachineStage.MachineStageID --num-mappers 600  --target-dir /MEStemp/MachineStageAll/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali MachineStageAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStageAll from MachineStage, MachineStage_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/MachineStageAll/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStageAll already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStage.MachineStageID, MachineStage.MachineStageTypeID, MachineStage.Name, MachineStage.IsRetired, MachineStage.DepartmentID, MachineStage.Description, MachineStage.CurrentShiftPatternID, MachineStage.NoHeads, MachineStage.IsOEEBottleNeck, MachineStage.IsProductionOutput, MachineStage.MachineStopID, MachineStage.StoppedScreenThreshold, MachineStage.LineSectionID, MachineStage.IsDiscrete, MachineStage.RfDowntimeCollectionModeID, MachineStage.RfSpoilageCollectionModeID, MachineStage.RfProductionCollectionModeID, MachineStage.LastBuildRecordID, MachineStage.CurrentJobID, MachineStage_Custom.ModuleDatabase, MachineStage_Custom.IntendedWOID, MachineStage_Custom.MachineStageCode, MachineStage_Custom.CurrentLaminateSize, MachineStage_Custom.Color, MachineStage_Custom.ModifiedDT, MachineStage_Custom.CleanState, MachineStage_Custom.CleaningCycleNo, MachineStage_Custom.CleaningLaminatePartID, MachineStage_Custom.CleaningLaminateSize,  2 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage.MachineStageID = MachineStage_Custom.MachineStageID)   WHERE \$CONDITIONS" --split-by MachineStage.MachineStageID --num-mappers 600  --target-dir /MEStemp/MachineStageAll/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila MachineStageAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStageAll from MachineStage, MachineStage_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/MachineStageAll/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStageAll already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStage.MachineStageID, MachineStage.MachineStageTypeID, MachineStage.Name, MachineStage.IsRetired, MachineStage.DepartmentID, MachineStage.Description, MachineStage.CurrentShiftPatternID, MachineStage.NoHeads, MachineStage.IsOEEBottleNeck, MachineStage.IsProductionOutput, MachineStage.MachineStopID, MachineStage.StoppedScreenThreshold, MachineStage.LineSectionID, MachineStage.IsDiscrete, MachineStage.RfDowntimeCollectionModeID, MachineStage.RfSpoilageCollectionModeID, MachineStage.RfProductionCollectionModeID, MachineStage.LastBuildRecordID, MachineStage.CurrentJobID, MachineStage_Custom.ModuleDatabase, MachineStage_Custom.IntendedWOID, MachineStage_Custom.MachineStageCode, MachineStage_Custom.CurrentLaminateSize, MachineStage_Custom.Color, MachineStage_Custom.ModifiedDT, MachineStage_Custom.CleanState, MachineStage_Custom.CleaningCycleNo, MachineStage_Custom.CleaningLaminatePartID, MachineStage_Custom.CleaningLaminateSize,  3 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage.MachineStageID = MachineStage_Custom.MachineStageID)   WHERE \$CONDITIONS" --split-by MachineStage.MachineStageID --num-mappers 600  --target-dir /MEStemp/MachineStageAll/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule MachineStageAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStageAll from MachineStage, MachineStage_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/MachineStageAll/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStageAll already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStage.MachineStageID, MachineStage.MachineStageTypeID, MachineStage.Name, MachineStage.IsRetired, MachineStage.DepartmentID, MachineStage.Description, MachineStage.CurrentShiftPatternID, MachineStage.NoHeads, MachineStage.IsOEEBottleNeck, MachineStage.IsProductionOutput, MachineStage.MachineStopID, MachineStage.StoppedScreenThreshold, MachineStage.LineSectionID, MachineStage.IsDiscrete, MachineStage.RfDowntimeCollectionModeID, MachineStage.RfSpoilageCollectionModeID, MachineStage.RfProductionCollectionModeID, MachineStage.LastBuildRecordID, MachineStage.CurrentJobID, MachineStage_Custom.ModuleDatabase, MachineStage_Custom.IntendedWOID, MachineStage_Custom.MachineStageCode, MachineStage_Custom.CurrentLaminateSize, MachineStage_Custom.Color, MachineStage_Custom.ModifiedDT, MachineStage_Custom.CleanState, MachineStage_Custom.CleaningCycleNo, MachineStage_Custom.CleaningLaminatePartID, MachineStage_Custom.CleaningLaminateSize,  4 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage.MachineStageID = MachineStage_Custom.MachineStageID)   WHERE \$CONDITIONS" --split-by MachineStage.MachineStageID --num-mappers 600  --target-dir /MEStemp/MachineStageAll/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse MachineStageAll" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     MachineStageAll from MachineStage, MachineStage_Custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/MachineStageAll/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/MachineStageAll already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStage.MachineStageID, MachineStage.MachineStageTypeID, MachineStage.Name, MachineStage.IsRetired, MachineStage.DepartmentID, MachineStage.Description, MachineStage.CurrentShiftPatternID, MachineStage.NoHeads, MachineStage.IsOEEBottleNeck, MachineStage.IsProductionOutput, MachineStage.MachineStopID, MachineStage.StoppedScreenThreshold, MachineStage.LineSectionID, MachineStage.IsDiscrete, MachineStage.RfDowntimeCollectionModeID, MachineStage.RfSpoilageCollectionModeID, MachineStage.RfProductionCollectionModeID, MachineStage.LastBuildRecordID, MachineStage.CurrentJobID, MachineStage_Custom.ModuleDatabase, MachineStage_Custom.IntendedWOID, MachineStage_Custom.MachineStageCode, MachineStage_Custom.CurrentLaminateSize, MachineStage_Custom.Color, MachineStage_Custom.ModifiedDT, MachineStage_Custom.CleanState, MachineStage_Custom.CleaningCycleNo, MachineStage_Custom.CleaningLaminatePartID, MachineStage_Custom.CleaningLaminateSize,  5 as \"org_id\" FROM MachineStage FULL JOIN MachineStage_Custom ON (MachineStage.MachineStageID = MachineStage_Custom.MachineStageID)   WHERE \$CONDITIONS" --split-by MachineStage.MachineStageID --num-mappers 600  --target-dir /MEStemp/MachineStageAll/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa MachineStageAll" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: PartALL from Part, Part_, Part_custom"
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     PartALL from Part, Part_, Part_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/PartALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Part.PartID, Part.PartNumber, Part.Description, Part.IsRetired, Part.BaseUnitID, Part.PartTypeID, Part.Reference1, Part.Reference2, Part.Reference3, Part.Reference4, Part.Reference5, Part.Variant1, Part.Variant2, Part.Variant3, Part.Variant4, Part.Variant5, Part.Variant6, Part.Variant7, Part.Variant8, Part.Variant9, Part.Variant10, Part.Variant11, Part.Variant12, Part.Variant13, Part.Variant14, Part.Variant15, Part.Variant16, Part.Variant17, Part.Variant18, Part.Variant19, Part.Variant20, Part_.TheoreticalSpeed, Part_.LabelsPerInventoryPack, Part_.ItemsPerInventoryPack, Part_.ItemsPerLayer, Part_.LayersPerInventoryPack, Part_.PackingCode, Part_.LabelTemplate, Part_.ProductionInstructions, Part_.QualityInstructions, Part_.CustomerPartNo, Part_.CustomerPartDescription, Part_.LabelText1, Part_.LabelText2, Part_.LabelText3, Part_.UnitPrice1, Part_.UnitPrice2, Part_.LegacyPartNo, Part_.CreateDT, Part_.ModifiedDT, Part_.LoginID, Part_.PartRevisionNo, Part_.PartClassificationID, Part_.LastPurchaseCost, Part_.AveragePurchaseCost, Part_.StandardPurchaseCost, Part_.StandardManufactureCost, Part_.StandardSaleCost, Part_.PartSubClassificationID, Part_.CreatedInvUseByPeriod, Part_.CreatedInvUseAfterPeriod, Part_custom.Txn_date, Part_custom.Inventory_Item_Id, Part_custom.Item_Type_Description,  1 as \"org_id\" FROM Part FULL JOIN Part_ ON (Part.PartID = Part_.PartID) FULL JOIN Part_custom ON (Part.PartID = Part_custom.PartID)   WHERE \$CONDITIONS" --split-by Part.PartID --num-mappers 600  --target-dir /MEStemp/PartALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali PartALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartALL from Part, Part_, Part_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/PartALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Part.PartID, Part.PartNumber, Part.Description, Part.IsRetired, Part.BaseUnitID, Part.PartTypeID, Part.Reference1, Part.Reference2, Part.Reference3, Part.Reference4, Part.Reference5, Part.Variant1, Part.Variant2, Part.Variant3, Part.Variant4, Part.Variant5, Part.Variant6, Part.Variant7, Part.Variant8, Part.Variant9, Part.Variant10, Part.Variant11, Part.Variant12, Part.Variant13, Part.Variant14, Part.Variant15, Part.Variant16, Part.Variant17, Part.Variant18, Part.Variant19, Part.Variant20, Part_.TheoreticalSpeed, Part_.LabelsPerInventoryPack, Part_.ItemsPerInventoryPack, Part_.ItemsPerLayer, Part_.LayersPerInventoryPack, Part_.PackingCode, Part_.LabelTemplate, Part_.ProductionInstructions, Part_.QualityInstructions, Part_.CustomerPartNo, Part_.CustomerPartDescription, Part_.LabelText1, Part_.LabelText2, Part_.LabelText3, Part_.UnitPrice1, Part_.UnitPrice2, Part_.LegacyPartNo, Part_.CreateDT, Part_.ModifiedDT, Part_.LoginID, Part_.PartRevisionNo, Part_.PartClassificationID, Part_.LastPurchaseCost, Part_.AveragePurchaseCost, Part_.StandardPurchaseCost, Part_.StandardManufactureCost, Part_.StandardSaleCost, Part_.PartSubClassificationID, Part_.CreatedInvUseByPeriod, Part_.CreatedInvUseAfterPeriod, Part_custom.Txn_date, Part_custom.Inventory_Item_Id, Part_custom.Item_Type_Description,  2 as \"org_id\" FROM Part FULL JOIN Part_ ON (Part.PartID = Part_.PartID) FULL JOIN Part_custom ON (Part.PartID = Part_custom.PartID)   WHERE \$CONDITIONS" --split-by Part.PartID --num-mappers 600  --target-dir /MEStemp/PartALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila PartALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartALL from Part, Part_, Part_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/PartALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Part.PartID, Part.PartNumber, Part.Description, Part.IsRetired, Part.BaseUnitID, Part.PartTypeID, Part.Reference1, Part.Reference2, Part.Reference3, Part.Reference4, Part.Reference5, Part.Variant1, Part.Variant2, Part.Variant3, Part.Variant4, Part.Variant5, Part.Variant6, Part.Variant7, Part.Variant8, Part.Variant9, Part.Variant10, Part.Variant11, Part.Variant12, Part.Variant13, Part.Variant14, Part.Variant15, Part.Variant16, Part.Variant17, Part.Variant18, Part.Variant19, Part.Variant20, Part_.TheoreticalSpeed, Part_.LabelsPerInventoryPack, Part_.ItemsPerInventoryPack, Part_.ItemsPerLayer, Part_.LayersPerInventoryPack, Part_.PackingCode, Part_.LabelTemplate, Part_.ProductionInstructions, Part_.QualityInstructions, Part_.CustomerPartNo, Part_.CustomerPartDescription, Part_.LabelText1, Part_.LabelText2, Part_.LabelText3, Part_.UnitPrice1, Part_.UnitPrice2, Part_.LegacyPartNo, Part_.CreateDT, Part_.ModifiedDT, Part_.LoginID, Part_.PartRevisionNo, Part_.PartClassificationID, Part_.LastPurchaseCost, Part_.AveragePurchaseCost, Part_.StandardPurchaseCost, Part_.StandardManufactureCost, Part_.StandardSaleCost, Part_.PartSubClassificationID, Part_.CreatedInvUseByPeriod, Part_.CreatedInvUseAfterPeriod, Part_custom.Txn_date, Part_custom.Inventory_Item_Id, Part_custom.Item_Type_Description,  3 as \"org_id\" FROM Part FULL JOIN Part_ ON (Part.PartID = Part_.PartID) FULL JOIN Part_custom ON (Part.PartID = Part_custom.PartID)   WHERE \$CONDITIONS" --split-by Part.PartID --num-mappers 600  --target-dir /MEStemp/PartALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule PartALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartALL from Part, Part_, Part_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/PartALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Part.PartID, Part.PartNumber, Part.Description, Part.IsRetired, Part.BaseUnitID, Part.PartTypeID, Part.Reference1, Part.Reference2, Part.Reference3, Part.Reference4, Part.Reference5, Part.Variant1, Part.Variant2, Part.Variant3, Part.Variant4, Part.Variant5, Part.Variant6, Part.Variant7, Part.Variant8, Part.Variant9, Part.Variant10, Part.Variant11, Part.Variant12, Part.Variant13, Part.Variant14, Part.Variant15, Part.Variant16, Part.Variant17, Part.Variant18, Part.Variant19, Part.Variant20, Part_.TheoreticalSpeed, Part_.LabelsPerInventoryPack, Part_.ItemsPerInventoryPack, Part_.ItemsPerLayer, Part_.LayersPerInventoryPack, Part_.PackingCode, Part_.LabelTemplate, Part_.ProductionInstructions, Part_.QualityInstructions, Part_.CustomerPartNo, Part_.CustomerPartDescription, Part_.LabelText1, Part_.LabelText2, Part_.LabelText3, Part_.UnitPrice1, Part_.UnitPrice2, Part_.LegacyPartNo, Part_.CreateDT, Part_.ModifiedDT, Part_.LoginID, Part_.PartRevisionNo, Part_.PartClassificationID, Part_.LastPurchaseCost, Part_.AveragePurchaseCost, Part_.StandardPurchaseCost, Part_.StandardManufactureCost, Part_.StandardSaleCost, Part_.PartSubClassificationID, Part_.CreatedInvUseByPeriod, Part_.CreatedInvUseAfterPeriod, Part_custom.Txn_date, Part_custom.Inventory_Item_Id, Part_custom.Item_Type_Description,  4 as \"org_id\" FROM Part FULL JOIN Part_ ON (Part.PartID = Part_.PartID) FULL JOIN Part_custom ON (Part.PartID = Part_custom.PartID)   WHERE \$CONDITIONS" --split-by Part.PartID --num-mappers 600  --target-dir /MEStemp/PartALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse PartALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     PartALL from Part, Part_, Part_custom"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/PartALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/PartALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Part.PartID, Part.PartNumber, Part.Description, Part.IsRetired, Part.BaseUnitID, Part.PartTypeID, Part.Reference1, Part.Reference2, Part.Reference3, Part.Reference4, Part.Reference5, Part.Variant1, Part.Variant2, Part.Variant3, Part.Variant4, Part.Variant5, Part.Variant6, Part.Variant7, Part.Variant8, Part.Variant9, Part.Variant10, Part.Variant11, Part.Variant12, Part.Variant13, Part.Variant14, Part.Variant15, Part.Variant16, Part.Variant17, Part.Variant18, Part.Variant19, Part.Variant20, Part_.TheoreticalSpeed, Part_.LabelsPerInventoryPack, Part_.ItemsPerInventoryPack, Part_.ItemsPerLayer, Part_.LayersPerInventoryPack, Part_.PackingCode, Part_.LabelTemplate, Part_.ProductionInstructions, Part_.QualityInstructions, Part_.CustomerPartNo, Part_.CustomerPartDescription, Part_.LabelText1, Part_.LabelText2, Part_.LabelText3, Part_.UnitPrice1, Part_.UnitPrice2, Part_.LegacyPartNo, Part_.CreateDT, Part_.ModifiedDT, Part_.LoginID, Part_.PartRevisionNo, Part_.PartClassificationID, Part_.LastPurchaseCost, Part_.AveragePurchaseCost, Part_.StandardPurchaseCost, Part_.StandardManufactureCost, Part_.StandardSaleCost, Part_.PartSubClassificationID, Part_.CreatedInvUseByPeriod, Part_.CreatedInvUseAfterPeriod, Part_custom.Txn_date, Part_custom.Inventory_Item_Id, Part_custom.Item_Type_Description,  5 as \"org_id\" FROM Part FULL JOIN Part_ ON (Part.PartID = Part_.PartID) FULL JOIN Part_custom ON (Part.PartID = Part_custom.PartID)   WHERE \$CONDITIONS" --split-by Part.PartID --num-mappers 600  --target-dir /MEStemp/PartALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa PartALL" >> timings.txt
    fi

echo " "
echo "##################################################"
echo "sqoop: WOALL from WO, WO_"
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     WOALL from WO, WO_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/WOALL/1
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/WOALL already ingested for 1"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT WO.WOID, WO.WONumber, WO.RunNo, WO.PartID, WO.QuantityOrdered, WO.RfJobStatusID, WO.DeadlineDT, WO.ActualStartDT, WO.ActualEndDT, WO.PlannedStartDT, WO.PlannedEndDT, WO.EstimatedStartDT, WO.EstimatedEndDT, WO.CustomerID, WO.IsDiscrete, WO.Reference1, WO.Reference2, WO.Reference3, WO.Reference4, WO.Reference5, WO.WORefID, WO_.CustomerOrderNo, WO_.LabelsPerInventoryPack, WO_.ItemsPerInventoryPack, WO_.ItemsPerLayer, WO_.LayersPerInventoryPack, WO_.PackingCode, WO_.LabelTemplate, WO_.LabelColour, WO_.EANCode, WO_.CusStartNum, WO_.CusEndNum, WO_.CustomerPartNo, WO_.CustomerPartDescription, WO_.LabelText1, WO_.LabelText2, WO_.LabelText3, WO_.PrinterURL, WO_.BOMVariantID,  1 as \"org_id\" FROM WO FULL JOIN WO_ ON (WO.WOID = WO_.WOID)   WHERE \$CONDITIONS" --split-by WO.WOID --num-mappers 600  --target-dir /MEStemp/WOALL/1 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali WOALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     WOALL from WO, WO_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/WOALL/2
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/WOALL already ingested for 2"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT WO.WOID, WO.WONumber, WO.RunNo, WO.PartID, WO.QuantityOrdered, WO.RfJobStatusID, WO.DeadlineDT, WO.ActualStartDT, WO.ActualEndDT, WO.PlannedStartDT, WO.PlannedEndDT, WO.EstimatedStartDT, WO.EstimatedEndDT, WO.CustomerID, WO.IsDiscrete, WO.Reference1, WO.Reference2, WO.Reference3, WO.Reference4, WO.Reference5, WO.WORefID, WO_.CustomerOrderNo, WO_.LabelsPerInventoryPack, WO_.ItemsPerInventoryPack, WO_.ItemsPerLayer, WO_.LayersPerInventoryPack, WO_.PackingCode, WO_.LabelTemplate, WO_.LabelColour, WO_.EANCode, WO_.CusStartNum, WO_.CusEndNum, WO_.CustomerPartNo, WO_.CustomerPartDescription, WO_.LabelText1, WO_.LabelText2, WO_.LabelText3, WO_.PrinterURL, WO_.BOMVariantID,  2 as \"org_id\" FROM WO FULL JOIN WO_ ON (WO.WOID = WO_.WOID)   WHERE \$CONDITIONS" --split-by WO.WOID --num-mappers 600  --target-dir /MEStemp/WOALL/2 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila WOALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     WOALL from WO, WO_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/WOALL/3
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/WOALL already ingested for 3"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT WO.WOID, WO.WONumber, WO.RunNo, WO.PartID, WO.QuantityOrdered, WO.RfJobStatusID, WO.DeadlineDT, WO.ActualStartDT, WO.ActualEndDT, WO.PlannedStartDT, WO.PlannedEndDT, WO.EstimatedStartDT, WO.EstimatedEndDT, WO.CustomerID, WO.IsDiscrete, WO.Reference1, WO.Reference2, WO.Reference3, WO.Reference4, WO.Reference5, WO.WORefID, WO_.CustomerOrderNo, WO_.LabelsPerInventoryPack, WO_.ItemsPerInventoryPack, WO_.ItemsPerLayer, WO_.LayersPerInventoryPack, WO_.PackingCode, WO_.LabelTemplate, WO_.LabelColour, WO_.EANCode, WO_.CusStartNum, WO_.CusEndNum, WO_.CustomerPartNo, WO_.CustomerPartDescription, WO_.LabelText1, WO_.LabelText2, WO_.LabelText3, WO_.PrinterURL, WO_.BOMVariantID,  3 as \"org_id\" FROM WO FULL JOIN WO_ ON (WO.WOID = WO_.WOID)   WHERE \$CONDITIONS" --split-by WO.WOID --num-mappers 600  --target-dir /MEStemp/WOALL/3 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule WOALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     WOALL from WO, WO_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/WOALL/4
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/WOALL already ingested for 4"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT WO.WOID, WO.WONumber, WO.RunNo, WO.PartID, WO.QuantityOrdered, WO.RfJobStatusID, WO.DeadlineDT, WO.ActualStartDT, WO.ActualEndDT, WO.PlannedStartDT, WO.PlannedEndDT, WO.EstimatedStartDT, WO.EstimatedEndDT, WO.CustomerID, WO.IsDiscrete, WO.Reference1, WO.Reference2, WO.Reference3, WO.Reference4, WO.Reference5, WO.WORefID, WO_.CustomerOrderNo, WO_.LabelsPerInventoryPack, WO_.ItemsPerInventoryPack, WO_.ItemsPerLayer, WO_.LayersPerInventoryPack, WO_.PackingCode, WO_.LabelTemplate, WO_.LabelColour, WO_.EANCode, WO_.CusStartNum, WO_.CusEndNum, WO_.CustomerPartNo, WO_.CustomerPartDescription, WO_.LabelText1, WO_.LabelText2, WO_.LabelText3, WO_.PrinterURL, WO_.BOMVariantID,  4 as \"org_id\" FROM WO FULL JOIN WO_ ON (WO.WOID = WO_.WOID)   WHERE \$CONDITIONS" --split-by WO.WOID --num-mappers 600  --target-dir /MEStemp/WOALL/4 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse WOALL" >> timings.txt
    fi


echo "      "
echo "     ##################################################"
echo "     WOALL from WO, WO_"
echo "     sqoop: jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER "
echo "     ##################################################"
echo "      "


hadoop fs -test -d /MEStemp/WOALL/5
    if [ $? = 0 ]
        then
 			echo " "
 			echo "/MEStemp/WOALL already ingested for 5"
 			echo " "
        else
			STARTTIME=$SECONDS
			sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT WO.WOID, WO.WONumber, WO.RunNo, WO.PartID, WO.QuantityOrdered, WO.RfJobStatusID, WO.DeadlineDT, WO.ActualStartDT, WO.ActualEndDT, WO.PlannedStartDT, WO.PlannedEndDT, WO.EstimatedStartDT, WO.EstimatedEndDT, WO.CustomerID, WO.IsDiscrete, WO.Reference1, WO.Reference2, WO.Reference3, WO.Reference4, WO.Reference5, WO.WORefID, WO_.CustomerOrderNo, WO_.LabelsPerInventoryPack, WO_.ItemsPerInventoryPack, WO_.ItemsPerLayer, WO_.LayersPerInventoryPack, WO_.PackingCode, WO_.LabelTemplate, WO_.LabelColour, WO_.EANCode, WO_.CusStartNum, WO_.CusEndNum, WO_.CustomerPartNo, WO_.CustomerPartDescription, WO_.LabelText1, WO_.LabelText2, WO_.LabelText3, WO_.PrinterURL, WO_.BOMVariantID,  5 as \"org_id\" FROM WO FULL JOIN WO_ ON (WO.WOID = WO_.WOID)   WHERE \$CONDITIONS" --split-by WO.WOID --num-mappers 600  --target-dir /MEStemp/WOALL/5 --direct  -- --schema dbo --validate
			ENDTIME=$SECONDS
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa WOALL" >> timings.txt
    fi



echo "After joined table ingest: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt


echo " "
echo "##################################################"
echo "Hive: Conditionally create table BuildRecordALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.BuildRecordALL (BuildRecordID int, InvPackCreatedID int, InvPackConsumedID int, QuantityUsed float, UnitID smallint, BuildDT timestamp, IsEdited tinyint, RevisionNo smallint, BuildMachineStageID smallint, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, EditedBuildRecordID int, OriginalLoginID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/BuildRecordALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryLabelALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InventoryLabelALL (InventoryLabelID int, MachineStage varchar(508), PartNumber varchar(508), PartType varchar(508), QuantityOrdered float, WONumber varchar(508), InventoryPackNo varchar(508), CreatedFromDT timestamp, Quantity float, Unit varchar(40), Line varchar(508), LabelTemplate varchar(508), LabelsPerInventoryPack smallint, ItemsPerLayer float, LayersPerInventoryPack int, PrinterURL varchar(2048), PrintedDT timestamp, ItemsPerInventoryPack float, ScannedDT timestamp, IsCancelled tinyint, OrderQuantityPacks int, LineShortName varchar(100), PackNo int, IsReprint tinyint, PartDescription varchar(508), LabelSaveDirectory varchar(508), JobID int, IsPrintLandscape tinyint, NoCopies smallint, LabelColour varchar(50), EANCode varchar(20), CusNum int, PackingCode varchar(100), CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), Customer varchar(508), Address1 varchar(508), Address2 varchar(508), City varchar(50), County varchar(50), PostCode varchar(50), Country varchar(50), InventoryPackID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InventoryLabelALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table InventoryPackALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.InventoryPackALL (InventoryPackID int, InventoryPackNo varchar(508), WOID int, JobID int, CreatedFromDT timestamp, CreatedToDT timestamp, CreatedOnMachineStageID smallint, IsEdited tinyint, RevisionNo tinyint, PartID int, Quantity float, UnitID smallint, Ignored tinyint, InventoryPackIndex int, CustomerUniqueKey varchar(508), ReceivedDT timestamp, BirthDT timestamp, LastBuildRecordID int, msrepl_tran_version varchar(36), CurrentQuantity float, QuantityAdjustment float, PositionNumber tinyint, LocationID int, InvStateID int, LocationFromDT timestamp, Comments varchar(508), LoginID smallint, OpenedDT timestamp, SavedDT timestamp, OriginalLoginID smallint, EditedInventoryPackID int, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Reference6 varchar(508), Reference7 varchar(508), Reference8 varchar(508), Reference9 varchar(508), Reference10 varchar(508), SupplierID smallint, SupplierReference varchar(508), UseByDT timestamp, UseAfterDT timestamp, Txn_date timestamp, OracleStatus tinyint, IntendedWOID int, FinalWOID int, OriginalQty float, Seq_Id int, From_Subinventory char(20), From_Locator char(80), To_Subinventory char(20), To_Locator char(80), ScrappedShiftID int, LastInventoryLabelID int, ScrapLocationID int, MachineLocationID int, ScrapReasonID smallint, ModuleInfoID int, ResealedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/InventoryPackALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table JobALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.JobALL (JobID int, WOID int, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDT timestamp, PlannedDuration float, EstimatedStartDT timestamp, EstimatedEndDT timestamp, EstimatedDuration float, ScheduledSequence smallint, LineID smallint, ProductionStartDT timestamp, ProductionEndDT timestamp, TheoreticalCycleTime float, BudgetChangeOver int, QuantityOrdered float, IsCalculated tinyint, LineGroupID smallint, JobInstructions varchar(2048), ReleaseDT timestamp, ReleaseLoginID smallint, StartLoginID smallint, EndLoginID smallint, Comments varchar(2000), ModifiedDt timestamp, ModifiedLoginID smallint, StoppedReason varchar(508), SkippedReason varchar(508), SkippedDT timestamp,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/JobALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LineALL (LineID smallint, Line varchar(508), Description varchar(508), LineTypeID smallint, IsRetired tinyint, RfIntervalModeID tinyint, IsOEEInventoryIsolation tinyint, IsOEEInventoryReintroduction tinyint, IsCountOutputInventory tinyint, IsCountInputInventory tinyint, IsLineInfoSweepEnabled tinyint, IsWOOnSingleJob tinyint, LineShortName varchar(100), CurrentLineInfoID int, LastLineInfoID int, RfInvCreatedDateModeID tinyint, RfEndJobInvModeID tinyint, CurrentJobID int, IsScrapAsQualityLoss tinyint, IsScrapInProductionCounts tinyint, LineDownCostPerHour float, IsContributeLineGroupOutput tinyint, IsContributeLineGroupWaste tinyint, IsContributeLineGroupDowntime tinyint, OEETarget float, WasteTarget float, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LineALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LocationAll"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LocationAll (LocationID int, Location varchar(508), LocationTypeID smallint, IsRetired tinyint, MaxQuantity float, LocationCode varchar(100), Description varchar(508), LocationType varchar(100), LocationTypeCode varchar(100),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/LocationAll'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStageAll"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStageAll (MachineStageID smallint, MachineStageTypeID smallint, Name varchar(508), IsRetired tinyint, DepartmentID smallint, Description varchar(508), CurrentShiftPatternID smallint, NoHeads smallint, IsOEEBottleNeck tinyint, IsProductionOutput tinyint, MachineStopID int, StoppedScreenThreshold smallint, LineSectionID smallint, IsDiscrete tinyint, RfDowntimeCollectionModeID tinyint, RfSpoilageCollectionModeID tinyint, RfProductionCollectionModeID tinyint, LastBuildRecordID int, CurrentJobID int, ModuleDatabase varchar(100), IntendedWOID int, MachineStageCode varchar(100), CurrentLaminateSize int, Color varchar(100), ModifiedDT timestamp, CleanState int, CleaningCycleNo int, CleaningLaminatePartID int, CleaningLaminateSize int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/MachineStageAll'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.PartALL (PartID int, PartNumber varchar(508), Description varchar(508), IsRetired tinyint, BaseUnitID smallint, PartTypeID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Variant1 varchar(200), Variant2 varchar(200), Variant3 varchar(200), Variant4 varchar(200), Variant5 varchar(200), Variant6 varchar(200), Variant7 varchar(200), Variant8 varchar(200), Variant9 varchar(200), Variant10 varchar(200), Variant11 varchar(200), Variant12 varchar(200), Variant13 varchar(200), Variant14 varchar(200), Variant15 varchar(200), Variant16 varchar(200), Variant17 varchar(200), Variant18 varchar(200), Variant19 varchar(200), Variant20 varchar(200), TheoreticalSpeed float, LabelsPerInventoryPack smallint, ItemsPerInventoryPack float, ItemsPerLayer float, LayersPerInventoryPack int, PackingCode varchar(100), LabelTemplate varchar(508), ProductionInstructions varchar(2000), QualityInstructions varchar(2000), CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), UnitPrice1 float, UnitPrice2 float, LegacyPartNo varchar(508), CreateDT timestamp, ModifiedDT timestamp, LoginID smallint, PartRevisionNo varchar(100), PartClassificationID smallint, LastPurchaseCost float, AveragePurchaseCost float, StandardPurchaseCost float, StandardManufactureCost float, StandardSaleCost float, PartSubClassificationID smallint, CreatedInvUseByPeriod int, CreatedInvUseAfterPeriod int, Txn_date timestamp, Inventory_Item_Id int, Item_Type_Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/PartALL'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table WOALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.WOALL (WOID int, WONumber varchar(508), RunNo smallint, PartID int, QuantityOrdered float, RfJobStatusID tinyint, DeadlineDT timestamp, ActualStartDT timestamp, ActualEndDT timestamp, PlannedStartDT timestamp, PlannedEndDT timestamp, EstimatedStartDT timestamp, EstimatedEndDT timestamp, CustomerID smallint, IsDiscrete tinyint, Reference1 varchar(100), Reference2 varchar(100), Reference3 varchar(100), Reference4 varchar(100), Reference5 varchar(100), WORefID int, CustomerOrderNo varchar(508), LabelsPerInventoryPack smallint, ItemsPerInventoryPack float, ItemsPerLayer float, LayersPerInventoryPack int, PackingCode varchar(100), LabelTemplate varchar(508), LabelColour varchar(100), EANCode char(25), CusStartNum int, CusEndNum int, CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), PrinterURL varchar(2048), BOMVariantID int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/WOALL'"


echo "Script execution time: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt


