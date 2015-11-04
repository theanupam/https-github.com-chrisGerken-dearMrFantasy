package com.intersys.sqoop.driver.model;

	// Begin imports

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import com.intersys.sqoop.driver.Helper;
import com.intersys.sqoop.driver.exception.IngestionStateLoadException;
import com.intersys.sqoop.driver.exception.NoDataException;
import com.intersys.sqoop.driver.exception.NoSuchDatabaseException;
import com.intersys.sqoop.driver.model.key.DatabaseSpecKey;
import com.intersys.sqoop.driver.model.key.IngestionStateKey;
import com.intersys.sqoop.driver.model.key.LoadStateKey;
import com.intersys.sqoop.driver.model.key.TableSpecKey;

	// End imports 

public class IngestionState implements Comparable {



	private HashMap<TableSpecKey,TableSpec> _tables;

	private HashMap<DatabaseSpecKey,DatabaseSpec> _databases;

	private HashMap<LoadStateKey,LoadState> _loads;

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


		jarr = jobj.getJSONArray("loads");
		_loads = new HashMap<LoadStateKey,LoadState>();
		for (int i = 0; i < jarr.length(); i++) {
			addLoads(new LoadState(jarr.getJSONObject(i)));
		}
	}

	public IngestionState() {
		super();
 
		_tables = new HashMap<TableSpecKey,TableSpec>();
 
		_databases = new HashMap<DatabaseSpecKey,DatabaseSpec>();
 
		_loads = new HashMap<LoadStateKey,LoadState>();

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();


		JSONArray jarr;


		jarr = new JSONArray();
		for (TableSpec obj: getTables()) {
			jarr.put(obj.asJson());
		}
		jobj.put("tables", jarr);


		jarr = new JSONArray();
		for (DatabaseSpec obj: getDatabases()) {
			jarr.put(obj.asJson());
		}
		jobj.put("databases", jarr);


		jarr = new JSONArray();
		for (LoadState obj: getLoads()) {
			jarr.put(obj.asJson());
		}
		jobj.put("loads", jarr);
		
		return jobj;
	}
 

	public void addTables(TableSpec bean) {
		_tables.put(bean.key(), bean);
	}
	
	public TableSpec getTables(TableSpecKey key) {
		return _tables.get(key);
	}
	
	public List<TableSpec> getTables() {
		return new ArrayList<TableSpec>(_tables.values());
	}
 

	public void addDatabases(DatabaseSpec bean) {
		_databases.put(bean.key(), bean);
	}
	
	public DatabaseSpec getDatabases(DatabaseSpecKey key) {
		return _databases.get(key);
	}
	
	public List<DatabaseSpec> getDatabases() {
		return new ArrayList<DatabaseSpec>(_databases.values());
	}
 

	public void addLoads(LoadState bean) {
		_loads.put(bean.key(), bean);
	}
	
	public LoadState getLoads(LoadStateKey key) {
		return _loads.get(key);
	}
	
	public List<LoadState> getLoads() {
		return new ArrayList<LoadState>(_loads.values());
	}

	public IngestionStateKey key() {
		return new IngestionStateKey();
	}
	
	public static List<IngestionState> sort(List<IngestionState> unsorted) {
		IngestionState[] a = new IngestionState[unsorted.size()];
		unsorted.toArray(a);
		Arrays.sort(a);
		List<IngestionState> result = new ArrayList<IngestionState>();
		for (IngestionState el : a) {
			result.add(el);
		}
		return result;
	}

	@Override
	public int compareTo(Object o) {
		IngestionState other = (IngestionState) o;
		return key().compareTo(other.key());
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

	public void persistTo(String ingestionStateFile) throws IOException, JSONException {
		String content = asJson().toString(4);
		Helper.writeString(content, ingestionStateFile);
		
	}

	public static void main(String[] args) {
		
		
	}

	public Properties configureIncrement() throws SQLException, NoSuchDatabaseException, NoDataException, JSONException {
		Properties newProps = new Properties();
		for (LoadState ls : LoadState.sort(getLoads())) {
			Properties props = ls.increment();
			newProps.putAll(props);
		}
		return newProps;
	}

	public void reset() {

		for (LoadState ls: getLoads()) {
			ls.reset();
		}
	}

	// End custom logic 
	
}
