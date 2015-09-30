#!/bin/bash

echo "##################################################"
echo " "
date 
rm timings.txt
SCRIPTBEGINTIME=$SECONDS

hadoop fs -test -d /MEStemp
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r -skipTrash /MEStemp
                else
                 echo "/MEStemp not present in HDFS"
    fi

echo "     connect: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     connect: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     connect: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     connect: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     connect: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "

echo " "
echo "##################################################"
echo "sqoop: Address "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Address "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 1 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Address" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Address "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 2 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Address" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Address "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 3 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Address" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Address "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 4 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Address" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Address "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT AddressID,Address1,Address2,City,County,PostCode,Country, 5 as \"org_id\"  FROM dbo.Address WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Address/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Address" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Customer "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Customer "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 1 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Customer/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Customer" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Customer "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 2 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Customer/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Customer" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Customer "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 3 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Customer/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Customer" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Customer "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 4 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Customer/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Customer" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Customer "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT CustomerID,Customer,CustomerCode,AddressID,RfLanguageID, 5 as \"org_id\"  FROM dbo.Customer WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Customer/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Customer" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Department "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Department "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 1 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Department/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Department" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Department "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 2 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Department/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Department" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Department "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 3 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Department/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Department" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Department "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 4 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Department/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Department" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Department "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT DepartmentID,Name,DepartmentGroup,Classification1,PlantID,DepartmentCode,Description, 5 as \"org_id\"  FROM dbo.Department WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Department/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Department" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: InvIsolatedReason "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InvIsolatedReason "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 1 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvIsolatedReason/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER InvIsolatedReason" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     InvIsolatedReason "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 2 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvIsolatedReason/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER InvIsolatedReason" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     InvIsolatedReason "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 3 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvIsolatedReason/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER InvIsolatedReason" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     InvIsolatedReason "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 4 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvIsolatedReason/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER InvIsolatedReason" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     InvIsolatedReason "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvIsolatedReasonID,PartTypeID,IsolatedReason,InvStateID, 5 as \"org_id\"  FROM dbo.InvIsolatedReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvIsolatedReason/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER InvIsolatedReason" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: InvState "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     InvState "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 1 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvState/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER InvState" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     InvState "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 2 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvState/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER InvState" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     InvState "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 3 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvState/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER InvState" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     InvState "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 4 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvState/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER InvState" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     InvState "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT InvStateID,InvState,Description,RfInvStateID,InvStateCode,IsAddToProduction,IsAddToHFI,IsDefault, 5 as \"org_id\"  FROM dbo.InvState WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/InvState/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER InvState" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: LineGroup "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 1 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineGroup/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER LineGroup" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 2 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineGroup/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineGroup" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 3 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineGroup/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER LineGroup" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 4 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineGroup/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineGroup" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineGroup "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineGroupID,LineGroup,LineGroupCode,Description,OEETarget,WasteTarget,Reference1,Reference2,Reference3,Reference4,Reference5, 5 as \"org_id\"  FROM dbo.LineGroup WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineGroup/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER LineGroup" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: LineInfo "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 1 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER LineInfo" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 2 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineInfo" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 3 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER LineInfo" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 4 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineInfo" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineInfo "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineInfoID,RfLineInfoEventID,LineID,ShiftID,WOID,FromDT,ToDT,rfDayHourPeriodID,TotalTime,ExcludedTime,ScheduledTime,STOperations,STInduced,DTTechnical,DTOperations,DTQuality,DownTime,StopTime,RunTime,NotRunTime,TheoreticalCycleTime,QuantityScrap,QuantityGood,ModifiedDT,LoginID,QuantityIn,TotalInventoryProduced,TotalInventoryReintroduced,NetQuantityProduced,QuantityInLineSpoilage,TotalSpoilage,AccountedSpoilage,TotalInventoryIsolated,ProductionStopJobID,TotalUnitsProduced,BottleNeckMachineStageID,InventoryIn,InterProdStopTime,InProdStopTime,QuantityUnitsIn,QuantityInventoryIn,TotalQuantityProduced,TotalPacksProduced,TotalPacksIsolated,TotalPacksReintroduced,TotalPacksMade,ValidState,LineGroupID,LineGroupShiftID,LineGroupBottleneckID, 5 as \"org_id\"  FROM dbo.LineInfo WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineInfo/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER LineInfo" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: LineSection "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineSection "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 1 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineSection/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER LineSection" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineSection "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 2 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineSection/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineSection" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineSection "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 3 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineSection/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER LineSection" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineSection "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 4 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineSection/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineSection" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineSection "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineSectionID,LineSection,Description,IsRetired, 5 as \"org_id\"  FROM dbo.LineSection WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineSection/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER LineSection" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: LineType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     LineType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineTypeID,LineType,Description,IsRetired,LineInfoPrecedence,BudgetChangeOver,BudgetEfficiency, 1 as \"org_id\"  FROM dbo.LineType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER LineType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineTypeID,LineType,Description,IsRetired,LineInfoPrecedence,BudgetChangeOver,BudgetEfficiency, 2 as \"org_id\"  FROM dbo.LineType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineType/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER LineType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineTypeID,LineType,Description,IsRetired,LineInfoPrecedence,BudgetChangeOver,BudgetEfficiency, 3 as \"org_id\"  FROM dbo.LineType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineType/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER LineType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineTypeID,LineType,Description,IsRetired,LineInfoPrecedence,BudgetChangeOver,BudgetEfficiency, 4 as \"org_id\"  FROM dbo.LineType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineType/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER LineType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT LineTypeID,LineType,Description,IsRetired,LineInfoPrecedence,BudgetChangeOver,BudgetEfficiency, 5 as \"org_id\"  FROM dbo.LineType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/LineType/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER LineType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: MachineStageType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStageType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 1 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER MachineStageType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStageType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 2 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER MachineStageType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStageType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 3 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER MachineStageType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStageType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 4 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER MachineStageType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStageType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStageTypeID,Name,Description,MachineStageTypeCode, 5 as \"org_id\"  FROM dbo.MachineStageType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStageType/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER MachineStageType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: MachineStop "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStop "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 1 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStop/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER MachineStop" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStop "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 2 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStop/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER MachineStop" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStop "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 3 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStop/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER MachineStop" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStop "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 4 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStop/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER MachineStop" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStop "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopID,MachineStopReasonID,FromDT,ToDT,MachineStageID,IsEdited,RevisionNo, 5 as \"org_id\"  FROM dbo.MachineStop WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStop/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER MachineStop" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: MachineStopCategory "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStopCategory "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 1 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopCategory/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER MachineStopCategory" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStopCategory "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 2 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopCategory/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER MachineStopCategory" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStopCategory "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 3 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopCategory/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER MachineStopCategory" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStopCategory "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 4 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopCategory/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER MachineStopCategory" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStopCategory "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopCategoryID,MachineStopCategory,Description,MachineStageTypeID,StopCategoryCode,DisplayOrder, 5 as \"org_id\"  FROM dbo.MachineStopCategory WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopCategory/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER MachineStopCategory" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: MachineStopReason "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     MachineStopReason "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 1 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReason/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER MachineStopReason" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStopReason "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 2 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReason/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER MachineStopReason" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStopReason "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 3 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReason/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER MachineStopReason" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStopReason "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 4 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReason/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER MachineStopReason" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStopReason "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStopReasonID,StopReason,Description,MachineStageTypeID,IsPlanned,StopCode,RfMachineStopClassID,RfLineStopReasonTypeID,MachineStopCategoryID,IsRetired, 5 as \"org_id\"  FROM dbo.MachineStopReason WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/MachineStopReason/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER MachineStopReason" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Operation "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Operation "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 1 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Operation/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Operation" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Operation "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 2 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Operation/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Operation" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Operation "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 3 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Operation/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Operation" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Operation "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 4 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Operation/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Operation" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Operation "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationID,OperationTypeID,MachineStageID,JobID, 5 as \"org_id\"  FROM dbo.Operation WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Operation/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Operation" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: OperationType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     OperationType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 1 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OperationType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER OperationType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     OperationType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 2 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OperationType/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER OperationType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     OperationType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 3 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OperationType/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER OperationType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     OperationType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 4 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OperationType/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER OperationType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     OperationType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT OperationTypeID,OperationType,OperationTypeCode,Description,PartTypeID,Sequence,IsOptional, 5 as \"org_id\"  FROM dbo.OperationType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/OperationType/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER OperationType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: PartClassification "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartClassification "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 1 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartClassification/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER PartClassification" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartClassification "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 2 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartClassification/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER PartClassification" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartClassification "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 3 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartClassification/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER PartClassification" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartClassification "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 4 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartClassification/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER PartClassification" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartClassification "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartClassificationID,PartClassification,RfPartClassificationID, 5 as \"org_id\"  FROM dbo.PartClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartClassification/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER PartClassification" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: PartSubClassification "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartSubClassification "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 1 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartSubClassification/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER PartSubClassification" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartSubClassification "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 2 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartSubClassification/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER PartSubClassification" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartSubClassification "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 3 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartSubClassification/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER PartSubClassification" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartSubClassification "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 4 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartSubClassification/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER PartSubClassification" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartSubClassification "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartSubClassificationID,PartSubClassification,PartClassificationID, 5 as \"org_id\"  FROM dbo.PartSubClassification WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartSubClassification/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER PartSubClassification" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: PartType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     PartType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartTypeID,PartType,Description,PartTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID,RfInventoryAccountingModeID, 1 as \"org_id\"  FROM dbo.PartType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER PartType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartTypeID,PartType,Description,PartTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID,RfInventoryAccountingModeID, 2 as \"org_id\"  FROM dbo.PartType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartType/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER PartType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartTypeID,PartType,Description,PartTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID,RfInventoryAccountingModeID, 3 as \"org_id\"  FROM dbo.PartType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartType/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER PartType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartTypeID,PartType,Description,PartTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID,RfInventoryAccountingModeID, 4 as \"org_id\"  FROM dbo.PartType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartType/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER PartType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT PartTypeID,PartType,Description,PartTypeCode,Variant1TagListID,Variant2TagListID,Variant3TagListID,Variant4TagListID,Variant5TagListID,Variant6TagListID,Variant7TagListID,Variant8TagListID,Variant9TagListID,Variant10TagListID,Variant11TagListID,Variant12TagListID,Variant13TagListID,Variant14TagListID,Variant15TagListID,Variant16TagListID,Variant17TagListID,Variant18TagListID,Variant19TagListID,Variant20TagListID,RfInventoryAccountingModeID, 5 as \"org_id\"  FROM dbo.PartType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/PartType/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER PartType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Shift "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Shift "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 1 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Shift/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Shift" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Shift "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 2 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Shift/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Shift" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Shift "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 3 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Shift/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Shift" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Shift "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 4 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Shift/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Shift" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Shift "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftID,ShiftTypeID,ShiftPatternID,FromDT,ToDT,Sequence, 5 as \"org_id\"  FROM dbo.Shift WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Shift/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Shift" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: ShiftPattern "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     ShiftPattern "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 1 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER ShiftPattern" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     ShiftPattern "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 2 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER ShiftPattern" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     ShiftPattern "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 3 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER ShiftPattern" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     ShiftPattern "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 4 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER ShiftPattern" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     ShiftPattern "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftPatternID,ShiftPattern,PatternDuration,IsPatternDirty,IsCustomPeriod, 5 as \"org_id\"  FROM dbo.ShiftPattern WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftPattern/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER ShiftPattern" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: ShiftType "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     ShiftType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 1 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER ShiftType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     ShiftType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 2 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER ShiftType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     ShiftType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 3 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER ShiftType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     ShiftType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 4 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER ShiftType" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     ShiftType "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT ShiftTypeID,Name,Description,IsNonWorking, 5 as \"org_id\"  FROM dbo.ShiftType WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/ShiftType/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER ShiftType" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Supplier "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Supplier "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 1 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Supplier/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Supplier" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Supplier "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 2 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Supplier/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Supplier" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Supplier "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 3 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Supplier/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Supplier" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Supplier "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 4 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Supplier/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Supplier" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Supplier "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT SupplierID,Supplier,SupplierCode,AddressID, 5 as \"org_id\"  FROM dbo.Supplier WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Supplier/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Supplier" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: TagList "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     TagList "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT TagListID,ListName,VariantNo, 1 as \"org_id\"  FROM dbo.TagList WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagList/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER TagList" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     TagList "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT TagListID,ListName,VariantNo, 2 as \"org_id\"  FROM dbo.TagList WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagList/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER TagList" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     TagList "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT TagListID,ListName,VariantNo, 3 as \"org_id\"  FROM dbo.TagList WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagList/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER TagList" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     TagList "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT TagListID,ListName,VariantNo, 4 as \"org_id\"  FROM dbo.TagList WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagList/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER TagList" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     TagList "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT TagListID,ListName,VariantNo, 5 as \"org_id\"  FROM dbo.TagList WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/TagList/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER TagList" >> timings.txt

