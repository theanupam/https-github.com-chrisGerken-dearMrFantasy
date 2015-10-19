
hadoop fs -put hiveTest.xml /YieldWorkflow/hiveTest.xml 
hadoop fs -put hiveTest.sql /YieldWorkflow/hiveTest.sql 


oozie  job  -oozie  http://prod-hubnamedaws01.sunpowercorp.com:11000/oozie  -config  hiveTest.properties  -run
 
 
