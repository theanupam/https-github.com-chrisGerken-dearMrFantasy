package com.intersys.sqoop.driver.model;

	// Begin imports

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import com.intersys.sqoop.driver.Helper;
import com.intersys.sqoop.driver.exception.IngestionStateLoadException;
import com.intersys.sqoop.driver.exception.NoDataException;
import com.intersys.sqoop.driver.exception.NoSuchDatabaseException;
import com.intersys.sqoop.driver.model.key.DatabaseSpecKey;
import com.intersys.sqoop.driver.model.key.IngestionStateKey;
import com.intersys.sqoop.driver.model.key.LoadStateKey;
import com.intersys.sqoop.driver.model.key.TableSpecKey;

	// End imports 

public class IngestionState implements Comparable {

	// Begin custom declarations

	private FileSystem hdfs = null;
	public static long refreshPeriod = 3L * 24L * 60L * 60000L;
	private int maxJobs = 2000;
	
	// End custom declarations 

	private String _name;
	private String _hdfsUrl;
	private String _hdfsDir;


	private HashMap<TableSpecKey,TableSpec> _tables;

	private HashMap<DatabaseSpecKey,DatabaseSpec> _databases;

	private HashMap<LoadStateKey,LoadState> _loads;

	public IngestionState(JSONObject jobj) throws JSONException {
		super();

		_name = null;
		try { _name = jobj.getString("name"); } catch (Throwable t) { }
		if (_name == null) {
			_name = "";
		}

		_hdfsUrl = null;
		try { _hdfsUrl = jobj.getString("hdfsUrl"); } catch (Throwable t) { }
		if (_hdfsUrl == null) {
			_hdfsUrl = "";
		}

		_hdfsDir = null;
		try { _hdfsDir = jobj.getString("hdfsDir"); } catch (Throwable t) { }
		if (_hdfsDir == null) {
			_hdfsDir = "";
		}

		JSONArray jarr;


		_tables = new HashMap<TableSpecKey,TableSpec>();
		try {
			jarr = jobj.getJSONArray("tables");
			_tables = new HashMap<TableSpecKey,TableSpec>();
			for (int i = 0; i < jarr.length(); i++) {
				addTables(new TableSpec(jarr.getJSONObject(i)));
			}
		} catch (Throwable t) {
			// Do nothing		
		}


		_databases = new HashMap<DatabaseSpecKey,DatabaseSpec>();
		try {
			jarr = jobj.getJSONArray("databases");
			_databases = new HashMap<DatabaseSpecKey,DatabaseSpec>();
			for (int i = 0; i < jarr.length(); i++) {
				addDatabases(new DatabaseSpec(jarr.getJSONObject(i)));
			}
		} catch (Throwable t) {
			// Do nothing		
		}


		_loads = new HashMap<LoadStateKey,LoadState>();
		try {
			jarr = jobj.getJSONArray("loads");
			_loads = new HashMap<LoadStateKey,LoadState>();
			for (int i = 0; i < jarr.length(); i++) {
				addLoads(new LoadState(jarr.getJSONObject(i)));
			}
		} catch (Throwable t) {
			// Do nothing		
		}
	}

	public IngestionState(String name, String hdfsUrl, String hdfsDir) {
		super();
		this._name = name;
		this._hdfsUrl = hdfsUrl;
		this._hdfsDir = hdfsDir;
 
		_tables = new HashMap<TableSpecKey,TableSpec>();
 
		_databases = new HashMap<DatabaseSpecKey,DatabaseSpec>();
 
		_loads = new HashMap<LoadStateKey,LoadState>();

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		if (_name != null) { jobj.put("name", _name); }

		if (_hdfsUrl != null) { jobj.put("hdfsUrl", _hdfsUrl); }

		if (_hdfsDir != null) { jobj.put("hdfsDir", _hdfsDir); }

		JSONArray jarr;


		jarr = new JSONArray();
		for (TableSpec obj: getTables()) {
			jarr.put(obj.asJson());
		}
		jobj.put("tables", jarr);


		jarr = new JSONArray();
		for (DatabaseSpec obj: getDatabases()) {
			jarr.put(obj.asJson());
		}
		jobj.put("databases", jarr);


		jarr = new JSONArray();
		for (LoadState obj: getLoads()) {
			jarr.put(obj.asJson());
		}
		jobj.put("loads", jarr);
		
		return jobj;
	}

	public String getName() {
		return _name;
	}

	public void setName(String name) {
		this._name = name;
	}

	public String getHdfsUrl() {
		return _hdfsUrl;
	}

	public void setHdfsUrl(String hdfsUrl) {
		this._hdfsUrl = hdfsUrl;
	}

	public String getHdfsDir() {
		return _hdfsDir;
	}

	public void setHdfsDir(String hdfsDir) {
		this._hdfsDir = hdfsDir;
	}
 

	public void addTables(TableSpec bean) {
		_tables.put(bean.key(), bean);
	}

	public void removeTables(TableSpec bean) {
		_tables.remove(bean.key());
	}
	
	public TableSpec getTables(TableSpecKey key) {
		return _tables.get(key);
	}
	
	public List<TableSpec> getTables() {
		return new ArrayList<TableSpec>(_tables.values());
	}
 

	public void addDatabases(DatabaseSpec bean) {
		_databases.put(bean.key(), bean);
	}

	public void removeDatabases(DatabaseSpec bean) {
		_databases.remove(bean.key());
	}
	
	public DatabaseSpec getDatabases(DatabaseSpecKey key) {
		return _databases.get(key);
	}
	
