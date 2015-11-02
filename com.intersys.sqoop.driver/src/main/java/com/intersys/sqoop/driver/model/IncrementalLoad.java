package com.intersys.sqoop.driver.model;

import java.util.HashMap;
import java.util.List;

import com.intersys.sqoop.driver.model.key.*;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

public class IncrementalLoad {

	private String _table;
	private String _database;
	private String _ooziePrefix;


	private HashMap<BookMarkKey,BookMark> _bookmarks;

	public IncrementalLoad(JSONObject jobj) throws JSONException {
		super();
		_table = jobj.getString("table");
		_database = jobj.getString("database");
		_ooziePrefix = jobj.getString("ooziePrefix");

		JSONArray jarr;


		jarr = jobj.getJSONArray("bookmarks");
		_bookmarks = new HashMap<BookMarkKey,BookMark>();
		for (int i = 0; i < jarr.length(); i++) {
			addBookmarks(new BookMark(jarr.getJSONObject(i)));
		}
	}

	public IncrementalLoad(String table, String database, String ooziePrefix) {
		super();
		this._table = table;
		this._database = database;
		this._ooziePrefix = ooziePrefix;
 
		_bookmarks = new HashMap<BookMarkKey,BookMark>();

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		jobj.put("table", _table);
		jobj.put("database", _database);
		jobj.put("ooziePrefix", _ooziePrefix);

		JSONArray jarr;


		jarr = jobj.getJSONArray("bookmarks");
		_bookmarks = new HashMap<BookMarkKey,BookMark>();
		for (int i = 0; i < jarr.length(); i++) {
			addBookmarks(new BookMark(jarr.getJSONObject(i)));
		}
		
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
		return (List)_bookmarks.values();
	}

	public IncrementalLoadKey key() {
		return new IncrementalLoadKey(_table, _database);
	}
	
	// Begin custom logic



	// End custom logic 
	
}
