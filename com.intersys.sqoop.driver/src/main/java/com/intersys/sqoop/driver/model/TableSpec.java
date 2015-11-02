package com.intersys.sqoop.driver.model;

import java.util.HashMap;
import java.util.List;

import com.intersys.sqoop.driver.model.key.*;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

public class TableSpec {

	private String _table;
	private String _idColumn;


	public TableSpec(JSONObject jobj) throws JSONException {
		super();
		_table = jobj.getString("table");
		_idColumn = jobj.getString("idColumn");

		JSONArray jarr;
	}

	public TableSpec(String table, String idColumn) {
		super();
		this._table = table;
		this._idColumn = idColumn;

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		jobj.put("table", _table);
		jobj.put("idColumn", _idColumn);

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

	public TableSpecKey key() {
		return new TableSpecKey(_table);
	}
	
	// Begin custom logic



	// End custom logic 
	
}