	public List<DatabaseSpec> getDatabases() {
		return new ArrayList<DatabaseSpec>(_databases.values());
	}
 

	public void addLoads(LoadState bean) {
		_loads.put(bean.key(), bean);
	}

	public void removeLoads(LoadState bean) {
		_loads.remove(bean.key());
	}
	
	public LoadState getLoads(LoadStateKey key) {
		return _loads.get(key);
	}
	
	public List<LoadState> getLoads() {
		return new ArrayList<LoadState>(_loads.values());
	}

	public IngestionStateKey key() {
		return new IngestionStateKey(_name);
	}

	public String toString() {
		String result = super.toString();
		try { result = asJson().toString(); } catch (Throwable t) {  }
		return result;
	}
	
	public static List<IngestionState> sort(List<IngestionState> unsorted) {
		IngestionState[] a = new IngestionState[unsorted.size()];
		unsorted.toArray(a);
		Arrays.sort(a);
		List<IngestionState> result = new ArrayList<IngestionState>();
		for (IngestionState el : a) {
			result.add(el);
		}
		return result;
	}

	@Override
	public int compareTo(Object o) {
		IngestionState other = (IngestionState) o;
		return key().compareTo(other.key());
	}	
	
	// Begin custom logic


	public static IngestionState loadFrom(String ingestionStateFile) throws IngestionStateLoadException {

		try {
			String content = Helper.contentAsString(ingestionStateFile);
			IngestionState state = new IngestionState(new JSONObject(content));
			return state;
		} catch (FileNotFoundException e) {
			throw new IngestionStateLoadException("Missing ingestion state file: "+ingestionStateFile, e);
		} catch (IOException e) {
			throw new IngestionStateLoadException("Error when reading ingestion state file: "+ingestionStateFile, e);
		} catch (JSONException e) {
			throw new IngestionStateLoadException("Invalid ingestion state file (bad JSON content): "+ingestionStateFile, e);
		}
		
	}

	public void persistTo(String ingestionStateFile) throws IOException, JSONException {
		String content = asJson().toString(4);
		Helper.writeString(content, ingestionStateFile);
		
	}

	public static void main(String[] args) {
		
		
	}

	public Properties configureIncrement() throws SQLException, NoSuchDatabaseException, NoDataException, JSONException {
		Properties newProps = new Properties();
		ArrayList<JobSpec> jobs = new ArrayList<JobSpec>();
		for (LoadState ls : LoadState.sort(getLoads())) {
			ls.resetParms(newProps);
			ls.update(this);
			List<JobSpec> proposals = ls.proposeJobs(this, false);
			jobs.addAll(proposals);
		}
		
		int rows = 0;
		int jobCount = 0;
		JobSpec job[] = new JobSpec[jobs.size()];
		jobs.toArray(job);
		Arrays.sort(job);
		for (int i = 0; ((i < job.length) && (i < maxJobs)); i++) {
			System.out.println("Do "+job[i].getDescription()+" ("+job[i].getRows()+")");
			newProps.putAll(job[i].getProperties());
			rows = rows + job[i].getRows();
			jobCount++;
		}
		
		System.out.println("proposing "+rows+" rows in "+jobCount+" jobs");
		return newProps;
	}

	public void reset() {

		for (LoadState ls: getLoads()) {
			ls.reset();
		}
	}

	public void validate() throws IOException, URISyntaxException {
		ArrayList<JobSpec> jobs = new ArrayList<JobSpec>();
		for (LoadState ls : LoadState.sort(getLoads())) {
			List<JobSpec> proposals = ls.proposeJobs(this,true);
			jobs.addAll(proposals);
		}
		
		for (JobSpec js: jobs) {
			System.out.println(js.getDescription());
		}

	}

	public void query() throws IOException, URISyntaxException {
		ArrayList<JobSpec> jobs = new ArrayList<JobSpec>();
		for (LoadState ls : LoadState.sort(getLoads())) {
			List<JobSpec> proposals = ls.proposeJobs(this,false);
			jobs.addAll(proposals);
		}
		
		for (JobSpec js: jobs) {
			js.query(this);
		}
	}

	public boolean dataOutOfDate(String hdfsDir) {
		try {
			if (!getHdfs().exists(new Path(hdfsDir))) {
				return true;
			}
			
			if (!getHdfs().exists(new Path(hdfsDir+"/_SUCCESS"))) {
				return true;
			}
			
			long mod = getHdfs().getFileStatus(new Path(hdfsDir+"/_SUCCESS")).getModificationTime();
			long age = System.currentTimeMillis() - mod;
			if (age > refreshPeriod) {
				return true;
			}
			
			return false;
			
		} catch (Exception e) {

		}
		
		return true;
	}

	public long bornOnDate(String hdfsDir) {
		try {
			if (!getHdfs().exists(new Path(hdfsDir))) {
				return 0L;
			}
			
			if (!getHdfs().exists(new Path(hdfsDir+"/_SUCCESS"))) {
				return 0L;
			}
			
			return getHdfs().getFileStatus(new Path(hdfsDir+"/_SUCCESS")).getModificationTime();
			
		} catch (Exception e) {

		}
		
		return 0L;
	}
	
	private FileSystem getHdfs() throws IOException, URISyntaxException {
		if (hdfs == null) {
			hdfs = FileSystem.get( new URI(getHdfsUrl() ), new Configuration() );
		}
		return hdfs;
	}

	// End custom logic 
	
}
