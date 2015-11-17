
hadoop fs -put HiveQuery.xml 		/IncrementalYield/HiveQuery.xml 
hadoop fs -put create_01.q 			/IncrementalYield/create_01.q
hadoop fs -put drop_01.q 			/IncrementalYield/drop_01.q

echo "Validating HiveQuery.xml";
oozie  validate  HiveQuery.xml  
echo "";

oozie  job  -oozie  http://prod-hubnamedaws01.sunpowercorp.com:11000/oozie  -config  HiveQuery.properties  -run
 