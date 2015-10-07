#!/bin/bash

echo "##################################################"
echo " "
date 
rm timings.txt
SCRIPTBEGINTIME=$SECONDS

hadoop fs -test -d /MEStwo
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r -skipTrash /MEStwo
                else
                 echo "/MEStwo not present in HDFS"
    fi