echo " "
echo "##################################################"
echo "sqoop: Unit "
echo "##################################################"
echo " "

echo "      "
echo "     ##################################################"
echo "     Unit "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 1 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest MEXICALI_OWNER Unit" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Unit "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 2 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest SPMM_C1_OWNER Unit" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Unit "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 3 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest DEVERN_OWNER Unit" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Unit "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 4 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest TOULOUSE_OWNER Unit" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     Unit "
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT UnitID,Unit,Description, 5 as \"org_id\"  FROM dbo.Unit WHERE \$CONDITIONS" --num-mappers 1 --target-dir /MEStemp/Unit/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest CAPETOWN_OWNER Unit" >> timings.txt


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
echo "sqoop: LineALL " from Line, Line_
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     LineALL " from Line, Line_"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Line.LineID, Line.Line, Line.Description, Line.LineTypeID, Line.IsRetired, Line.RfIntervalModeID, Line.IsOEEInventoryIsolation, Line.IsOEEInventoryReintroduction, Line.IsCountOutputInventory, Line.IsCountInputInventory, Line.IsLineInfoSweepEnabled, Line.IsWOOnSingleJob, Line.LineShortName, Line.CurrentLineInfoID, Line.LastLineInfoID, Line.RfInvCreatedDateModeID, Line.RfEndJobInvModeID, Line.CurrentJobID, Line.IsScrapAsQualityLoss, Line.IsScrapInProductionCounts, Line.LineDownCostPerHour, Line.IsContributeLineGroupOutput, Line.IsContributeLineGroupWaste, Line.IsContributeLineGroupDowntime, Line_.OEETarget, Line_.WasteTarget, Line_.Reference1, Line_.Reference2, Line_.Reference3, Line_.Reference4, Line_.Reference5,  1 as \"org_id\" FROM Line JOIN Line_ ON (Line.LineID = Line_.LineID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/LineALL/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali LineALL" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineALL " from Line, Line_"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Line.LineID, Line.Line, Line.Description, Line.LineTypeID, Line.IsRetired, Line.RfIntervalModeID, Line.IsOEEInventoryIsolation, Line.IsOEEInventoryReintroduction, Line.IsCountOutputInventory, Line.IsCountInputInventory, Line.IsLineInfoSweepEnabled, Line.IsWOOnSingleJob, Line.LineShortName, Line.CurrentLineInfoID, Line.LastLineInfoID, Line.RfInvCreatedDateModeID, Line.RfEndJobInvModeID, Line.CurrentJobID, Line.IsScrapAsQualityLoss, Line.IsScrapInProductionCounts, Line.LineDownCostPerHour, Line.IsContributeLineGroupOutput, Line.IsContributeLineGroupWaste, Line.IsContributeLineGroupDowntime, Line_.OEETarget, Line_.WasteTarget, Line_.Reference1, Line_.Reference2, Line_.Reference3, Line_.Reference4, Line_.Reference5,  2 as \"org_id\" FROM Line JOIN Line_ ON (Line.LineID = Line_.LineID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/LineALL/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila LineALL" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineALL " from Line, Line_"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Line.LineID, Line.Line, Line.Description, Line.LineTypeID, Line.IsRetired, Line.RfIntervalModeID, Line.IsOEEInventoryIsolation, Line.IsOEEInventoryReintroduction, Line.IsCountOutputInventory, Line.IsCountInputInventory, Line.IsLineInfoSweepEnabled, Line.IsWOOnSingleJob, Line.LineShortName, Line.CurrentLineInfoID, Line.LastLineInfoID, Line.RfInvCreatedDateModeID, Line.RfEndJobInvModeID, Line.CurrentJobID, Line.IsScrapAsQualityLoss, Line.IsScrapInProductionCounts, Line.LineDownCostPerHour, Line.IsContributeLineGroupOutput, Line.IsContributeLineGroupWaste, Line.IsContributeLineGroupDowntime, Line_.OEETarget, Line_.WasteTarget, Line_.Reference1, Line_.Reference2, Line_.Reference3, Line_.Reference4, Line_.Reference5,  3 as \"org_id\" FROM Line JOIN Line_ ON (Line.LineID = Line_.LineID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/LineALL/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule LineALL" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineALL " from Line, Line_"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Line.LineID, Line.Line, Line.Description, Line.LineTypeID, Line.IsRetired, Line.RfIntervalModeID, Line.IsOEEInventoryIsolation, Line.IsOEEInventoryReintroduction, Line.IsCountOutputInventory, Line.IsCountInputInventory, Line.IsLineInfoSweepEnabled, Line.IsWOOnSingleJob, Line.LineShortName, Line.CurrentLineInfoID, Line.LastLineInfoID, Line.RfInvCreatedDateModeID, Line.RfEndJobInvModeID, Line.CurrentJobID, Line.IsScrapAsQualityLoss, Line.IsScrapInProductionCounts, Line.LineDownCostPerHour, Line.IsContributeLineGroupOutput, Line.IsContributeLineGroupWaste, Line.IsContributeLineGroupDowntime, Line_.OEETarget, Line_.WasteTarget, Line_.Reference1, Line_.Reference2, Line_.Reference3, Line_.Reference4, Line_.Reference5,  4 as \"org_id\" FROM Line JOIN Line_ ON (Line.LineID = Line_.LineID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/LineALL/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse LineALL" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LineALL " from Line, Line_"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Line.LineID, Line.Line, Line.Description, Line.LineTypeID, Line.IsRetired, Line.RfIntervalModeID, Line.IsOEEInventoryIsolation, Line.IsOEEInventoryReintroduction, Line.IsCountOutputInventory, Line.IsCountInputInventory, Line.IsLineInfoSweepEnabled, Line.IsWOOnSingleJob, Line.LineShortName, Line.CurrentLineInfoID, Line.LastLineInfoID, Line.RfInvCreatedDateModeID, Line.RfEndJobInvModeID, Line.CurrentJobID, Line.IsScrapAsQualityLoss, Line.IsScrapInProductionCounts, Line.LineDownCostPerHour, Line.IsContributeLineGroupOutput, Line.IsContributeLineGroupWaste, Line.IsContributeLineGroupDowntime, Line_.OEETarget, Line_.WasteTarget, Line_.Reference1, Line_.Reference2, Line_.Reference3, Line_.Reference4, Line_.Reference5,  5 as \"org_id\" FROM Line JOIN Line_ ON (Line.LineID = Line_.LineID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/LineALL/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa LineALL" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: LocationAll " from Location, LocationType
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     LocationAll " from Location, LocationType"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Location.LocationID, Location.Location, Location.LocationTypeID, Location.IsRetired, Location.MaxQuantity, Location.LocationCode, Location.Description, LocationType.LocationType, LocationType.LocationTypeCode, LocationType.Description,  1 as \"org_id\" FROM Location JOIN LocationType ON (Location.LocationID = LocationType.LocationTypeID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/LocationAll/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali LocationAll" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LocationAll " from Location, LocationType"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Location.LocationID, Location.Location, Location.LocationTypeID, Location.IsRetired, Location.MaxQuantity, Location.LocationCode, Location.Description, LocationType.LocationType, LocationType.LocationTypeCode, LocationType.Description,  2 as \"org_id\" FROM Location JOIN LocationType ON (Location.LocationID = LocationType.LocationTypeID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/LocationAll/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila LocationAll" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LocationAll " from Location, LocationType"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Location.LocationID, Location.Location, Location.LocationTypeID, Location.IsRetired, Location.MaxQuantity, Location.LocationCode, Location.Description, LocationType.LocationType, LocationType.LocationTypeCode, LocationType.Description,  3 as \"org_id\" FROM Location JOIN LocationType ON (Location.LocationID = LocationType.LocationTypeID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/LocationAll/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule LocationAll" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LocationAll " from Location, LocationType"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Location.LocationID, Location.Location, Location.LocationTypeID, Location.IsRetired, Location.MaxQuantity, Location.LocationCode, Location.Description, LocationType.LocationType, LocationType.LocationTypeCode, LocationType.Description,  4 as \"org_id\" FROM Location JOIN LocationType ON (Location.LocationID = LocationType.LocationTypeID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/LocationAll/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse LocationAll" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     LocationAll " from Location, LocationType"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Location.LocationID, Location.Location, Location.LocationTypeID, Location.IsRetired, Location.MaxQuantity, Location.LocationCode, Location.Description, LocationType.LocationType, LocationType.LocationTypeCode, LocationType.Description,  5 as \"org_id\" FROM Location JOIN LocationType ON (Location.LocationID = LocationType.LocationTypeID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/LocationAll/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa LocationAll" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: MachineStageAll " from MachineStage, MachineStage_Custom
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     MachineStageAll " from MachineStage, MachineStage_Custom"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStage.MachineStageID, MachineStage.MachineStageTypeID, MachineStage.Name, MachineStage.IsRetired, MachineStage.DepartmentID, MachineStage.Description, MachineStage.CurrentShiftPatternID, MachineStage.NoHeads, MachineStage.IsOEEBottleNeck, MachineStage.IsProductionOutput, MachineStage.MachineStopID, MachineStage.StoppedScreenThreshold, MachineStage.LineSectionID, MachineStage.IsDiscrete, MachineStage.RfDowntimeCollectionModeID, MachineStage.RfSpoilageCollectionModeID, MachineStage.RfProductionCollectionModeID, MachineStage.LastBuildRecordID, MachineStage.CurrentJobID, MachineStage_Custom.ModuleDatabase, MachineStage_Custom.IntendedWOID, MachineStage_Custom.MachineStageCode, MachineStage_Custom.CurrentLaminateSize, MachineStage_Custom.Color, MachineStage_Custom.ModifiedDT, MachineStage_Custom.CleanState, MachineStage_Custom.CleaningCycleNo, MachineStage_Custom.CleaningLaminatePartID, MachineStage_Custom.CleaningLaminateSize,  1 as \"org_id\" FROM MachineStage JOIN MachineStage_Custom ON (MachineStage.MachineStageID = MachineStage_Custom.MachineStageID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/MachineStageAll/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali MachineStageAll" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStageAll " from MachineStage, MachineStage_Custom"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStage.MachineStageID, MachineStage.MachineStageTypeID, MachineStage.Name, MachineStage.IsRetired, MachineStage.DepartmentID, MachineStage.Description, MachineStage.CurrentShiftPatternID, MachineStage.NoHeads, MachineStage.IsOEEBottleNeck, MachineStage.IsProductionOutput, MachineStage.MachineStopID, MachineStage.StoppedScreenThreshold, MachineStage.LineSectionID, MachineStage.IsDiscrete, MachineStage.RfDowntimeCollectionModeID, MachineStage.RfSpoilageCollectionModeID, MachineStage.RfProductionCollectionModeID, MachineStage.LastBuildRecordID, MachineStage.CurrentJobID, MachineStage_Custom.ModuleDatabase, MachineStage_Custom.IntendedWOID, MachineStage_Custom.MachineStageCode, MachineStage_Custom.CurrentLaminateSize, MachineStage_Custom.Color, MachineStage_Custom.ModifiedDT, MachineStage_Custom.CleanState, MachineStage_Custom.CleaningCycleNo, MachineStage_Custom.CleaningLaminatePartID, MachineStage_Custom.CleaningLaminateSize,  2 as \"org_id\" FROM MachineStage JOIN MachineStage_Custom ON (MachineStage.MachineStageID = MachineStage_Custom.MachineStageID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/MachineStageAll/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila MachineStageAll" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStageAll " from MachineStage, MachineStage_Custom"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStage.MachineStageID, MachineStage.MachineStageTypeID, MachineStage.Name, MachineStage.IsRetired, MachineStage.DepartmentID, MachineStage.Description, MachineStage.CurrentShiftPatternID, MachineStage.NoHeads, MachineStage.IsOEEBottleNeck, MachineStage.IsProductionOutput, MachineStage.MachineStopID, MachineStage.StoppedScreenThreshold, MachineStage.LineSectionID, MachineStage.IsDiscrete, MachineStage.RfDowntimeCollectionModeID, MachineStage.RfSpoilageCollectionModeID, MachineStage.RfProductionCollectionModeID, MachineStage.LastBuildRecordID, MachineStage.CurrentJobID, MachineStage_Custom.ModuleDatabase, MachineStage_Custom.IntendedWOID, MachineStage_Custom.MachineStageCode, MachineStage_Custom.CurrentLaminateSize, MachineStage_Custom.Color, MachineStage_Custom.ModifiedDT, MachineStage_Custom.CleanState, MachineStage_Custom.CleaningCycleNo, MachineStage_Custom.CleaningLaminatePartID, MachineStage_Custom.CleaningLaminateSize,  3 as \"org_id\" FROM MachineStage JOIN MachineStage_Custom ON (MachineStage.MachineStageID = MachineStage_Custom.MachineStageID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/MachineStageAll/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule MachineStageAll" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStageAll " from MachineStage, MachineStage_Custom"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStage.MachineStageID, MachineStage.MachineStageTypeID, MachineStage.Name, MachineStage.IsRetired, MachineStage.DepartmentID, MachineStage.Description, MachineStage.CurrentShiftPatternID, MachineStage.NoHeads, MachineStage.IsOEEBottleNeck, MachineStage.IsProductionOutput, MachineStage.MachineStopID, MachineStage.StoppedScreenThreshold, MachineStage.LineSectionID, MachineStage.IsDiscrete, MachineStage.RfDowntimeCollectionModeID, MachineStage.RfSpoilageCollectionModeID, MachineStage.RfProductionCollectionModeID, MachineStage.LastBuildRecordID, MachineStage.CurrentJobID, MachineStage_Custom.ModuleDatabase, MachineStage_Custom.IntendedWOID, MachineStage_Custom.MachineStageCode, MachineStage_Custom.CurrentLaminateSize, MachineStage_Custom.Color, MachineStage_Custom.ModifiedDT, MachineStage_Custom.CleanState, MachineStage_Custom.CleaningCycleNo, MachineStage_Custom.CleaningLaminatePartID, MachineStage_Custom.CleaningLaminateSize,  4 as \"org_id\" FROM MachineStage JOIN MachineStage_Custom ON (MachineStage.MachineStageID = MachineStage_Custom.MachineStageID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/MachineStageAll/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse MachineStageAll" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     MachineStageAll " from MachineStage, MachineStage_Custom"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT MachineStage.MachineStageID, MachineStage.MachineStageTypeID, MachineStage.Name, MachineStage.IsRetired, MachineStage.DepartmentID, MachineStage.Description, MachineStage.CurrentShiftPatternID, MachineStage.NoHeads, MachineStage.IsOEEBottleNeck, MachineStage.IsProductionOutput, MachineStage.MachineStopID, MachineStage.StoppedScreenThreshold, MachineStage.LineSectionID, MachineStage.IsDiscrete, MachineStage.RfDowntimeCollectionModeID, MachineStage.RfSpoilageCollectionModeID, MachineStage.RfProductionCollectionModeID, MachineStage.LastBuildRecordID, MachineStage.CurrentJobID, MachineStage_Custom.ModuleDatabase, MachineStage_Custom.IntendedWOID, MachineStage_Custom.MachineStageCode, MachineStage_Custom.CurrentLaminateSize, MachineStage_Custom.Color, MachineStage_Custom.ModifiedDT, MachineStage_Custom.CleanState, MachineStage_Custom.CleaningCycleNo, MachineStage_Custom.CleaningLaminatePartID, MachineStage_Custom.CleaningLaminateSize,  5 as \"org_id\" FROM MachineStage JOIN MachineStage_Custom ON (MachineStage.MachineStageID = MachineStage_Custom.MachineStageID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/MachineStageAll/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa MachineStageAll" >> timings.txt
echo " "
echo "##################################################"
echo "sqoop: PartALL " from Part, Part_, Part_custom
echo "##################################################"
echo " "


