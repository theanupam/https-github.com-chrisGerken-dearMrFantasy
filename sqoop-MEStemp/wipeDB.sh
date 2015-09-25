

hive drop table MEStemp/Asset;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Asset
                else
                 echo "/MEStemp/Asset not present in HDFS"
    fi


hive drop table MEStemp/BuildRecord;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/BuildRecord
                else
                 echo "/MEStemp/BuildRecord not present in HDFS"
    fi

    