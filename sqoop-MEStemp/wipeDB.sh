

hive drop table MEStemp/BuildRecord;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/BuildRecord
                else
                 echo "/MEStemp/BuildRecord not present in HDFS"
    fi


hive drop table MEStemp/Address;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStemp/Address
                else
                 echo "/MEStemp/Address not present in HDFS"
    fi

    