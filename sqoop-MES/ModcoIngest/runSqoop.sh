java -cp com.intersys.sqoop.driver.jar  -iv com.intersys.sqoop.driver.SqoopDriver ingestionState.json  yieldIngestProperties.properties 

oozie  job  -oozie  http://prod-hubnamedaws01.sunpowercorp.com:11000/oozie  -config  yieldIngestProperties.properties  -run
 