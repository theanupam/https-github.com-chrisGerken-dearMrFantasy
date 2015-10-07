#!/bin/bash


hadoop fs -test -d /MEStemp
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r -skipTrash /MEStemp
                else
                 echo "/MEStemp not present in HDFS"
    fi

exec ./ingestLineGroup.sh & 
exec ./ingestLineInfo.sh & 

exec ./ingestBuildRecordALL.sh & 

exec ./ingestInventoryLabelALL.sh & 

exec ./ingestInventoryPackALL.sh & 

exec ./ingestJobALL.sh & 

exec ./ingestLineALL.sh & 

exec ./ingestLocationAll.sh & 

exec ./ingestMachineStageAll.sh & 

exec ./ingestPartALL.sh & 

exec ./ingestWOALL.sh & 