echo "      "
echo "     ##################################################"
echo "     PartALL " from Part, Part_, Part_custom"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=MEXICALI_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Part.PartID, Part.PartNumber, Part.Description, Part.IsRetired, Part.BaseUnitID, Part.PartTypeID, Part.Reference1, Part.Reference2, Part.Reference3, Part.Reference4, Part.Reference5, Part.Variant1, Part.Variant2, Part.Variant3, Part.Variant4, Part.Variant5, Part.Variant6, Part.Variant7, Part.Variant8, Part.Variant9, Part.Variant10, Part.Variant11, Part.Variant12, Part.Variant13, Part.Variant14, Part.Variant15, Part.Variant16, Part.Variant17, Part.Variant18, Part.Variant19, Part.Variant20, Part_.TheoreticalSpeed, Part_.LabelsPerInventoryPack, Part_.ItemsPerInventoryPack, Part_.ItemsPerLayer, Part_.LayersPerInventoryPack, Part_.PackingCode, Part_.LabelTemplate, Part_.ProductionInstructions, Part_.QualityInstructions, Part_.CustomerPartNo, Part_.CustomerPartDescription, Part_.LabelText1, Part_.LabelText2, Part_.LabelText3, Part_.UnitPrice1, Part_.UnitPrice2, Part_.LegacyPartNo, Part_.CreateDT, Part_.ModifiedDT, Part_.LoginID, Part_.PartRevisionNo, Part_.PartClassificationID, Part_.LastPurchaseCost, Part_.AveragePurchaseCost, Part_.StandardPurchaseCost, Part_.StandardManufactureCost, Part_.StandardSaleCost, Part_.PartSubClassificationID, Part_.CreatedInvUseByPeriod, Part_.CreatedInvUseAfterPeriod, Part_custom.Txn_date, Part_custom.Inventory_Item_Id, Part_custom.Item_Type_Description,  1 as \"org_id\" FROM Part JOIN Part_ ON (Part.PartID = Part_.PartID) JOIN Part_custom ON (Part.PartID = Part_custom.PartID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/PartALL/1 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Mexicali PartALL" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartALL " from Part, Part_, Part_custom"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=SPMM_C1_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Part.PartID, Part.PartNumber, Part.Description, Part.IsRetired, Part.BaseUnitID, Part.PartTypeID, Part.Reference1, Part.Reference2, Part.Reference3, Part.Reference4, Part.Reference5, Part.Variant1, Part.Variant2, Part.Variant3, Part.Variant4, Part.Variant5, Part.Variant6, Part.Variant7, Part.Variant8, Part.Variant9, Part.Variant10, Part.Variant11, Part.Variant12, Part.Variant13, Part.Variant14, Part.Variant15, Part.Variant16, Part.Variant17, Part.Variant18, Part.Variant19, Part.Variant20, Part_.TheoreticalSpeed, Part_.LabelsPerInventoryPack, Part_.ItemsPerInventoryPack, Part_.ItemsPerLayer, Part_.LayersPerInventoryPack, Part_.PackingCode, Part_.LabelTemplate, Part_.ProductionInstructions, Part_.QualityInstructions, Part_.CustomerPartNo, Part_.CustomerPartDescription, Part_.LabelText1, Part_.LabelText2, Part_.LabelText3, Part_.UnitPrice1, Part_.UnitPrice2, Part_.LegacyPartNo, Part_.CreateDT, Part_.ModifiedDT, Part_.LoginID, Part_.PartRevisionNo, Part_.PartClassificationID, Part_.LastPurchaseCost, Part_.AveragePurchaseCost, Part_.StandardPurchaseCost, Part_.StandardManufactureCost, Part_.StandardSaleCost, Part_.PartSubClassificationID, Part_.CreatedInvUseByPeriod, Part_.CreatedInvUseAfterPeriod, Part_custom.Txn_date, Part_custom.Inventory_Item_Id, Part_custom.Item_Type_Description,  2 as \"org_id\" FROM Part JOIN Part_ ON (Part.PartID = Part_.PartID) JOIN Part_custom ON (Part.PartID = Part_custom.PartID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/PartALL/2 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest Manila PartALL" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartALL " from Part, Part_, Part_custom"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=DEVERN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Part.PartID, Part.PartNumber, Part.Description, Part.IsRetired, Part.BaseUnitID, Part.PartTypeID, Part.Reference1, Part.Reference2, Part.Reference3, Part.Reference4, Part.Reference5, Part.Variant1, Part.Variant2, Part.Variant3, Part.Variant4, Part.Variant5, Part.Variant6, Part.Variant7, Part.Variant8, Part.Variant9, Part.Variant10, Part.Variant11, Part.Variant12, Part.Variant13, Part.Variant14, Part.Variant15, Part.Variant16, Part.Variant17, Part.Variant18, Part.Variant19, Part.Variant20, Part_.TheoreticalSpeed, Part_.LabelsPerInventoryPack, Part_.ItemsPerInventoryPack, Part_.ItemsPerLayer, Part_.LayersPerInventoryPack, Part_.PackingCode, Part_.LabelTemplate, Part_.ProductionInstructions, Part_.QualityInstructions, Part_.CustomerPartNo, Part_.CustomerPartDescription, Part_.LabelText1, Part_.LabelText2, Part_.LabelText3, Part_.UnitPrice1, Part_.UnitPrice2, Part_.LegacyPartNo, Part_.CreateDT, Part_.ModifiedDT, Part_.LoginID, Part_.PartRevisionNo, Part_.PartClassificationID, Part_.LastPurchaseCost, Part_.AveragePurchaseCost, Part_.StandardPurchaseCost, Part_.StandardManufactureCost, Part_.StandardSaleCost, Part_.PartSubClassificationID, Part_.CreatedInvUseByPeriod, Part_.CreatedInvUseAfterPeriod, Part_custom.Txn_date, Part_custom.Inventory_Item_Id, Part_custom.Item_Type_Description,  3 as \"org_id\" FROM Part JOIN Part_ ON (Part.PartID = Part_.PartID) JOIN Part_custom ON (Part.PartID = Part_custom.PartID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/PartALL/3 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Devernajoule PartALL" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartALL " from Part, Part_, Part_custom"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=TOULOUSE_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Part.PartID, Part.PartNumber, Part.Description, Part.IsRetired, Part.BaseUnitID, Part.PartTypeID, Part.Reference1, Part.Reference2, Part.Reference3, Part.Reference4, Part.Reference5, Part.Variant1, Part.Variant2, Part.Variant3, Part.Variant4, Part.Variant5, Part.Variant6, Part.Variant7, Part.Variant8, Part.Variant9, Part.Variant10, Part.Variant11, Part.Variant12, Part.Variant13, Part.Variant14, Part.Variant15, Part.Variant16, Part.Variant17, Part.Variant18, Part.Variant19, Part.Variant20, Part_.TheoreticalSpeed, Part_.LabelsPerInventoryPack, Part_.ItemsPerInventoryPack, Part_.ItemsPerLayer, Part_.LayersPerInventoryPack, Part_.PackingCode, Part_.LabelTemplate, Part_.ProductionInstructions, Part_.QualityInstructions, Part_.CustomerPartNo, Part_.CustomerPartDescription, Part_.LabelText1, Part_.LabelText2, Part_.LabelText3, Part_.UnitPrice1, Part_.UnitPrice2, Part_.LegacyPartNo, Part_.CreateDT, Part_.ModifiedDT, Part_.LoginID, Part_.PartRevisionNo, Part_.PartClassificationID, Part_.LastPurchaseCost, Part_.AveragePurchaseCost, Part_.StandardPurchaseCost, Part_.StandardManufactureCost, Part_.StandardSaleCost, Part_.PartSubClassificationID, Part_.CreatedInvUseByPeriod, Part_.CreatedInvUseAfterPeriod, Part_custom.Txn_date, Part_custom.Inventory_Item_Id, Part_custom.Item_Type_Description,  4 as \"org_id\" FROM Part JOIN Part_ ON (Part.PartID = Part_.PartID) JOIN Part_custom ON (Part.PartID = Part_custom.PartID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/PartALL/4 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest France - Toullouse PartALL" >> timings.txt

