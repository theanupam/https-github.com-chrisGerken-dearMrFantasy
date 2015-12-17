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
import java.util.HashMap;
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
	
	private HashMap<String, Connection> connections = new HashMap<String, Connection>();
	
	private SqoopDriver() {

	}

	public static SqoopDriver getDefault() {
		return instance;
		
	}
	
	public static void main(String[] args) {
		try {
			getDefault().run(args);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void run(String[] args) throws Exception {

		boolean validate = false;
		boolean submit = false;
		boolean increment = false;
		boolean update = false;
		boolean reset = false;
		boolean query = false;
		
		String ingestionStateFile = null;
		String ooziePropsFile = null;
		
		if (args.length < 3) {
			System.out.println("options:  -iqrsuv <ingestion-state-file>  <oozie-properties-file> ");
			System.out.println("");
			System.out.println("          -i : increment history ");
			System.out.println("          -q : run job queries ");
			System.out.println("          -r : reset history ");
			System.out.println("          -u : update properties ");
			System.out.println("          -v : validate ");
			return;
		}

		for (String arg: args) {
			if (arg.startsWith("-")) {
				increment = arg.contains("i");
				reset = arg.contains("r");
				query = arg.contains("q");
				submit = arg.contains("s");
				validate = arg.contains("v");
			} else if (ingestionStateFile == null) {
				ingestionStateFile = arg;
			} else if (ooziePropsFile == null) {
				ooziePropsFile = arg;
			} else {
				System.out.println("Unknown argument: "+arg);
				System.out.println("");
				System.out.println("options:  -iqrsuv <ingestion-state-file>  <oozie-properties-file> ");
				System.out.println("");
				System.out.println("          -i : increment history ");
				System.out.println("          -q : run job queries ");
				System.out.println("          -r : reset history ");
				System.out.println("          -u : update properties ");
				System.out.println("          -v : validate ");
				return;
			}
		}

		state = IngestionState.loadFrom(ingestionStateFile);
		Properties newProps = new Properties();
		boolean persist = false;
		
		if (reset) {
			state.reset();
		}

		if (validate) {
			state.validate();
		}

		if (increment) {
			newProps = state.configureIncrement();
			updateProperties(newProps, ooziePropsFile);
			persist = true;
		}

		if (update) {
			updateProperties(newProps, ooziePropsFile);
		}

		if (query) {
			state.query();
		}

		if (persist) {
			state.persistTo(ingestionStateFile);
		}

		cleanup();

	}

	private void cleanup() {
		for (Connection conn: connections.values()) {
			try { conn.close(); } catch (Throwable t) { }
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

		Connection conn = connections.get(database);
		if (conn == null) {
			DatabaseSpec spec = state.getDatabases(new DatabaseSpecKey(database));
			
			Properties properties = new Properties();
		    properties.put("user", spec.getUserid());
		    properties.put("password", spec.getPassword());

			conn = DriverManager.getConnection( spec.getUrl(), properties);
			connections.put(database, conn);
		}
		
		return conn;
	    
	}

}
