

hive drop table MEStwo/LineGroup;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LineGroup
                else
                 echo "/MEStwo/LineGroup not present in HDFS"
    fi


hive drop table MEStwo/LineInfo;

hadoop fs -test -d /MES/PartType
    if [ $? = 0 ]
            then
                hdfs dfs -rm -r /MEStwo/LineInfo
                else
                 echo "/MEStwo/LineInfo not present in HDFS"
    fi

    