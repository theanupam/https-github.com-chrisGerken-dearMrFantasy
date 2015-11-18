package com.intersys.sqoop.driver.model;

	// Begin imports

import java.io.IOException;
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

import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
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
	public static int TYPE_FULL = 4;
	
	// End custom declarations 

	private Long _timestamp;
	private Integer _minId;
	private Integer _maxId;
	private Integer _rows;
	private Integer _type;
	private String _hdfsDir;
	private Boolean _mutable;
	private Boolean _validated;
	private Boolean _error;
	private Integer _retries;


	private HashMap<SliceKey,Slice> _subSlices;

	public Slice(JSONObject jobj) throws JSONException {
		super();

		_timestamp = null;
		try { _timestamp = jobj.getLong("timestamp"); } catch (Throwable t) { }
		if (_timestamp == null) {
			_timestamp = 0L;
		}

		_minId = null;
		try { _minId = jobj.getInt("minId"); } catch (Throwable t) { }
		if (_minId == null) {
			_minId = 0;
		}

		_maxId = null;
		try { _maxId = jobj.getInt("maxId"); } catch (Throwable t) { }
		if (_maxId == null) {
			_maxId = 0;
		}

		_rows = null;
		try { _rows = jobj.getInt("rows"); } catch (Throwable t) { }
		if (_rows == null) {
			_rows = 0;
		}

		_type = null;
		try { _type = jobj.getInt("type"); } catch (Throwable t) { }
		if (_type == null) {
			_type = 0;
		}

		_hdfsDir = null;
		try { _hdfsDir = jobj.getString("hdfsDir"); } catch (Throwable t) { }
		if (_hdfsDir == null) {
			_hdfsDir = "";
		}

		_mutable = null;
		try { _mutable = jobj.getBoolean("mutable"); } catch (Throwable t) { }
		if (_mutable == null) {
			_mutable = true;
		}

		_validated = null;
		try { _validated = jobj.getBoolean("validated"); } catch (Throwable t) { }
		if (_validated == null) {
			_validated = true;
		}

		_error = null;
		try { _error = jobj.getBoolean("error"); } catch (Throwable t) { }
		if (_error == null) {
			_error = true;
		}

		_retries = null;
		try { _retries = jobj.getInt("retries"); } catch (Throwable t) { }
		if (_retries == null) {
			_retries = 0;
		}

		JSONArray jarr;


		_subSlices = new HashMap<SliceKey,Slice>();
		try {
			jarr = jobj.getJSONArray("subSlices");
			_subSlices = new HashMap<SliceKey,Slice>();
			for (int i = 0; i < jarr.length(); i++) {
				addSubSlices(new Slice(jarr.getJSONObject(i)));
			}
		} catch (Throwable t) {
			// Do nothing		
		}
	}

	public Slice(Long timestamp, Integer minId, Integer maxId, Integer rows, Integer type, String hdfsDir, Boolean mutable, Boolean validated, Boolean error, Integer retries) {
		super();
		this._timestamp = timestamp;
		this._minId = minId;
		this._maxId = maxId;
		this._rows = rows;
		this._type = type;
		this._hdfsDir = hdfsDir;
		this._mutable = mutable;
		this._validated = validated;
		this._error = error;
		this._retries = retries;
 
		_subSlices = new HashMap<SliceKey,Slice>();

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		if (_timestamp != null) { jobj.put("timestamp", _timestamp); }

		if (_minId != null) { jobj.put("minId", _minId); }

		if (_maxId != null) { jobj.put("maxId", _maxId); }

		if (_rows != null) { jobj.put("rows", _rows); }

		if (_type != null) { jobj.put("type", _type); }

		if (_hdfsDir != null) { jobj.put("hdfsDir", _hdfsDir); }

		if (_mutable != null) { jobj.put("mutable", _mutable); }

		if (_validated != null) { jobj.put("validated", _validated); }

		if (_error != null) { jobj.put("error", _error); }

		if (_retries != null) { jobj.put("retries", _retries); }

		JSONArray jarr;


		jarr = new JSONArray();
		for (Slice obj: getSubSlices()) {
			jarr.put(obj.asJson());
		}
		jobj.put("subSlices", jarr);
		
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

	public String getHdfsDir() {
		return _hdfsDir;
	}

	public void setHdfsDir(String hdfsDir) {
		this._hdfsDir = hdfsDir;
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

	public Integer getRetries() {
		return _retries;
	}

	public void setRetries(Integer retries) {
		this._retries = retries;
	}
 

	public void addSubSlices(Slice bean) {
		_subSlices.put(bean.key(), bean);
	}

	public void removeSubSlices(Slice bean) {
		_subSlices.remove(bean.key());
	}
	
	public Slice getSubSlices(SliceKey key) {
		return _subSlices.get(key);
	}
	
	public List<Slice> getSubSlices() {
		return new ArrayList<Slice>(_subSlices.values());
	}

	public SliceKey key() {
		return new SliceKey(_timestamp);
	}

	public String toString() {
		String result = super.toString();
		try { result = asJson().toString(); } catch (Throwable t) {  }
		return result;
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

		    return new Slice(System.currentTimeMillis(), min, max, rows, TYPE_UNDECIDED, "", true, false, false, 0);
	    
	    } catch (SQLException e) {
			throw e;
		} finally {
			try { rs.close(); } catch (Throwable t) {  }
			try { stmt.close(); } catch (Throwable t) {  }
			try { connection.close(); } catch (Throwable t) {  }
		}

	}

	public void validate(FileSystem hdfs) throws IllegalArgumentException, IOException {


		try {
			String dir = getHdfsDir();
			if (hdfs.exists(new Path(dir))) {
			} else {
				System.out.println("Slice validation: Directory "+dir+" missing");
			}
		} catch (Throwable e) {
			e.printStackTrace();
		}
		
	}

	// End custom logic 
	
}
