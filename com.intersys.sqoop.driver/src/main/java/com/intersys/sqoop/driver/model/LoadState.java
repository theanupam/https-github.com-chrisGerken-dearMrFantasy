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

import com.intersys.sqoop.driver.exception.NoDataException;
import com.intersys.sqoop.driver.exception.NoSuchDatabaseException;
import com.intersys.sqoop.driver.model.key.BookMarkKey;
import com.intersys.sqoop.driver.model.key.LoadStateKey;

	// End imports 

public class LoadState implements Comparable {

	private String _table;
	private String _idColumn;
	private String _database;
	private Boolean _incremental;
	private String _ooziePrefix;


	private HashMap<BookMarkKey,BookMark> _bookmarks;

	public LoadState(JSONObject jobj) throws JSONException {
		super();
		_table = jobj.getString("table");
		_idColumn = jobj.getString("idColumn");
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

	public LoadState(String table, String idColumn, String database, Boolean incremental, String ooziePrefix) {
		super();
		this._table = table;
		this._idColumn = idColumn;
		this._database = database;
		this._incremental = incremental;
		this._ooziePrefix = ooziePrefix;
 
		_bookmarks = new HashMap<BookMarkKey,BookMark>();

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

	public void increment() throws SQLException, NoSuchDatabaseException, NoDataException, JSONException {

		if (!getIncremental()) {
			System.out.println(getTable()+" in "+getDatabase()+" is a full load");
			return;
		}
		
		BookMark bookmark = BookMark.getBookmark(getTable(), getIdColumn(), getDatabase());
		System.out.println("Bookmark for "+getTable()+" in "+getDatabase()+": "+bookmark.asJson().toString());
		
	}

	public void addProperties(Properties newProps) {
		
	}

	// End custom logic 
	
}
