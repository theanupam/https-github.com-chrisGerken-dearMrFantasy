hdfs dfs -rm -r -skipTrash /IncrementalYield
hdfs dfs -mkdir /IncrementalYield

hadoop fs -put yieldIngestWorkflow.xml /IncrementalYield/yieldIngestWorkflow.xml 
hadoop fs -put yieldIngestWorkflow-Incr-0.xml /IncrementalYield/yieldIngestWorkflow-Incr-0.xml
hadoop fs -put yieldIngestWorkflow-Incr-1.xml /IncrementalYield/yieldIngestWorkflow-Incr-1.xml
hadoop fs -put yieldIngestWorkflow-Incr-2.xml /IncrementalYield/yieldIngestWorkflow-Incr-2.xml
hadoop fs -put yieldIngestWorkflow-Incr-3.xml /IncrementalYield/yieldIngestWorkflow-Incr-3.xml
hadoop fs -put yieldIngestWorkflow-Incr-4.xml /IncrementalYield/yieldIngestWorkflow-Incr-4.xml
hadoop fs -put yieldIngestWorkflow-Incr-5.xml /IncrementalYield/yieldIngestWorkflow-Incr-5.xml
hadoop fs -put yieldIngestWorkflow-Incr-6.xml /IncrementalYield/yieldIngestWorkflow-Incr-6.xml
hadoop fs -put yieldIngestWorkflow-Incr-7.xml /IncrementalYield/yieldIngestWorkflow-Incr-7.xml
hadoop fs -put yieldIngestWorkflow-Incr-8.xml /IncrementalYield/yieldIngestWorkflow-Incr-8.xml
hadoop fs -put yieldIngestWorkflow-Incr-9.xml /IncrementalYield/yieldIngestWorkflow-Incr-9.xml
hadoop fs -put yieldIngestWorkflow-Full-0.xml /IncrementalYield/yieldIngestWorkflow-Full-0.xml
hadoop fs -put yieldIngestWorkflow-Full-1.xml /IncrementalYield/yieldIngestWorkflow-Full-1.xml
hadoop fs -put yieldIngestWorkflow-Full-2.xml /IncrementalYield/yieldIngestWorkflow-Full-2.xml
hadoop fs -put yieldIngestWorkflow-Full-3.xml /IncrementalYield/yieldIngestWorkflow-Full-3.xml
hadoop fs -put yieldIngestWorkflow-Full-4.xml /IncrementalYield/yieldIngestWorkflow-Full-4.xml
hadoop fs -put yieldIngestWorkflow-Full-5.xml /IncrementalYield/yieldIngestWorkflow-Full-5.xml
hadoop fs -put yieldIngestWorkflow-Full-6.xml /IncrementalYield/yieldIngestWorkflow-Full-6.xml
hadoop fs -put yieldIngestWorkflow-Full-7.xml /IncrementalYield/yieldIngestWorkflow-Full-7.xml
hadoop fs -put yieldIngestWorkflow-Full-8.xml /IncrementalYield/yieldIngestWorkflow-Full-8.xml
hadoop fs -put yieldIngestWorkflow-Full-9.xml /IncrementalYield/yieldIngestWorkflow-Full-9.xml
hadoop fs -put yieldIngestWorkflow-Full-10.xml /IncrementalYield/yieldIngestWorkflow-Full-10.xml
hadoop fs -put yieldIngestWorkflow-Full-11.xml /IncrementalYield/yieldIngestWorkflow-Full-11.xml
hadoop fs -put yieldIngestWorkflow-Full-12.xml /IncrementalYield/yieldIngestWorkflow-Full-12.xml
hadoop fs -put yieldIngestWorkflow-Full-13.xml /IncrementalYield/yieldIngestWorkflow-Full-13.xml
hadoop fs -put yieldIngestWorkflow-Full-14.xml /IncrementalYield/yieldIngestWorkflow-Full-14.xml
hadoop fs -put yieldIngestWorkflow-Full-15.xml /IncrementalYield/yieldIngestWorkflow-Full-15.xml
hadoop fs -put yieldIngestWorkflow-Full-16.xml /IncrementalYield/yieldIngestWorkflow-Full-16.xml
hadoop fs -put yieldIngestWorkflow-Full-17.xml /IncrementalYield/yieldIngestWorkflow-Full-17.xml
hadoop fs -put yieldIngestWorkflow-Full-18.xml /IncrementalYield/yieldIngestWorkflow-Full-18.xml
hadoop fs -put yieldIngestWorkflow-Full-19.xml /IncrementalYield/yieldIngestWorkflow-Full-19.xml
hadoop fs -put yieldIngestWorkflow-Full-20.xml /IncrementalYield/yieldIngestWorkflow-Full-20.xml
hadoop fs -put yieldIngestWorkflow-Full-21.xml /IncrementalYield/yieldIngestWorkflow-Full-21.xml
hadoop fs -put yieldIngestWorkflow-Full-22.xml /IncrementalYield/yieldIngestWorkflow-Full-22.xml
hadoop fs -put yieldIngestWorkflow-Full-23.xml /IncrementalYield/yieldIngestWorkflow-Full-23.xml
hadoop fs -put yieldIngestWorkflow-Full-24.xml /IncrementalYield/yieldIngestWorkflow-Full-24.xml
hadoop fs -put yieldIngestWorkflow-Full-25.xml /IncrementalYield/yieldIngestWorkflow-Full-25.xml
hadoop fs -put yieldIngestWorkflow-Full-26.xml /IncrementalYield/yieldIngestWorkflow-Full-26.xml
hadoop fs -put yieldIngestWorkflow-Full-27.xml /IncrementalYield/yieldIngestWorkflow-Full-27.xml
hadoop fs -put yieldIngestWorkflow-Full-28.xml /IncrementalYield/yieldIngestWorkflow-Full-28.xml
hadoop fs -put yieldIngestWorkflow-Full-29.xml /IncrementalYield/yieldIngestWorkflow-Full-29.xml
hadoop fs -put yieldIngestWorkflow-Hive.xml /IncrementalYield/yieldIngestWorkflow-Hive.xml

