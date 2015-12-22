hdfs dfs -rm -r -skipTrash /IncrementalYield
hdfs dfs -mkdir /IncrementalYield

hadoop fs -put yieldIngestWorkflow.xml /IncrementalYield/yieldIngestWorkflow.xml 
echo "Validating and deploying yieldIngestWorkflow-Full-0.xml";
oozie  validate  yieldIngestWorkflow-Full-0.xml  
hadoop fs -put yieldIngestWorkflow-Full-0.xml /IncrementalYield/yieldIngestWorkflow-Full-0.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-1.xml";
oozie  validate  yieldIngestWorkflow-Full-1.xml  
hadoop fs -put yieldIngestWorkflow-Full-1.xml /IncrementalYield/yieldIngestWorkflow-Full-1.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-2.xml";
oozie  validate  yieldIngestWorkflow-Full-2.xml  
hadoop fs -put yieldIngestWorkflow-Full-2.xml /IncrementalYield/yieldIngestWorkflow-Full-2.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-3.xml";
oozie  validate  yieldIngestWorkflow-Full-3.xml  
hadoop fs -put yieldIngestWorkflow-Full-3.xml /IncrementalYield/yieldIngestWorkflow-Full-3.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-4.xml";
oozie  validate  yieldIngestWorkflow-Full-4.xml  
hadoop fs -put yieldIngestWorkflow-Full-4.xml /IncrementalYield/yieldIngestWorkflow-Full-4.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-5.xml";
oozie  validate  yieldIngestWorkflow-Full-5.xml  
hadoop fs -put yieldIngestWorkflow-Full-5.xml /IncrementalYield/yieldIngestWorkflow-Full-5.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-6.xml";
oozie  validate  yieldIngestWorkflow-Full-6.xml  
hadoop fs -put yieldIngestWorkflow-Full-6.xml /IncrementalYield/yieldIngestWorkflow-Full-6.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-7.xml";
oozie  validate  yieldIngestWorkflow-Full-7.xml  
hadoop fs -put yieldIngestWorkflow-Full-7.xml /IncrementalYield/yieldIngestWorkflow-Full-7.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-8.xml";
oozie  validate  yieldIngestWorkflow-Full-8.xml  
hadoop fs -put yieldIngestWorkflow-Full-8.xml /IncrementalYield/yieldIngestWorkflow-Full-8.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-9.xml";
oozie  validate  yieldIngestWorkflow-Full-9.xml  
hadoop fs -put yieldIngestWorkflow-Full-9.xml /IncrementalYield/yieldIngestWorkflow-Full-9.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-10.xml";
oozie  validate  yieldIngestWorkflow-Full-10.xml  
hadoop fs -put yieldIngestWorkflow-Full-10.xml /IncrementalYield/yieldIngestWorkflow-Full-10.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-11.xml";
oozie  validate  yieldIngestWorkflow-Full-11.xml  
hadoop fs -put yieldIngestWorkflow-Full-11.xml /IncrementalYield/yieldIngestWorkflow-Full-11.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-12.xml";
oozie  validate  yieldIngestWorkflow-Full-12.xml  
hadoop fs -put yieldIngestWorkflow-Full-12.xml /IncrementalYield/yieldIngestWorkflow-Full-12.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-13.xml";
oozie  validate  yieldIngestWorkflow-Full-13.xml  
hadoop fs -put yieldIngestWorkflow-Full-13.xml /IncrementalYield/yieldIngestWorkflow-Full-13.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-14.xml";
oozie  validate  yieldIngestWorkflow-Full-14.xml  
hadoop fs -put yieldIngestWorkflow-Full-14.xml /IncrementalYield/yieldIngestWorkflow-Full-14.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-15.xml";
oozie  validate  yieldIngestWorkflow-Full-15.xml  
hadoop fs -put yieldIngestWorkflow-Full-15.xml /IncrementalYield/yieldIngestWorkflow-Full-15.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-16.xml";
oozie  validate  yieldIngestWorkflow-Full-16.xml  
hadoop fs -put yieldIngestWorkflow-Full-16.xml /IncrementalYield/yieldIngestWorkflow-Full-16.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-17.xml";
oozie  validate  yieldIngestWorkflow-Full-17.xml  
hadoop fs -put yieldIngestWorkflow-Full-17.xml /IncrementalYield/yieldIngestWorkflow-Full-17.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-18.xml";
oozie  validate  yieldIngestWorkflow-Full-18.xml  
hadoop fs -put yieldIngestWorkflow-Full-18.xml /IncrementalYield/yieldIngestWorkflow-Full-18.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-19.xml";
oozie  validate  yieldIngestWorkflow-Full-19.xml  
hadoop fs -put yieldIngestWorkflow-Full-19.xml /IncrementalYield/yieldIngestWorkflow-Full-19.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-20.xml";
oozie  validate  yieldIngestWorkflow-Full-20.xml  
hadoop fs -put yieldIngestWorkflow-Full-20.xml /IncrementalYield/yieldIngestWorkflow-Full-20.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-21.xml";
oozie  validate  yieldIngestWorkflow-Full-21.xml  
hadoop fs -put yieldIngestWorkflow-Full-21.xml /IncrementalYield/yieldIngestWorkflow-Full-21.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-22.xml";
oozie  validate  yieldIngestWorkflow-Full-22.xml  
hadoop fs -put yieldIngestWorkflow-Full-22.xml /IncrementalYield/yieldIngestWorkflow-Full-22.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-23.xml";
oozie  validate  yieldIngestWorkflow-Full-23.xml  
hadoop fs -put yieldIngestWorkflow-Full-23.xml /IncrementalYield/yieldIngestWorkflow-Full-23.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-24.xml";
oozie  validate  yieldIngestWorkflow-Full-24.xml  
hadoop fs -put yieldIngestWorkflow-Full-24.xml /IncrementalYield/yieldIngestWorkflow-Full-24.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-25.xml";
oozie  validate  yieldIngestWorkflow-Full-25.xml  
hadoop fs -put yieldIngestWorkflow-Full-25.xml /IncrementalYield/yieldIngestWorkflow-Full-25.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-26.xml";
oozie  validate  yieldIngestWorkflow-Full-26.xml  
hadoop fs -put yieldIngestWorkflow-Full-26.xml /IncrementalYield/yieldIngestWorkflow-Full-26.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-27.xml";
oozie  validate  yieldIngestWorkflow-Full-27.xml  
hadoop fs -put yieldIngestWorkflow-Full-27.xml /IncrementalYield/yieldIngestWorkflow-Full-27.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-28.xml";
oozie  validate  yieldIngestWorkflow-Full-28.xml  
hadoop fs -put yieldIngestWorkflow-Full-28.xml /IncrementalYield/yieldIngestWorkflow-Full-28.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Full-29.xml";
oozie  validate  yieldIngestWorkflow-Full-29.xml  
hadoop fs -put yieldIngestWorkflow-Full-29.xml /IncrementalYield/yieldIngestWorkflow-Full-29.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Incr-0.xml";
oozie  validate  yieldIngestWorkflow-Incr-0.xml  
hadoop fs -put yieldIngestWorkflow-Incr-0.xml /IncrementalYield/yieldIngestWorkflow-Incr-0.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Incr-1.xml";
oozie  validate  yieldIngestWorkflow-Incr-1.xml  
hadoop fs -put yieldIngestWorkflow-Incr-1.xml /IncrementalYield/yieldIngestWorkflow-Incr-1.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Incr-2.xml";
oozie  validate  yieldIngestWorkflow-Incr-2.xml  
hadoop fs -put yieldIngestWorkflow-Incr-2.xml /IncrementalYield/yieldIngestWorkflow-Incr-2.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Incr-3.xml";
oozie  validate  yieldIngestWorkflow-Incr-3.xml  
hadoop fs -put yieldIngestWorkflow-Incr-3.xml /IncrementalYield/yieldIngestWorkflow-Incr-3.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Incr-4.xml";
oozie  validate  yieldIngestWorkflow-Incr-4.xml  
hadoop fs -put yieldIngestWorkflow-Incr-4.xml /IncrementalYield/yieldIngestWorkflow-Incr-4.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Incr-5.xml";
oozie  validate  yieldIngestWorkflow-Incr-5.xml  
hadoop fs -put yieldIngestWorkflow-Incr-5.xml /IncrementalYield/yieldIngestWorkflow-Incr-5.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Incr-6.xml";
oozie  validate  yieldIngestWorkflow-Incr-6.xml  
hadoop fs -put yieldIngestWorkflow-Incr-6.xml /IncrementalYield/yieldIngestWorkflow-Incr-6.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Incr-7.xml";
oozie  validate  yieldIngestWorkflow-Incr-7.xml  
hadoop fs -put yieldIngestWorkflow-Incr-7.xml /IncrementalYield/yieldIngestWorkflow-Incr-7.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Incr-8.xml";
oozie  validate  yieldIngestWorkflow-Incr-8.xml  
hadoop fs -put yieldIngestWorkflow-Incr-8.xml /IncrementalYield/yieldIngestWorkflow-Incr-8.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Incr-9.xml";
oozie  validate  yieldIngestWorkflow-Incr-9.xml  
hadoop fs -put yieldIngestWorkflow-Incr-9.xml /IncrementalYield/yieldIngestWorkflow-Incr-9.xml
echo "";
echo "Validating and deploying yieldIngestWorkflow-Hive.xml";
oozie  validate  yieldIngestWorkflow-Hive.xml  
hadoop fs -put yieldIngestWorkflow-Hive.xml /IncrementalYield/yieldIngestWorkflow-Hive.xml
echo "";

