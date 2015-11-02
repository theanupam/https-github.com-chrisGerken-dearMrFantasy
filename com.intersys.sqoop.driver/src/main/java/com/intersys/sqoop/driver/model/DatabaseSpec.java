package com.intersys.sqoop.driver.model;

import java.util.HashMap;
import java.util.List;

import com.intersys.sqoop.driver.model.key.*;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

public class DatabaseSpec {

	private String _name;
	private String _userid;
	private String _password;
	private String _label;
	private String _url;


	public DatabaseSpec(JSONObject jobj) throws JSONException {
		super();
		_name = jobj.getString("name");
		_userid = jobj.getString("userid");
		_password = jobj.getString("password");
		_label = jobj.getString("label");
		_url = jobj.getString("url");

		JSONArray jarr;
	}

	public DatabaseSpec(String name, String userid, String password, String label, String url) {
		super();
		this._name = name;
		this._userid = userid;
		this._password = password;
		this._label = label;
		this._url = url;

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		jobj.put("name", _name);
		jobj.put("userid", _userid);
		jobj.put("password", _password);
		jobj.put("label", _label);
		jobj.put("url", _url);

		JSONArray jarr;
		
		return jobj;
	}

	public String getName() {
		return _name;
	}

	public void setName(String name) {
		this._name = name;
	}

	public String getUserid() {
		return _userid;
	}

	public void setUserid(String userid) {
		this._userid = userid;
	}

	public String getPassword() {
		return _password;
	}

	public void setPassword(String password) {
		this._password = password;
	}

	public String getLabel() {
		return _label;
	}

	public void setLabel(String label) {
		this._label = label;
	}

	public String getUrl() {
		return _url;
	}

	public void setUrl(String url) {
		this._url = url;
	}

	public DatabaseSpecKey key() {
		return new DatabaseSpecKey(_name);
	}
	
	// Begin custom logic



	// End custom logic 
	
}
