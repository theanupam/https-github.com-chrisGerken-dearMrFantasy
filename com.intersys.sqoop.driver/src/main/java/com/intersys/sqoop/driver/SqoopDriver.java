package com.intersys.sqoop.driver;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import org.codehaus.jettison.json.JSONException;

import com.intersys.sqoop.driver.exception.IngestionStateLoadException;
import com.intersys.sqoop.driver.exception.NoDataException;
import com.intersys.sqoop.driver.exception.NoSuchDatabaseException;
import com.intersys.sqoop.driver.model.DatabaseSpec;
import com.intersys.sqoop.driver.model.IngestionState;
import com.intersys.sqoop.driver.model.key.DatabaseSpecKey;

public class SqoopDriver {

	private static SqoopDriver instance = new SqoopDriver();
	
	private IngestionState state;
	
	public static final String PROPERTY_PREFIX = "job_";
	
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
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NoSuchDatabaseException e) {
			e.printStackTrace();
		} catch (NoDataException e) {
			e.printStackTrace();
		}
		
	}

	private void increment(String ingestionStateFile, String ooziePropsFile) throws IngestionStateLoadException, IOException, JSONException, SQLException, NoSuchDatabaseException, NoDataException {
		state = IngestionState.loadFrom(ingestionStateFile);
		Properties newProps = state.configureIncrement();
		updateProperties(newProps, ooziePropsFile);
		state.persistTo(ingestionStateFile);
	}

	private void updateProperties(Properties newProps, String ooziePropsFile) throws IOException {
		Properties oldProps = new Properties();
		InputStream fis = new FileInputStream(ooziePropsFile);
		oldProps.load(fis);
		fis.close();
		
		for (String key: oldProps.stringPropertyNames()) {
			String value = oldProps.getProperty(key); 
			if (!key.startsWith(PROPERTY_PREFIX)) {
				newProps.setProperty(key, value);
			}
		}
		
		
		OutputStream fos = new FileOutputStream(ooziePropsFile);
		newProps.store(fos, "comments...");
		fos.close();
	}

	public Connection getConnection(String database) throws SQLException, NoSuchDatabaseException {

		DatabaseSpec spec = state.getDatabases(new DatabaseSpecKey(database));
		
		Properties properties = new Properties();
	    properties.put("user", spec.getUserid());
	    properties.put("password", spec.getPassword());

		Connection conn = DriverManager.getConnection( spec.getUrl(), properties);
		return conn;
	    
	}

}