hadoop fs -put create_1.q /IncrementalYield/create_1.q 
hadoop fs -put create_2.q /IncrementalYield/create_2.q 
hadoop fs -put create_3.q /IncrementalYield/create_3.q 
hadoop fs -put create_4.q /IncrementalYield/create_4.q 
hadoop fs -put create_1_1.q /IncrementalYield/create_1_1.q 
hadoop fs -put create_1_2.q /IncrementalYield/create_1_2.q 
hadoop fs -put create_2_1.q /IncrementalYield/create_2_1.q 
hadoop fs -put create_2_2.q /IncrementalYield/create_2_2.q 
hadoop fs -put create_3_1.q /IncrementalYield/create_3_1.q 
hadoop fs -put create_3_2.q /IncrementalYield/create_3_2.q 
hadoop fs -put create_4_1.q /IncrementalYield/create_4_1.q 
hadoop fs -put create_4_2.q /IncrementalYield/create_4_2.q 
hadoop fs -put create_5_1.q /IncrementalYield/create_5_1.q 
hadoop fs -put create_5_2.q /IncrementalYield/create_5_2.q 


echo "Validating yieldIngestWorkflow.xml";
oozie  validate  yieldIngestWorkflow.xml

hdfs dfs -mkdir /MES-UDF

hadoop fs -rm /MES-UDF/com.intersys.hive.udf.jar 

