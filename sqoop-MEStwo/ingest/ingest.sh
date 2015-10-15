#!/bin/bash


hadoop fs -test -d /MEStemp
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r -skipTrash /MEStemp
                else
                 echo "/MEStemp not present in HDFS"
    fi

exec ./ingest_SPML_ModuleInfo.sh & 
exec ./ingestAddress.sh & 
exec ./ingestCustomer.sh & 
exec ./ingestDepartment.sh & 
exec ./ingestInvChangeState.sh & 
exec ./ingestInvIsolatedReason.sh & 
exec ./ingestInvState.sh & 
exec ./ingestLineGroup.sh & 
exec ./ingestLineInfo.sh & 
exec ./ingestLineSection.sh & 
exec ./ingestLineType.sh & 
exec ./ingestMachineStageType.sh & 
exec ./ingestMachineStopCategory.sh & 
exec ./ingestMachineStopReason.sh & 
exec ./ingestOperation.sh & 
exec ./ingestOperationType.sh & 
exec ./ingestPartClassification.sh & 
exec ./ingestPartSubClassification.sh & 
exec ./ingestPartType.sh & 
exec ./ingestScrapReason.sh & 
exec ./ingestShift.sh & 
exec ./ingestShiftPattern.sh & 
exec ./ingestShiftType.sh & 
exec ./ingestSupplier.sh & 
exec ./ingestTagList.sh & 
exec ./ingestUnit.sh & 

exec ./ingestBuildRecordALL.sh & 

exec ./ingestInventoryLabelALL.sh & 

exec ./ingestInventoryPackALL.sh & 

exec ./ingestJobALL.sh & 

exec ./ingestLineALL.sh & 

exec ./ingestLocationALL.sh & 

exec ./ingestMachineStageALL.sh & 

exec ./ingestMachineStopALL.sh & 

exec ./ingestPartALL.sh & 

exec ./ingestWOALL.sh & 

