hdfs dfs -rm -r -skipTrash /YieldWorkflow
hdfs dfs -mkdir /YieldWorkflow

hadoop fs -put yieldIngestWorkflow.xml /YieldWorkflow/yieldIngestWorkflow.xml 
hadoop fs -put yieldIngestWorkflow-Long.xml /YieldWorkflow/yieldIngestWorkflow-Long.xml
hadoop fs -put yieldIngestWorkflow-Short-0.xml /YieldWorkflow/yieldIngestWorkflow-Short-0.xml
hadoop fs -put yieldIngestWorkflow-Short-1.xml /YieldWorkflow/yieldIngestWorkflow-Short-1.xml
hadoop fs -put yieldIngestWorkflow-Short-2.xml /YieldWorkflow/yieldIngestWorkflow-Short-2.xml
hadoop fs -put yieldIngestWorkflow-Short-3.xml /YieldWorkflow/yieldIngestWorkflow-Short-3.xml


oozie  job  -oozie  http://prod-hubnamedaws01.sunpowercorp.com:11000/oozie  -config  yieldIngestProperties.properties  -run
 