hadoop fs -put com.intersys.hive.udf.jar /MES-UDF/com.intersys.hive.udf.jar 

hive -e "DROP FUNCTION IF EXISTS MES.get_IsolatedReasonGroup" 

hive -e "CREATE FUNCTION MES.get_IsolatedReasonGroup AS 'com.intersys.hive.udf.IsolatedReasonGroup' USING JAR 'hdfs:/MES-UDF/com.intersys.hive.udf.jar' " 

hive -e "DROP FUNCTION IF EXISTS MES.get_LocationName" 

hive -e "CREATE FUNCTION MES.get_LocationName AS 'com.intersys.hive.udf.LocationName' USING JAR 'hdfs:/MES-UDF/com.intersys.hive.udf.jar' " 

hive -e "DROP FUNCTION IF EXISTS MES.get_ScrapReason" 

hive -e "CREATE FUNCTION MES.get_ScrapReason AS 'com.intersys.hive.udf.ScrapReason' USING JAR 'hdfs:/MES-UDF/com.intersys.hive.udf.jar' " 

hadoop fs -rm /MES/IsolatedReasonGroup 

hadoop fs -mkdir /MES/IsolatedReasonGroup

hadoop fs -put IsolatedReasonGroup_data.txt /MES/IsolatedReasonGroup/IsolatedReasonGroup_data.txt

echo " "
echo "##################################################"
echo "Hive: Drop and Create table IsolatedReasonGroup"
echo "##################################################"
echo " "

hive -e "Drop table MES.IsolatedReasonGroup"

hive -e "Create External table IF NOT EXISTS MES.IsolatedReasonGroup (IsolatedReasonGroupID int, IsolatedReason varchar(256), IsolatedReasonGroup varchar(256)) row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/MES/IsolatedReasonGroup'"
 
