package com.intersys.sqoop.driver.model;

	// Begin imports

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import com.intersys.sqoop.driver.SqoopDriver;
import com.intersys.sqoop.driver.exception.NoDataException;
import com.intersys.sqoop.driver.exception.NoSuchDatabaseException;
import com.intersys.sqoop.driver.model.key.LoadStateKey;
import com.intersys.sqoop.driver.model.key.SliceKey;

	// End imports 

public class LoadState implements Comparable {

	// Begin custom declarations

	// End custom declarations 

	private String _table;
	private String _idColumn;
	private String _database;
	private Boolean _incremental;
	private String _ooziePrefix;


	private HashMap<SliceKey,Slice> _slices;

	public LoadState(JSONObject jobj) throws JSONException {
		super();
		_table = jobj.getString("table");
		_idColumn = jobj.getString("idColumn");
		_database = jobj.getString("database");
		_incremental = jobj.getBoolean("incremental");
		_ooziePrefix = jobj.getString("ooziePrefix");

		JSONArray jarr;


		jarr = jobj.getJSONArray("slices");
		_slices = new HashMap<SliceKey,Slice>();
		for (int i = 0; i < jarr.length(); i++) {
			addSlices(new Slice(jarr.getJSONObject(i)));
		}
	}

	public LoadState(String table, String idColumn, String database, Boolean incremental, String ooziePrefix) {
		super();
		this._table = table;
		this._idColumn = idColumn;
		this._database = database;
		this._incremental = incremental;
		this._ooziePrefix = ooziePrefix;
 
		_slices = new HashMap<SliceKey,Slice>();

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		jobj.put("table", _table);
		jobj.put("idColumn", _idColumn);
		jobj.put("database", _database);
		jobj.put("incremental", _incremental);
		jobj.put("ooziePrefix", _ooziePrefix);

		JSONArray jarr;


		jarr = new JSONArray();
		for (Slice obj: getSlices()) {
			jarr.put(obj.asJson());
		}
		jobj.put("slices", jarr);
		
		return jobj;
	}

	public String getTable() {
		return _table;
	}

	public void setTable(String table) {
		this._table = table;
	}

	public String getIdColumn() {
		return _idColumn;
	}

	public void setIdColumn(String idColumn) {
		this._idColumn = idColumn;
	}

	public String getDatabase() {
		return _database;
	}

	public void setDatabase(String database) {
		this._database = database;
	}

	public Boolean getIncremental() {
		return _incremental;
	}

	public void setIncremental(Boolean incremental) {
		this._incremental = incremental;
	}

	public String getOoziePrefix() {
		return _ooziePrefix;
	}

	public void setOoziePrefix(String ooziePrefix) {
		this._ooziePrefix = ooziePrefix;
	}
 

	public void addSlices(Slice bean) {
		_slices.put(bean.key(), bean);
	}
	
	public Slice getSlices(SliceKey key) {
		return _slices.get(key);
	}
	
	public List<Slice> getSlices() {
		return new ArrayList<Slice>(_slices.values());
	}

	public LoadStateKey key() {
		return new LoadStateKey(_table, _database);
	}
	
	public static List<LoadState> sort(List<LoadState> unsorted) {
		LoadState[] a = new LoadState[unsorted.size()];
		unsorted.toArray(a);
		Arrays.sort(a);
		List<LoadState> result = new ArrayList<LoadState>();
		for (LoadState el : a) {
			result.add(el);
		}
		return result;
	}

	@Override
	public int compareTo(Object o) {
		LoadState other = (LoadState) o;
		return key().compareTo(other.key());
	}	
	
	// Begin custom logic

	public Properties increment() throws SQLException, NoSuchDatabaseException, NoDataException, JSONException {

		HashMap<String, String> parms = new HashMap<String, String>();
		parms.put("_DoFull", "false");
		parms.put("_DoBase", "false");
		parms.put("_DoInterval", "false");
		parms.put("_DoDelta", "false");

		Slice slice = Slice.getSlice(getTable(), getIdColumn(), getDatabase());

		if (!getIncremental()) {

			System.out.println(getTable()+" in "+getDatabase()+" is a full load ("+(slice.getMaxId()-slice.getMinId()+1)+"; "+slice.getRows()+")");
			
			parms.put("_DoFull", "true");
		
		} else {

			System.out.println("Bookmark for "+getTable()+" in "+getDatabase()+" ("+(slice.getMaxId()-slice.getMinId()+1)+"; "+slice.getRows()+") : "+slice.asJson().toString());
			
			Slice first;
			Slice last;
			
			List<Slice> list = Slice.sort(getSlices());
			
			boolean runJob = true;
			
			if (!getSlices().isEmpty()) {
				last = list.get(list.size()-1);
				if (last.getMaxId() == slice.getMaxId()) {
					// No new data
					runJob = false;
				} else {
					
				}
			}
			
			if (runJob) {
				
				addSlices(slice);
				list = Slice.sort(getSlices());
				
				first = list.get(0);
				last = list.get(list.size()-1);

				if (list.size() == 1) {
					parms.put("_DoBase", "true");
					parms.put("_MaxBaseID", String.valueOf(first.getMaxId()));
				} else {
					parms.put("_DoDelta", "true");
					parms.put("_MinDeltaID", String.valueOf(first.getMaxId()+1));
				}

//				parms.put("_MinIncrementID", String.valueOf(first.getMaxId()+1));
//				parms.put("_MaxIncrementID", String.valueOf(last.getMaxId()));
				
			}

		}
		
		Properties props = new Properties();
		for (String key: parms.keySet()) {
			String value = parms.get(key);
			props.setProperty(SqoopDriver.PROPERTY_PREFIX + getDatabase() + "_" + getTable() + key, value);
		}
		
		return props;
	}

	public void reset() {
		_slices = new HashMap<SliceKey, Slice>();
	}

	// End custom logic 
	
}
