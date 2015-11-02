package com.intersys.sqoop.driver.model;

import java.util.HashMap;
import java.util.List;

import com.intersys.sqoop.driver.model.key.*;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

public class BookMark {

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
	
	// Begin custom logic



	// End custom logic 
	
}
