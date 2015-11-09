package com.intersys.sqoop.driver.model;

	// Begin imports

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;

import com.intersys.sqoop.driver.SqoopDriver;
import com.intersys.sqoop.driver.exception.NoDataException;
import com.intersys.sqoop.driver.exception.NoSuchDatabaseException;
import com.intersys.sqoop.driver.model.key.*;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

	// End imports 

public class Slice implements Comparable {

	// Begin custom declarations

	public static int TYPE_UNDECIDED = 0;
	public static int TYPE_BASE = 1;
	public static int TYPE_INTERVAL = 2;
	public static int TYPE_DELTA = 3;
	
	// End custom declarations 

	private Long _timestamp;
	private Integer _minId;
	private Integer _maxId;
	private Integer _rows;
	private Integer _type;
	private Boolean _mutable;
	private Boolean _validated;
	private Boolean _error;


	public Slice(JSONObject jobj) throws JSONException {
		super();
		_timestamp = jobj.getLong("timestamp");
		_minId = jobj.getInt("minId");
		_maxId = jobj.getInt("maxId");
		_rows = jobj.getInt("rows");
		_type = jobj.getInt("type");
		_mutable = jobj.getBoolean("mutable");
		_validated = jobj.getBoolean("validated");
		_error = jobj.getBoolean("error");

		JSONArray jarr;
	}

	public Slice(Long timestamp, Integer minId, Integer maxId, Integer rows, Integer type, Boolean mutable, Boolean validated, Boolean error) {
		super();
		this._timestamp = timestamp;
		this._minId = minId;
		this._maxId = maxId;
		this._rows = rows;
		this._type = type;
		this._mutable = mutable;
		this._validated = validated;
		this._error = error;

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		jobj.put("timestamp", _timestamp);
		jobj.put("minId", _minId);
		jobj.put("maxId", _maxId);
		jobj.put("rows", _rows);
		jobj.put("type", _type);
		jobj.put("mutable", _mutable);
		jobj.put("validated", _validated);
		jobj.put("error", _error);

		JSONArray jarr;
		
		return jobj;
	}

	public Long getTimestamp() {
		return _timestamp;
	}

	public void setTimestamp(Long timestamp) {
		this._timestamp = timestamp;
	}

	public Integer getMinId() {
		return _minId;
	}

	public void setMinId(Integer minId) {
		this._minId = minId;
	}

	public Integer getMaxId() {
		return _maxId;
	}

	public void setMaxId(Integer maxId) {
		this._maxId = maxId;
	}

	public Integer getRows() {
		return _rows;
	}

	public void setRows(Integer rows) {
		this._rows = rows;
	}

	public Integer getType() {
		return _type;
	}

	public void setType(Integer type) {
		this._type = type;
	}

	public Boolean getMutable() {
		return _mutable;
	}

	public void setMutable(Boolean mutable) {
		this._mutable = mutable;
	}

	public Boolean getValidated() {
		return _validated;
	}

	public void setValidated(Boolean validated) {
		this._validated = validated;
	}

	public Boolean getError() {
		return _error;
	}

	public void setError(Boolean error) {
		this._error = error;
	}

	public SliceKey key() {
		return new SliceKey(_timestamp);
	}
	
	public static List<Slice> sort(List<Slice> unsorted) {
		Slice[] a = new Slice[unsorted.size()];
		unsorted.toArray(a);
		Arrays.sort(a);
		List<Slice> result = new ArrayList<Slice>();
		for (Slice el : a) {
			result.add(el);
		}
		return result;
	}

	@Override
	public int compareTo(Object o) {
		Slice other = (Slice) o;
		return key().compareTo(other.key());
	}	
	
	// Begin custom logic


	public static Slice getSlice(String table, String column, String database) throws SQLException, NoSuchDatabaseException, NoDataException {

		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
	    try {
			connection = SqoopDriver.getDefault().getConnection(database);
			int min;
			int max;
			int rows;
			
			String query = "select min("+column+") as 'MIN', max("+column+") as 'MAX' from "+table;
			stmt = connection.createStatement();
			rs = stmt.executeQuery(query);
			if (rs.next()) {
			    min = rs.getInt("MIN");
			    max = rs.getInt("MAX");
			} else {
				throw new NoDataException("No data for table "+table+" in data base "+database);
			}
			try { rs.close(); } catch (Throwable t) {  }
			try { stmt.close(); } catch (Throwable t) {  }
			
			query = "select count(*) as 'ROWS' from "+table;
			stmt = connection.createStatement();
			rs = stmt.executeQuery(query);
			if (rs.next()) {
			    rows = rs.getInt("ROWS");
			} else {
				throw new NoDataException("No data for table "+table+" in data base "+database);
			}

		    return new Slice(System.currentTimeMillis(), min, max, rows, TYPE_UNDECIDED, false, false, false);
	    
	    } catch (SQLException e) {
			throw e;
		} finally {
			try { rs.close(); } catch (Throwable t) {  }
			try { stmt.close(); } catch (Throwable t) {  }
			try { connection.close(); } catch (Throwable t) {  }
		}

	}

	// End custom logic 
	
}