echo "      "
echo "     ##################################################"
echo "     PartALL " from Part, Part_, Part_custom"
echo "     sqoop: 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' "
echo "     ##################################################"
echo "      "

STARTTIME=$SECONDS
sqoop import --connect 'jdbc:sqlserver://172.23.236.90:1433;database=CAPETOWN_OWNER' --username usrSqoop --password AXm6Sn6#o --query "SELECT Part.PartID, Part.PartNumber, Part.Description, Part.IsRetired, Part.BaseUnitID, Part.PartTypeID, Part.Reference1, Part.Reference2, Part.Reference3, Part.Reference4, Part.Reference5, Part.Variant1, Part.Variant2, Part.Variant3, Part.Variant4, Part.Variant5, Part.Variant6, Part.Variant7, Part.Variant8, Part.Variant9, Part.Variant10, Part.Variant11, Part.Variant12, Part.Variant13, Part.Variant14, Part.Variant15, Part.Variant16, Part.Variant17, Part.Variant18, Part.Variant19, Part.Variant20, Part_.TheoreticalSpeed, Part_.LabelsPerInventoryPack, Part_.ItemsPerInventoryPack, Part_.ItemsPerLayer, Part_.LayersPerInventoryPack, Part_.PackingCode, Part_.LabelTemplate, Part_.ProductionInstructions, Part_.QualityInstructions, Part_.CustomerPartNo, Part_.CustomerPartDescription, Part_.LabelText1, Part_.LabelText2, Part_.LabelText3, Part_.UnitPrice1, Part_.UnitPrice2, Part_.LegacyPartNo, Part_.CreateDT, Part_.ModifiedDT, Part_.LoginID, Part_.PartRevisionNo, Part_.PartClassificationID, Part_.LastPurchaseCost, Part_.AveragePurchaseCost, Part_.StandardPurchaseCost, Part_.StandardManufactureCost, Part_.StandardSaleCost, Part_.PartSubClassificationID, Part_.CreatedInvUseByPeriod, Part_.CreatedInvUseAfterPeriod, Part_custom.Txn_date, Part_custom.Inventory_Item_Id, Part_custom.Item_Type_Description,  5 as \"org_id\" FROM Part JOIN Part_ ON (Part.PartID = Part_.PartID) JOIN Part_custom ON (Part.PartID = Part_custom.PartID)   WHERE \$CONDITIONS"  --target-dir /MEStemp/PartALL/5 --direct  -- --schema dbo --validate
ENDTIME=$SECONDS
echo "It takes $(($ENDTIME - $STARTTIME)) seconds to ingest South Africa PartALL" >> timings.txt


