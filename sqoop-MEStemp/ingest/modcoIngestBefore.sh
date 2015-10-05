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
