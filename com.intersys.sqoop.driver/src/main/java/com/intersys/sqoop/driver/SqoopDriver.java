package com.intersys.sqoop.driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import com.intersys.sqoop.driver.exception.IngestionStateLoadException;
import com.intersys.sqoop.driver.exception.NoSuchDatabaseException;
import com.intersys.sqoop.driver.model.DatabaseSpec;
import com.intersys.sqoop.driver.model.IngestionState;

public class SqoopDriver {

	private static SqoopDriver instance = new SqoopDriver();
	
	private IngestionState state;
	
	private String ooziePropsFile;
	private String ingestionStateFile;
	
	private SqoopDriver() {

	}

	public static SqoopDriver getDefault() {
		return instance;
		
	}
	
	public static void main(String[] args) {

		if (args.length < 2) {
			System.out.println("options:  <ingestion-state-file>  <oozie-properties-file> ");
			return;
		}
		
		String ingestionStateFile = args[0];
		String ooziePropsFile = args[1];
		
		try {
			getDefault().increment(ingestionStateFile, ooziePropsFile);
		} catch (IngestionStateLoadException e) {
			e.printStackTrace();
		}
		
	}

	private void increment(String ingestionStateFile, String ooziePropsFile) throws IngestionStateLoadException {
		this.ooziePropsFile = ooziePropsFile;
		this.ingestionStateFile = ingestionStateFile;
		state = IngestionState.loadFrom(ingestionStateFile);
		Properties newProps = IngestionState.configureIncrement();
		updateProperties(newProps);
	}

	private void updateProperties(Properties newProps) {

		
	}

	public Connection getConnection(String database) throws SQLException, NoSuchDatabaseException {

		DatabaseSpec spec = state.getDatabase(database);
		
		Properties properties = new Properties();
	    properties.put("user", spec.getUserid());
	    properties.put("password", spec.getPassword());

		Connection conn = DriverManager.getConnection( spec.getUrl(), properties);
		return conn;
	    
	}

}
