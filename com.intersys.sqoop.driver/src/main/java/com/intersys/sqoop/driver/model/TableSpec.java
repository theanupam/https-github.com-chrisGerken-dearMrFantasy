package com.intersys.sqoop.driver.model;

	// Begin imports

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import com.intersys.sqoop.driver.model.key.TableSpecKey;

	// End imports 

public class TableSpec implements Comparable {

	// Begin custom declarations

	// End custom declarations 

	private String _table;
	private String _idColumn;
	private String _hiveTable;


	public TableSpec(JSONObject jobj) throws JSONException {
		super();

		_table = null;
		try { _table = jobj.getString("table"); } catch (Throwable t) { }
		if (_table == null) {
			_table = "";
		}

		_idColumn = null;
		try { _idColumn = jobj.getString("idColumn"); } catch (Throwable t) { }
		if (_idColumn == null) {
			_idColumn = "";
		}

		_hiveTable = null;
		try { _hiveTable = jobj.getString("hiveTable"); } catch (Throwable t) { }
		if (_hiveTable == null) {
			_hiveTable = "";
		}

		JSONArray jarr;
	}

	public TableSpec(String table, String idColumn, String hiveTable) {
		super();
		this._table = table;
		this._idColumn = idColumn;
		this._hiveTable = hiveTable;

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		if (_table != null) { jobj.put("table", _table); }

		if (_idColumn != null) { jobj.put("idColumn", _idColumn); }

		if (_hiveTable != null) { jobj.put("hiveTable", _hiveTable); }

		JSONArray jarr;
		
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

	public String getHiveTable() {
		return _hiveTable;
	}

	public void setHiveTable(String hiveTable) {
		this._hiveTable = hiveTable;
	}

	public TableSpecKey key() {
		return new TableSpecKey(_table);
	}
	
	public static List<TableSpec> sort(List<TableSpec> unsorted) {
		TableSpec[] a = new TableSpec[unsorted.size()];
		unsorted.toArray(a);
		Arrays.sort(a);
		List<TableSpec> result = new ArrayList<TableSpec>();
		for (TableSpec el : a) {
			result.add(el);
		}
		return result;
	}

	@Override
	public int compareTo(Object o) {
		TableSpec other = (TableSpec) o;
		return key().compareTo(other.key());
	}	
	
	// Begin custom logic



	// End custom logic 
	
}
