java -cp com.intersys.sqoop.driver.jar com.intersys.sqoop.driver.SqoopDriver  -iu ingestionState.json  yieldIngestProperties.properties 

oozie  job  -oozie  http://prod-hubnamedaws01.sunpowercorp.com:11000/oozie  -config  yieldIngestProperties.properties  -run
  