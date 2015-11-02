package com.intersys.sqoop.driver.model;

import java.util.HashMap;
import java.util.List;

import com.intersys.sqoop.driver.model.key.*;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

public class Test {

	private Long _along;
	private Integer _anint;
	private Double _adouble;
	private Boolean _aboolean;
	private String _astring;
	private String _anotherstring;
	private String _athirdstring;


	public Test(JSONObject jobj) throws JSONException {
		super();
		_along = jobj.getLong("along");
		_anint = jobj.getInt("anint");
		_adouble = jobj.getDouble("adouble");
		_aboolean = jobj.getBoolean("aboolean");
		_astring = jobj.getString("astring");
		_anotherstring = jobj.getString("anotherstring");
		_athirdstring = jobj.getString("athirdstring");

		JSONArray jarr;
	}

	public Test(Long along, Integer anint, Double adouble, Boolean aboolean, String astring, String anotherstring, String athirdstring) {
		super();
		this._along = along;
		this._anint = anint;
		this._adouble = adouble;
		this._aboolean = aboolean;
		this._astring = astring;
		this._anotherstring = anotherstring;
		this._athirdstring = athirdstring;

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		jobj.put("along", _along);
		jobj.put("anint", _anint);
		jobj.put("adouble", _adouble);
		jobj.put("aboolean", _aboolean);
		jobj.put("astring", _astring);
		jobj.put("anotherstring", _anotherstring);
		jobj.put("athirdstring", _athirdstring);

		JSONArray jarr;
		
		return jobj;
	}

	public Long getAlong() {
		return _along;
	}

	public void setAlong(Long along) {
		this._along = along;
	}

	public Integer getAnint() {
		return _anint;
	}

	public void setAnint(Integer anint) {
		this._anint = anint;
	}

	public Double getAdouble() {
		return _adouble;
	}

	public void setAdouble(Double adouble) {
		this._adouble = adouble;
	}

	public Boolean getAboolean() {
		return _aboolean;
	}

	public void setAboolean(Boolean aboolean) {
		this._aboolean = aboolean;
	}

	public String getAstring() {
		return _astring;
	}

	public void setAstring(String astring) {
		this._astring = astring;
	}

	public String getAnotherstring() {
		return _anotherstring;
	}

	public void setAnotherstring(String anotherstring) {
		this._anotherstring = anotherstring;
	}

	public String getAthirdstring() {
		return _athirdstring;
	}

	public void setAthirdstring(String athirdstring) {
		this._athirdstring = athirdstring;
	}

	public TestKey key() {
		return new TestKey(_along, _anint, _adouble, _aboolean, _astring, _anotherstring);
	}
	
	// Begin custom logic



	// End custom logic 
	
}
