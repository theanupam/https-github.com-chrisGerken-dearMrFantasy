hdfs dfs -rm -r -skipTrash /IncrementalYield
hdfs dfs -mkdir /IncrementalYield

hadoop fs -put yieldIngestWorkflow.xml /IncrementalYield/yieldIngestWorkflow.xml 
hadoop fs -put yieldIngestWorkflow-Full-0.xml /IncrementalYield/yieldIngestWorkflow-Full-0.xml
hadoop fs -put yieldIngestWorkflow-Full-1.xml /IncrementalYield/yieldIngestWorkflow-Full-1.xml
hadoop fs -put yieldIngestWorkflow-Full-2.xml /IncrementalYield/yieldIngestWorkflow-Full-2.xml
hadoop fs -put yieldIngestWorkflow-Incr-0.xml /IncrementalYield/yieldIngestWorkflow-Incr-0.xml
hadoop fs -put yieldIngestWorkflow-Incr-1.xml /IncrementalYield/yieldIngestWorkflow-Incr-1.xml
hadoop fs -put yieldIngestWorkflow-Incr-2.xml /IncrementalYield/yieldIngestWorkflow-Incr-2.xml

oozie  validate  yieldIngestWorkflow-Full-0.xml  
oozie  validate  yieldIngestWorkflow-Full-1.xml  
oozie  validate  yieldIngestWorkflow-Full-2.xml  
oozie  validate  yieldIngestWorkflow-Incr-0.xml  
oozie  validate  yieldIngestWorkflow-Incr-1.xml  
oozie  validate  yieldIngestWorkflow-Incr-2.xml  

oozie  validate  yieldIngestWorkflow.xml

oozie  job  -oozie  http://prod-hubnamedaws01.sunpowercorp.com:11000/oozie  -config  yieldIngestProperties.properties  -run
 