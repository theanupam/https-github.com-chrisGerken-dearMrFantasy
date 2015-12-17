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

public class EnableAllModcos {

	private static EnableAllModcos instance = new EnableAllModcos();
	
	private IngestionState state;
	
	private EnableAllModcos() {

	}

	public static EnableAllModcos getDefault() {
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

		if (args.length < 1) {
			System.out.println("options:  <ingestion-state-file>  ");
			System.out.println("");
			return;
		}

		String ingestionStateFile = args[0];

		state = IngestionState.loadFrom(ingestionStateFile);
		for (DatabaseSpec dbs: state.getDatabases()) {
			dbs.setEnabled(true);
		}

		state.persistTo(ingestionStateFile);

	}

}
