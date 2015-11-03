package com.intersys.sqoop.driver.model;

	// Begin imports

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import com.intersys.sqoop.driver.SqoopDriver;
import com.intersys.sqoop.driver.exception.NoDataException;
import com.intersys.sqoop.driver.exception.NoSuchDatabaseException;
import com.intersys.sqoop.driver.model.key.BookMarkKey;

	// End imports 

public class BookMark implements Comparable {

	private Long _timestamp;
	private Integer _minId;
	private Integer _maxId;
	private Boolean _isBase;
	private Boolean _isMutable;
	private Integer _daysOld;


	public BookMark(JSONObject jobj) throws JSONException {
		super();
		_timestamp = jobj.getLong("timestamp");
		_minId = jobj.getInt("minId");
		_maxId = jobj.getInt("maxId");
		_isBase = jobj.getBoolean("isBase");
		_isMutable = jobj.getBoolean("isMutable");
		_daysOld = jobj.getInt("daysOld");

		JSONArray jarr;
	}

	public BookMark(Long timestamp, Integer minId, Integer maxId, Boolean isBase, Boolean isMutable, Integer daysOld) {
		super();
		this._timestamp = timestamp;
		this._minId = minId;
		this._maxId = maxId;
		this._isBase = isBase;
		this._isMutable = isMutable;
		this._daysOld = daysOld;

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		jobj.put("timestamp", _timestamp);
		jobj.put("minId", _minId);
		jobj.put("maxId", _maxId);
		jobj.put("isBase", _isBase);
		jobj.put("isMutable", _isMutable);
		jobj.put("daysOld", _daysOld);

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

	public Boolean getIsBase() {
		return _isBase;
	}

	public void setIsBase(Boolean isBase) {
		this._isBase = isBase;
	}

	public Boolean getIsMutable() {
		return _isMutable;
	}

	public void setIsMutable(Boolean isMutable) {
		this._isMutable = isMutable;
	}

	public Integer getDaysOld() {
		return _daysOld;
	}

	public void setDaysOld(Integer daysOld) {
		this._daysOld = daysOld;
	}

	public BookMarkKey key() {
		return new BookMarkKey(_timestamp);
	}
	
	public static List<BookMark> sort(List<BookMark> unsorted) {
		BookMark[] a = new BookMark[unsorted.size()];
		unsorted.toArray(a);
		Arrays.sort(a);
		List<BookMark> result = new ArrayList<BookMark>();
		for (BookMark el : a) {
			result.add(el);
		}
		return result;
	}
	
	// Begin custom logic


	public static BookMark getBookmark(String table, String column, String database) throws SQLException, NoSuchDatabaseException, NoDataException {

		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
	    try {
			connection = SqoopDriver.getDefault().getConnection(database);
			String query = "select min("+column+") as 'MIN', max("+column+") as 'MAX' from "+table;
			stmt = connection.createStatement();
			rs = stmt.executeQuery(query);
			if (rs.next()) {
			    Integer min = rs.getInt("MIN");
			    Integer max = rs.getInt("MAX");
			    System.out.println("ID range in "+table+" is "+min+" -> "+max);
			    return new BookMark(System.currentTimeMillis(), min, max, false, false, 0);
			} else {
				throw new NoDataException("No data for table "+table+" in data base "+database);
			}
		} catch (SQLException e) {
			throw e;
		} finally {
			try { rs.close(); } catch (Throwable t) {  }
			try { stmt.close(); } catch (Throwable t) {  }
			try { connection.close(); } catch (Throwable t) {  }
		}

	}

	@Override
	public int compareTo(Object o) {
		BookMark other = (BookMark) o;
		return key().compareTo(other.key());
	}	


	// End custom logic 
	
}
