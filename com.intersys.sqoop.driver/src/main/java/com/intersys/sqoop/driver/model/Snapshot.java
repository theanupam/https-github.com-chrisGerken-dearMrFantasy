package com.intersys.sqoop.driver.model;

	// Begin imports

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;

import com.intersys.sqoop.driver.model.key.*;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

	// End imports 

public class Snapshot implements Comparable {

	// Begin custom declarations

	// End custom declarations 

	private Long _timestamp;
	private Integer _id;


	public Snapshot(JSONObject jobj) throws JSONException {
		super();

		_timestamp = null;
		try { _timestamp = jobj.getLong("timestamp"); } catch (Throwable t) { }
		if (_timestamp == null) {
			_timestamp = 0L;
		}

		_id = null;
		try { _id = jobj.getInt("id"); } catch (Throwable t) { }
		if (_id == null) {
			_id = 0;
		}

		JSONArray jarr;
	}

	public Snapshot(Long timestamp, Integer id) {
		super();
		this._timestamp = timestamp;
		this._id = id;

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		if (_timestamp != null) { jobj.put("timestamp", _timestamp); }

		if (_id != null) { jobj.put("id", _id); }

		JSONArray jarr;
		
		return jobj;
	}

	public Long getTimestamp() {
		return _timestamp;
	}

	public void setTimestamp(Long timestamp) {
		this._timestamp = timestamp;
	}

	public Integer getId() {
		return _id;
	}

	public void setId(Integer id) {
		this._id = id;
	}

	public SnapshotKey key() {
		return new SnapshotKey(_timestamp);
	}

	public String toString() {
		String result = super.toString();
		try { result = asJson().toString(); } catch (Throwable t) {  }
		return result;
	}
	
	public static List<Snapshot> sort(List<Snapshot> unsorted) {
		Snapshot[] a = new Snapshot[unsorted.size()];
		unsorted.toArray(a);
		Arrays.sort(a);
		List<Snapshot> result = new ArrayList<Snapshot>();
		for (Snapshot el : a) {
			result.add(el);
		}
		return result;
	}

	@Override
	public int compareTo(Object o) {
		Snapshot other = (Snapshot) o;
		return key().compareTo(other.key());
	}	
	
	// Begin custom logic



	// End custom logic 
	
}