echo "After joined table ingest: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt


echo " "
echo "##################################################"
echo "Hive: Conditionally create table LineALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LineALL (LineID smallint, Line varchar(508), Description varchar(508), LineTypeID smallint, IsRetired tinyint, RfIntervalModeID tinyint, IsOEEInventoryIsolation tinyint, IsOEEInventoryReintroduction tinyint, IsCountOutputInventory tinyint, IsCountInputInventory tinyint, IsLineInfoSweepEnabled tinyint, IsWOOnSingleJob tinyint, LineShortName varchar(100), CurrentLineInfoID int, LastLineInfoID int, RfInvCreatedDateModeID tinyint, RfEndJobInvModeID tinyint, CurrentJobID int, IsScrapAsQualityLoss tinyint, IsScrapInProductionCounts tinyint, LineDownCostPerHour float, IsContributeLineGroupOutput tinyint, IsContributeLineGroupWaste tinyint, IsContributeLineGroupDowntime tinyint, OEETarget float, WasteTarget float, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table LocationAll"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.LocationAll (LocationID int, Location varchar(508), LocationTypeID smallint, IsRetired tinyint, MaxQuantity float, LocationCode varchar(100), Description varchar(508), LocationType varchar(100), LocationTypeCode varchar(100), Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table MachineStageAll"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.MachineStageAll (MachineStageID smallint, MachineStageTypeID smallint, Name varchar(508), IsRetired tinyint, DepartmentID smallint, Description varchar(508), CurrentShiftPatternID smallint, NoHeads smallint, IsOEEBottleNeck tinyint, IsProductionOutput tinyint, MachineStopID int, StoppedScreenThreshold smallint, LineSectionID smallint, IsDiscrete tinyint, RfDowntimeCollectionModeID tinyint, RfSpoilageCollectionModeID tinyint, RfProductionCollectionModeID tinyint, LastBuildRecordID int, CurrentJobID int, ModuleDatabase varchar(100), IntendedWOID int, MachineStageCode varchar(100), CurrentLaminateSize int, Color varchar(100), ModifiedDT timestamp, CleanState int, CleaningCycleNo int, CleaningLaminatePartID int, CleaningLaminateSize int,  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/'"

echo " "
echo "##################################################"
echo "Hive: Conditionally create table PartALL"
echo "##################################################"
echo " "

hive -e "Create External table IF NOT EXISTS MEStemp.PartALL (PartID int, PartNumber varchar(508), Description varchar(508), IsRetired tinyint, BaseUnitID smallint, PartTypeID smallint, Reference1 varchar(508), Reference2 varchar(508), Reference3 varchar(508), Reference4 varchar(508), Reference5 varchar(508), Variant1 varchar(200), Variant2 varchar(200), Variant3 varchar(200), Variant4 varchar(200), Variant5 varchar(200), Variant6 varchar(200), Variant7 varchar(200), Variant8 varchar(200), Variant9 varchar(200), Variant10 varchar(200), Variant11 varchar(200), Variant12 varchar(200), Variant13 varchar(200), Variant14 varchar(200), Variant15 varchar(200), Variant16 varchar(200), Variant17 varchar(200), Variant18 varchar(200), Variant19 varchar(200), Variant20 varchar(200), TheoreticalSpeed float, LabelsPerInventoryPack smallint, ItemsPerInventoryPack float, ItemsPerLayer float, LayersPerInventoryPack int, PackingCode varchar(100), LabelTemplate varchar(508), ProductionInstructions varchar(2000), QualityInstructions varchar(2000), CustomerPartNo varchar(508), CustomerPartDescription varchar(508), LabelText1 varchar(508), LabelText2 varchar(508), LabelText3 varchar(508), UnitPrice1 float, UnitPrice2 float, LegacyPartNo varchar(508), CreateDT timestamp, ModifiedDT timestamp, LoginID smallint, PartRevisionNo varchar(100), PartClassificationID smallint, LastPurchaseCost float, AveragePurchaseCost float, StandardPurchaseCost float, StandardManufactureCost float, StandardSaleCost float, PartSubClassificationID smallint, CreatedInvUseByPeriod int, CreatedInvUseAfterPeriod int, Txn_date timestamp, Inventory_Item_Id int, Item_Type_Description varchar(508),  org_id int) row format delimited fields terminated by ',' lines terminated by '\n' stored as textfile location '/MEStemp/'"


echo "Script execution time: $(($SECONDS - $SCRIPTBEGINTIME)) seconds." >> timings.txt


