Run this from this directory:

mvn install:install-file -Dfile=sqljdbc4.jar -Dpackaging=jar -DgroupId=com.microsoft.sqlserver -DartifactId=sqljdbc4 -Dversion=4.0



Use this dependency:

    	<dependency>
    		<groupId>com.microsoft.sqlserver</groupId>
    		<artifactId>sqljdbc4</artifactId>
    		<version>4.0</version>
    	</dependency>
