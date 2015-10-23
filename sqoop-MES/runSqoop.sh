hdfs dfs -rm -r -skipTrash /YieldWorkflow
hdfs dfs -mkdir /YieldWorkflow

hadoop fs -put yieldIngestWorkflow.xml /YieldWorkflow/yieldIngestWorkflow.xml 
hadoop fs -put yieldIngestWorkflow-SPMX.xml /YieldWorkflow/yieldIngestWorkflow-SPMX.xml
hadoop fs -put yieldIngestWorkflow-SPMM.xml /YieldWorkflow/yieldIngestWorkflow-SPMM.xml
hadoop fs -put yieldIngestWorkflow-SPTT.xml /YieldWorkflow/yieldIngestWorkflow-SPTT.xml
hadoop fs -put yieldIngestWorkflow-SPTM.xml /YieldWorkflow/yieldIngestWorkflow-SPTM.xml
hadoop fs -put yieldIngestWorkflow-SPDV.xml /YieldWorkflow/yieldIngestWorkflow-SPDV.xml


oozie  job  -oozie  http://prod-hubnamedaws01.sunpowercorp.com:11000/oozie  -config  yieldIngestProperties.properties  -run
 