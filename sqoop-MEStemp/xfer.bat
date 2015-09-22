pscp  -pw   SqoopWorkflow.xml  app_MES_ReadOnlyUserMX@prod-hubnamedaws01.sunpowercorp.com:/home/appladm/SqoopWorkflow.xml
pscp  -pw   JobProperties.xml  app_MES_ReadOnlyUserMX@prod-hubnamedaws01.sunpowercorp.com:/home/appladm/JobProperties.xml
pscp  -pw   runSqoop.sh        app_MES_ReadOnlyUserMX@prod-hubnamedaws01.sunpowercorp.com:/home/appladm/runScoop.sh

pscp  -pw   CreateTable.txt    app_MES_ReadOnlyUserMX@prod-hubnamedaws01.sunpowercorp.com:/home/appladm/CreateTable.txt
pscp  -pw   runHive.sh         app_MES_ReadOnlyUserMX@prod-hubnamedaws01.sunpowercorp.com:/home/appladm/runHive.sh
