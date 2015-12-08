package com.intersys.sqoop.driver.model;

	// Begin imports

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;

import com.intersys.sqoop.driver.model.key.*;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

	// End imports 

public class Chunk implements Comparable {

	// Begin custom declarations

	// End custom declarations 

	private Long _timestamp;
	private Integer _minId;
	private Integer _maxId;
	private Long _duration;
	private Long _refreshed;
	private String _hdfsDir;
	private Integer _retries;
	private Integer _rows;


	public Chunk(JSONObject jobj) throws JSONException {
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

		_duration = null;
		try { _duration = jobj.getLong("duration"); } catch (Throwable t) { }
		if (_duration == null) {
			_duration = 0L;
		}

		_refreshed = null;
		try { _refreshed = jobj.getLong("refreshed"); } catch (Throwable t) { }
		if (_refreshed == null) {
			_refreshed = 0L;
		}

		_hdfsDir = null;
		try { _hdfsDir = jobj.getString("hdfsDir"); } catch (Throwable t) { }
		if (_hdfsDir == null) {
			_hdfsDir = "";
		}

		_retries = null;
		try { _retries = jobj.getInt("retries"); } catch (Throwable t) { }
		if (_retries == null) {
			_retries = 0;
		}

		_rows = null;
		try { _rows = jobj.getInt("rows"); } catch (Throwable t) { }
		if (_rows == null) {
			_rows = 0;
		}

		JSONArray jarr;
	}

	public Chunk(Long timestamp, Integer minId, Integer maxId, Long duration, Long refreshed, String hdfsDir, Integer retries, Integer rows) {
		super();
		this._timestamp = timestamp;
		this._minId = minId;
		this._maxId = maxId;
		this._duration = duration;
		this._refreshed = refreshed;
		this._hdfsDir = hdfsDir;
		this._retries = retries;
		this._rows = rows;

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		if (_timestamp != null) { jobj.put("timestamp", _timestamp); }

		if (_minId != null) { jobj.put("minId", _minId); }

		if (_maxId != null) { jobj.put("maxId", _maxId); }

		if (_duration != null) { jobj.put("duration", _duration); }

		if (_refreshed != null) { jobj.put("refreshed", _refreshed); }

		if (_hdfsDir != null) { jobj.put("hdfsDir", _hdfsDir); }

		if (_retries != null) { jobj.put("retries", _retries); }

		if (_rows != null) { jobj.put("rows", _rows); }

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

	public Long getDuration() {
		return _duration;
	}

	public void setDuration(Long duration) {
		this._duration = duration;
	}

	public Long getRefreshed() {
		return _refreshed;
	}

	public void setRefreshed(Long refreshed) {
		this._refreshed = refreshed;
	}

	public String getHdfsDir() {
		return _hdfsDir;
	}

	public void setHdfsDir(String hdfsDir) {
		this._hdfsDir = hdfsDir;
	}

	public Integer getRetries() {
		return _retries;
	}

	public void setRetries(Integer retries) {
		this._retries = retries;
	}

	public Integer getRows() {
		return _rows;
	}

	public void setRows(Integer rows) {
		this._rows = rows;
	}

	public ChunkKey key() {
		return new ChunkKey(_timestamp);
	}

	public String toString() {
		String result = super.toString();
		try { result = asJson().toString(); } catch (Throwable t) {  }
		return result;
	}
	
	public static List<Chunk> sort(List<Chunk> unsorted) {
		Chunk[] a = new Chunk[unsorted.size()];
		unsorted.toArray(a);
		Arrays.sort(a);
		List<Chunk> result = new ArrayList<Chunk>();
		for (Chunk el : a) {
			result.add(el);
		}
		return result;
	}

	@Override
	public int compareTo(Object o) {
		Chunk other = (Chunk) o;
		return key().compareTo(other.key());
	}	
	
	// Begin custom logic

	public static Chunk full(String hdfsDir, int max, int rows) {
		long now = System.currentTimeMillis();
		return new Chunk(now, 0, max, 0L, 0L, hdfsDir, 0, rows);
	}

	public boolean isOutOfDate(IngestionState is) {
		return is.dataOutOfDate(getHdfsDir());
	}

	public long bornOnDate(IngestionState is) {
		return is.bornOnDate(getHdfsDir());
	}

	public JobSpec fullJob(String prefix, String desc) {

		JobSpec js = new JobSpec(getRefreshed(), desc, JobSpec.JOB_FULL, _rows);
		js.set(prefix+"_DoFull", "true");
		js.set(prefix+"_DoFullTarget", getHdfsDir());
		return js;

	}

	public JobSpec baseJob(String prefix, String desc) {

		JobSpec js = new JobSpec(getRefreshed(), desc, JobSpec.JOB_BASE, _rows);
		js.set(prefix+"_DoBase", "true");
		js.set(prefix+"_MinBaseID", String.valueOf(getMinId()));
		js.set(prefix+"_MaxBaseID", String.valueOf(getMaxId()));
		js.set(prefix+"_DoBaseTarget", getHdfsDir());
		return js;

	}

	public JobSpec deltaJob(String prefix, String desc) {

		JobSpec js = new JobSpec(getRefreshed(), desc, JobSpec.JOB_DELTA, _rows);
		js.set(prefix+"_DoDelta", "true");
		js.set(prefix+"_MinDeltaID", String.valueOf(getMinId()));
		js.set(prefix+"_DoDeltaTarget", getHdfsDir());
		return js;
	
	}

	public JobSpec periodJob(String prefix, String desc) {

		JobSpec js = new JobSpec(getRefreshed(), desc, JobSpec.JOB_DELTA, _rows);
		js.set(prefix+"_DoIncrement", "true");
		js.set(prefix+"_MinIncrementID", String.valueOf(getMinId()));
		js.set(prefix+"_MaxIncrementID", String.valueOf(getMaxId()));
		js.set(prefix+"_DoIncrementTarget", getHdfsDir());
		return js;
	
	}

//	parms.put("_MinIncrementID", String.valueOf(first.getMaxId()+1));
//	parms.put("_MaxIncrementID", String.valueOf(last.getMaxId()));
// Increment target def for property _DoIncrementTarget
//		slice.setHdfsDir(getHdfsBaseDir()+"/Incr_"+slice.getMinId()+"_"+slice.getMaxId());


	
	
	// End custom logic 
	
}
