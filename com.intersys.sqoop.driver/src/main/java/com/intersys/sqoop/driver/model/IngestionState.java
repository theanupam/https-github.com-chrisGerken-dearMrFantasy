package com.intersys.sqoop.driver.model;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import com.intersys.sqoop.driver.Helper;
import com.intersys.sqoop.driver.exception.IngestionStateLoadException;
import com.intersys.sqoop.driver.model.key.*;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

public class IngestionState {



	private HashMap<TableSpecKey,TableSpec> _tables;

	private HashMap<DatabaseSpecKey,DatabaseSpec> _databases;

	private HashMap<IncrementalLoadKey,IncrementalLoad> _incrementals;

	public IngestionState(JSONObject jobj) throws JSONException {
		super();

		JSONArray jarr;


		jarr = jobj.getJSONArray("tables");
		_tables = new HashMap<TableSpecKey,TableSpec>();
		for (int i = 0; i < jarr.length(); i++) {
			addTables(new TableSpec(jarr.getJSONObject(i)));
		}


		jarr = jobj.getJSONArray("databases");
		_databases = new HashMap<DatabaseSpecKey,DatabaseSpec>();
		for (int i = 0; i < jarr.length(); i++) {
			addDatabases(new DatabaseSpec(jarr.getJSONObject(i)));
		}


		jarr = jobj.getJSONArray("incrementals");
		_incrementals = new HashMap<IncrementalLoadKey,IncrementalLoad>();
		for (int i = 0; i < jarr.length(); i++) {
			addIncrementals(new IncrementalLoad(jarr.getJSONObject(i)));
		}
	}

	public IngestionState() {
		super();
 
		_tables = new HashMap<TableSpecKey,TableSpec>();
 
		_databases = new HashMap<DatabaseSpecKey,DatabaseSpec>();
 
		_incrementals = new HashMap<IncrementalLoadKey,IncrementalLoad>();

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();


		JSONArray jarr;


		jarr = jobj.getJSONArray("tables");
		_tables = new HashMap<TableSpecKey,TableSpec>();
		for (int i = 0; i < jarr.length(); i++) {
			addTables(new TableSpec(jarr.getJSONObject(i)));
		}


		jarr = jobj.getJSONArray("databases");
		_databases = new HashMap<DatabaseSpecKey,DatabaseSpec>();
		for (int i = 0; i < jarr.length(); i++) {
			addDatabases(new DatabaseSpec(jarr.getJSONObject(i)));
		}


		jarr = jobj.getJSONArray("incrementals");
		_incrementals = new HashMap<IncrementalLoadKey,IncrementalLoad>();
		for (int i = 0; i < jarr.length(); i++) {
			addIncrementals(new IncrementalLoad(jarr.getJSONObject(i)));
		}
		
		return jobj;
	}
 

	public void addTables(TableSpec bean) {
		_tables.put(bean.key(), bean);
	}
	
	public TableSpec getTables(TableSpecKey key) {
		return _tables.get(key);
	}
	
	public List<TableSpec> getTables() {
		return (List)_tables.values();
	}
 

	public void addDatabases(DatabaseSpec bean) {
		_databases.put(bean.key(), bean);
	}
	
	public DatabaseSpec getDatabases(DatabaseSpecKey key) {
		return _databases.get(key);
	}
	
	public List<DatabaseSpec> getDatabases() {
		return (List)_databases.values();
	}
 

	public void addIncrementals(IncrementalLoad bean) {
		_incrementals.put(bean.key(), bean);
	}
	
	public IncrementalLoad getIncrementals(IncrementalLoadKey key) {
		return _incrementals.get(key);
	}
	
	public List<IncrementalLoad> getIncrementals() {
		return (List)_incrementals.values();
	}

	public IngestionStateKey key() {
		return new IngestionStateKey();
	}
	
	// Begin custom logic


	public static IngestionState loadFrom(String ingestionStateFile) throws IngestionStateLoadException {

		try {
			String content = Helper.contentAsString(ingestionStateFile);
			IngestionState state = new IngestionState(new JSONObject(content));
			return state;
		} catch (FileNotFoundException e) {
			throw new IngestionStateLoadException("Missing ingestion state file: "+ingestionStateFile, e);
		} catch (IOException e) {
			throw new IngestionStateLoadException("Error when reading ingestion state file: "+ingestionStateFile, e);
		} catch (JSONException e) {
			throw new IngestionStateLoadException("Invalid ingestion state file (bad JSON content): "+ingestionStateFile, e);
		}
		
	}


	// End custom logic 
	
}
