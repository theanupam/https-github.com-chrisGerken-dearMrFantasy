hadoop fs -put yieldIngestWorkflow.xml /MEStemp/yieldIngestWorkflow.xml
 
oozie  job  -oozie  http://prod-hubnamedaws01.sunpowercorp.com:11000/oozie  -config  /MEStemp/yieldIngestProperties.xml  -run
