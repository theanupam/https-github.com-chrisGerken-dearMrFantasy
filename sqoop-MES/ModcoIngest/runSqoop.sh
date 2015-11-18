hdfs dfs -rm -r -skipTrash /IncrementalYield
hdfs dfs -mkdir /IncrementalYield

hadoop fs -put yieldIngestWorkflow.xml /IncrementalYield/yieldIngestWorkflow.xml 
hadoop fs -put yieldIngestWorkflow-Incr-0.xml /IncrementalYield/yieldIngestWorkflow-Incr-0.xml
hadoop fs -put yieldIngestWorkflow-Incr-1.xml /IncrementalYield/yieldIngestWorkflow-Incr-1.xml
hadoop fs -put yieldIngestWorkflow-Incr-2.xml /IncrementalYield/yieldIngestWorkflow-Incr-2.xml
hadoop fs -put yieldIngestWorkflow-Incr-3.xml /IncrementalYield/yieldIngestWorkflow-Incr-3.xml
hadoop fs -put yieldIngestWorkflow-Full-0.xml /IncrementalYield/yieldIngestWorkflow-Full-0.xml
hadoop fs -put yieldIngestWorkflow-Full-1.xml /IncrementalYield/yieldIngestWorkflow-Full-1.xml
hadoop fs -put yieldIngestWorkflow-Full-2.xml /IncrementalYield/yieldIngestWorkflow-Full-2.xml
hadoop fs -put yieldIngestWorkflow-Full-3.xml /IncrementalYield/yieldIngestWorkflow-Full-3.xml
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
echo "Validating yieldIngestWorkflow-Hive.xml";
oozie  validate  yieldIngestWorkflow-Hive.xml  
echo "";

echo "Validating yieldIngestWorkflow.xml";
oozie  validate  yieldIngestWorkflow.xml

oozie  job  -oozie  http://prod-hubnamedaws01.sunpowercorp.com:11000/oozie  -config  yieldIngestProperties.properties  -run
 