hadoop fs -put hs_01.q /IncrementalYield/hs_01.q 
hadoop fs -put hs_02.q /IncrementalYield/hs_02.q 
hadoop fs -put hs_03.q /IncrementalYield/hs_03.q 

echo "Validating yieldIngestWorkflow-Incr-0.xml";
oozie  validate  yieldIngestWorkflow-Incr-0.xml  
echo "";
echo "Validating yieldIngestWorkflow-Incr-1.xml";
oozie  validate  yieldIngestWorkflow-Incr-1.xml  
echo "";
echo "Validating yieldIngestWorkflow-Incr-2.xml";
oozie  validate  yieldIngestWorkflow-Incr-2.xml  
echo "";
echo "Validating yieldIngestWorkflow-Incr-3.xml";
oozie  validate  yieldIngestWorkflow-Incr-3.xml  
echo "";
echo "Validating yieldIngestWorkflow-Incr-4.xml";
oozie  validate  yieldIngestWorkflow-Incr-4.xml  
echo "";
echo "Validating yieldIngestWorkflow-Incr-5.xml";
oozie  validate  yieldIngestWorkflow-Incr-5.xml  
echo "";
echo "Validating yieldIngestWorkflow-Incr-6.xml";
oozie  validate  yieldIngestWorkflow-Incr-6.xml  
echo "";
echo "Validating yieldIngestWorkflow-Incr-7.xml";
oozie  validate  yieldIngestWorkflow-Incr-7.xml  
echo "";
echo "Validating yieldIngestWorkflow-Incr-8.xml";
oozie  validate  yieldIngestWorkflow-Incr-8.xml  
echo "";
echo "Validating yieldIngestWorkflow-Incr-9.xml";
oozie  validate  yieldIngestWorkflow-Incr-9.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-0.xml";
oozie  validate  yieldIngestWorkflow-Full-0.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-1.xml";
oozie  validate  yieldIngestWorkflow-Full-1.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-2.xml";
oozie  validate  yieldIngestWorkflow-Full-2.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-3.xml";
oozie  validate  yieldIngestWorkflow-Full-3.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-4.xml";
oozie  validate  yieldIngestWorkflow-Full-4.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-5.xml";
oozie  validate  yieldIngestWorkflow-Full-5.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-6.xml";
oozie  validate  yieldIngestWorkflow-Full-6.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-7.xml";
oozie  validate  yieldIngestWorkflow-Full-7.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-8.xml";
oozie  validate  yieldIngestWorkflow-Full-8.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-9.xml";
oozie  validate  yieldIngestWorkflow-Full-9.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-10.xml";
oozie  validate  yieldIngestWorkflow-Full-10.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-11.xml";
oozie  validate  yieldIngestWorkflow-Full-11.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-12.xml";
oozie  validate  yieldIngestWorkflow-Full-12.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-13.xml";
oozie  validate  yieldIngestWorkflow-Full-13.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-14.xml";
oozie  validate  yieldIngestWorkflow-Full-14.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-15.xml";
oozie  validate  yieldIngestWorkflow-Full-15.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-16.xml";
oozie  validate  yieldIngestWorkflow-Full-16.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-17.xml";
oozie  validate  yieldIngestWorkflow-Full-17.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-18.xml";
oozie  validate  yieldIngestWorkflow-Full-18.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-19.xml";
oozie  validate  yieldIngestWorkflow-Full-19.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-20.xml";
oozie  validate  yieldIngestWorkflow-Full-20.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-21.xml";
oozie  validate  yieldIngestWorkflow-Full-21.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-22.xml";
oozie  validate  yieldIngestWorkflow-Full-22.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-23.xml";
oozie  validate  yieldIngestWorkflow-Full-23.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-24.xml";
oozie  validate  yieldIngestWorkflow-Full-24.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-25.xml";
oozie  validate  yieldIngestWorkflow-Full-25.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-26.xml";
oozie  validate  yieldIngestWorkflow-Full-26.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-27.xml";
oozie  validate  yieldIngestWorkflow-Full-27.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-28.xml";
oozie  validate  yieldIngestWorkflow-Full-28.xml  
echo "";
echo "Validating yieldIngestWorkflow-Full-29.xml";
oozie  validate  yieldIngestWorkflow-Full-29.xml  
echo "";
echo "Validating yieldIngestWorkflow-Hive.xml";
oozie  validate  yieldIngestWorkflow-Hive.xml  
echo "";

echo "Validating yieldIngestWorkflow.xml";
oozie  validate  yieldIngestWorkflow.xml

 