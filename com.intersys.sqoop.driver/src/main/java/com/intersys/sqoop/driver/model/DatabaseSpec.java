package com.intersys.sqoop.driver.model;

	// Begin imports

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import com.intersys.sqoop.driver.model.key.*;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

	// End imports 

public class DatabaseSpec implements Comparable {

	// Begin custom declarations

	// End custom declarations 

	private String _name;
	private String _userid;
	private String _password;
	private String _label;
	private String _url;
	private String _orgName;


	public DatabaseSpec(JSONObject jobj) throws JSONException {
		super();

		_name = null;
		try { _name = jobj.getString("name"); } catch (Throwable t) { }
		if (_name == null) {
			_name = "";
		}

		_userid = null;
		try { _userid = jobj.getString("userid"); } catch (Throwable t) { }
		if (_userid == null) {
			_userid = "";
		}

		_password = null;
		try { _password = jobj.getString("password"); } catch (Throwable t) { }
		if (_password == null) {
			_password = "";
		}

		_label = null;
		try { _label = jobj.getString("label"); } catch (Throwable t) { }
		if (_label == null) {
			_label = "";
		}

		_url = null;
		try { _url = jobj.getString("url"); } catch (Throwable t) { }
		if (_url == null) {
			_url = "";
		}

		_orgName = null;
		try { _orgName = jobj.getString("orgName"); } catch (Throwable t) { }
		if (_orgName == null) {
			_orgName = "";
		}

		JSONArray jarr;
	}

	public DatabaseSpec(String name, String userid, String password, String label, String url, String orgName) {
		super();
		this._name = name;
		this._userid = userid;
		this._password = password;
		this._label = label;
		this._url = url;
		this._orgName = orgName;

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		if (_name != null) { jobj.put("name", _name); }

		if (_userid != null) { jobj.put("userid", _userid); }

		if (_password != null) { jobj.put("password", _password); }

		if (_label != null) { jobj.put("label", _label); }

		if (_url != null) { jobj.put("url", _url); }

		if (_orgName != null) { jobj.put("orgName", _orgName); }

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

	public String getOrgName() {
		return _orgName;
	}

	public void setOrgName(String orgName) {
		this._orgName = orgName;
	}

	public DatabaseSpecKey key() {
		return new DatabaseSpecKey(_name);
	}
	
	public static List<DatabaseSpec> sort(List<DatabaseSpec> unsorted) {
		DatabaseSpec[] a = new DatabaseSpec[unsorted.size()];
		unsorted.toArray(a);
		Arrays.sort(a);
		List<DatabaseSpec> result = new ArrayList<DatabaseSpec>();
		for (DatabaseSpec el : a) {
			result.add(el);
		}
		return result;
	}

	@Override
	public int compareTo(Object o) {
		DatabaseSpec other = (DatabaseSpec) o;
		return key().compareTo(other.key());
	}	
	
	// Begin custom logic



	// End custom logic 
	
}
