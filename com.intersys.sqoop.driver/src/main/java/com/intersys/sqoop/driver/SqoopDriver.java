package com.intersys.sqoop.driver;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Properties;

import org.codehaus.jettison.json.JSONException;

import com.intersys.sqoop.driver.exception.IngestionStateLoadException;
import com.intersys.sqoop.driver.exception.NoDataException;
import com.intersys.sqoop.driver.exception.NoSuchDatabaseException;
import com.intersys.sqoop.driver.exception.SqoopDriverException;
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
			System.out.println("");
			System.out.println("          -r  <oozie-properties-file> ");
			System.out.println("");
			System.out.println("          -v  <oozie-properties-file> ");
			return;
		}

		String ingestionStateFile = args[0];
		String ooziePropsFile = args[1];
		
		try {

			if (ingestionStateFile.equalsIgnoreCase("-r")) {
				ingestionStateFile = ooziePropsFile;
				getDefault().reset(ingestionStateFile);
				return;
			}

			if (ingestionStateFile.equalsIgnoreCase("-v")) {
				ingestionStateFile = ooziePropsFile;
				getDefault().validate(ingestionStateFile);
				return;
			}

			getDefault().increment(ingestionStateFile, ooziePropsFile);
		
		} catch (SqoopDriverException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
	}

	private void validate(String ingestionStateFile) {


	}

	private void reset(String ingestionStateFile) throws IOException, JSONException, IngestionStateLoadException {
		state = IngestionState.loadFrom(ingestionStateFile);
		state.reset();
		state.persistTo(ingestionStateFile);
	}

	private void increment(String ingestionStateFile, String ooziePropsFile) throws SqoopDriverException {
		try {
			state = IngestionState.loadFrom(ingestionStateFile);
			state.validate();
			Properties newProps = state.configureIncrement();
			updateProperties(newProps, ooziePropsFile);
			state.persistTo(ingestionStateFile);
		} catch (IOException e) {
			throw new SqoopDriverException(e);
		} catch (URISyntaxException e) {
			throw new SqoopDriverException(e);
		} catch (SQLException e) {
			throw new SqoopDriverException(e);
		} catch (JSONException e) {
			throw new SqoopDriverException(e);
		}
	}

	private void updateProperties(Properties newProps, String ooziePropsFile) throws IOException {
		Properties oldProps = new Properties();
		InputStream fis = new FileInputStream(ooziePropsFile);
		oldProps.load(fis);
		fis.close();
		
		Properties merged = new Properties();
		for (String key: oldProps.stringPropertyNames()) {
			String value = oldProps.getProperty(key); 
			if (!key.startsWith(PROPERTY_PREFIX)) {
				merged.setProperty(key, value);
			}
		}
		
		OutputStream fos = new FileOutputStream(ooziePropsFile);
		merged.store(fos, "comments...");
		fos.close();
		
		String key[] = new String[newProps.stringPropertyNames().size()];
		newProps.stringPropertyNames().toArray(key);
		Arrays.sort(key);
		
		FileWriter fw = new FileWriter(ooziePropsFile, true);
		for (String k: key) {
			fw.append(k+"="+newProps.getProperty(k)+"\n");
		}
		fw.close();
		
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
