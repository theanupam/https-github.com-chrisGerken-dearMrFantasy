package com.intersys.sqoop.driver.model;

	// Begin imports

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import com.intersys.sqoop.driver.model.key.BookMarkKey;
import com.intersys.sqoop.driver.model.key.LoadStateKey;

	// End imports 

public class LoadState {

	private String _table;
	private String _database;
	private Boolean _incremental;
	private String _ooziePrefix;


	private HashMap<BookMarkKey,BookMark> _bookmarks;

	public LoadState(JSONObject jobj) throws JSONException {
		super();
		_table = jobj.getString("table");
		_database = jobj.getString("database");
		_incremental = jobj.getBoolean("incremental");
		_ooziePrefix = jobj.getString("ooziePrefix");

		JSONArray jarr;


		jarr = jobj.getJSONArray("bookmarks");
		_bookmarks = new HashMap<BookMarkKey,BookMark>();
		for (int i = 0; i < jarr.length(); i++) {
			addBookmarks(new BookMark(jarr.getJSONObject(i)));
		}
	}

	public LoadState(String table, String database, Boolean incremental, String ooziePrefix) {
		super();
		this._table = table;
		this._database = database;
		this._incremental = incremental;
		this._ooziePrefix = ooziePrefix;
 
		_bookmarks = new HashMap<BookMarkKey,BookMark>();

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		jobj.put("table", _table);
		jobj.put("database", _database);
		jobj.put("incremental", _incremental);
		jobj.put("ooziePrefix", _ooziePrefix);

		JSONArray jarr;


		jarr = new JSONArray();
		for (BookMark obj: getBookmarks()) {
			jarr.put(obj.asJson());
		}
		jobj.put("bookmarks", jarr);
		
		return jobj;
	}

	public String getTable() {
		return _table;
	}

	public void setTable(String table) {
		this._table = table;
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
 

	public void addBookmarks(BookMark bean) {
		_bookmarks.put(bean.key(), bean);
	}
	
	public BookMark getBookmarks(BookMarkKey key) {
		return _bookmarks.get(key);
	}
	
	public List<BookMark> getBookmarks() {
		return new ArrayList<BookMark>(_bookmarks.values());
	}

	public LoadStateKey key() {
		return new LoadStateKey(_table, _database);
	}
	
	// Begin custom logic



	// End custom logic 
	
}
