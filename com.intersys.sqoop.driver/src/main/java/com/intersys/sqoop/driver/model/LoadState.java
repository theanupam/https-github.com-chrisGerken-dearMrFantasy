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
import java.util.Properties;

import com.intersys.sqoop.driver.SqoopDriver;
import com.intersys.sqoop.driver.exception.NoDataException;
import com.intersys.sqoop.driver.exception.NoSuchDatabaseException;
import com.intersys.sqoop.driver.model.key.*;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

	// End imports 

public class LoadState implements Comparable {

	// Begin custom declarations
	
	public static int rowsPerBase = 25000000;

	// End custom declarations 

	private String _table;
	private String _database;
	private Boolean _incremental;
	private String _hdfsBaseDir;
	private String _ooziePrefix;


	private HashMap<ChunkKey,Chunk> _fulls;

	private HashMap<ChunkKey,Chunk> _bases;

	private HashMap<ChunkKey,Chunk> _periods;

	private HashMap<ChunkKey,Chunk> _deltas;

	private HashMap<SnapshotKey,Snapshot> _snapshots;

	public LoadState(JSONObject jobj) throws JSONException {
		super();

		_table = null;
		try { _table = jobj.getString("table"); } catch (Throwable t) { }
		if (_table == null) {
			_table = "";
		}

		_database = null;
		try { _database = jobj.getString("database"); } catch (Throwable t) { }
		if (_database == null) {
			_database = "";
		}

		_incremental = null;
		try { _incremental = jobj.getBoolean("incremental"); } catch (Throwable t) { }
		if (_incremental == null) {
			_incremental = true;
		}

		_hdfsBaseDir = null;
		try { _hdfsBaseDir = jobj.getString("hdfsBaseDir"); } catch (Throwable t) { }
		if (_hdfsBaseDir == null) {
			_hdfsBaseDir = "";
		}

		_ooziePrefix = null;
		try { _ooziePrefix = jobj.getString("ooziePrefix"); } catch (Throwable t) { }
		if (_ooziePrefix == null) {
			_ooziePrefix = "";
		}

		JSONArray jarr;


		_fulls = new HashMap<ChunkKey,Chunk>();
		try {
			jarr = jobj.getJSONArray("fulls");
			_fulls = new HashMap<ChunkKey,Chunk>();
			for (int i = 0; i < jarr.length(); i++) {
				addFulls(new Chunk(jarr.getJSONObject(i)));
			}
		} catch (Throwable t) {
			// Do nothing		
		}


		_bases = new HashMap<ChunkKey,Chunk>();
		try {
			jarr = jobj.getJSONArray("bases");
			_bases = new HashMap<ChunkKey,Chunk>();
			for (int i = 0; i < jarr.length(); i++) {
				addBases(new Chunk(jarr.getJSONObject(i)));
			}
		} catch (Throwable t) {
			// Do nothing		
		}


		_periods = new HashMap<ChunkKey,Chunk>();
		try {
			jarr = jobj.getJSONArray("periods");
			_periods = new HashMap<ChunkKey,Chunk>();
			for (int i = 0; i < jarr.length(); i++) {
				addPeriods(new Chunk(jarr.getJSONObject(i)));
			}
		} catch (Throwable t) {
			// Do nothing		
		}


		_deltas = new HashMap<ChunkKey,Chunk>();
		try {
			jarr = jobj.getJSONArray("deltas");
			_deltas = new HashMap<ChunkKey,Chunk>();
			for (int i = 0; i < jarr.length(); i++) {
				addDeltas(new Chunk(jarr.getJSONObject(i)));
			}
		} catch (Throwable t) {
			// Do nothing		
		}


		_snapshots = new HashMap<SnapshotKey,Snapshot>();
		try {
			jarr = jobj.getJSONArray("snapshots");
			_snapshots = new HashMap<SnapshotKey,Snapshot>();
			for (int i = 0; i < jarr.length(); i++) {
				addSnapshots(new Snapshot(jarr.getJSONObject(i)));
			}
		} catch (Throwable t) {
			// Do nothing		
		}
	}

	public LoadState(String table, String database, Boolean incremental, String hdfsBaseDir, String ooziePrefix) {
		super();
		this._table = table;
		this._database = database;
		this._incremental = incremental;
		this._hdfsBaseDir = hdfsBaseDir;
		this._ooziePrefix = ooziePrefix;
 
		_fulls = new HashMap<ChunkKey,Chunk>();
 
		_bases = new HashMap<ChunkKey,Chunk>();
 
		_periods = new HashMap<ChunkKey,Chunk>();
 
		_deltas = new HashMap<ChunkKey,Chunk>();
 
		_snapshots = new HashMap<SnapshotKey,Snapshot>();

	}
	
	public JSONObject asJson() throws JSONException {
		JSONObject jobj = new JSONObject();

		if (_table != null) { jobj.put("table", _table); }

		if (_database != null) { jobj.put("database", _database); }

		if (_incremental != null) { jobj.put("incremental", _incremental); }

		if (_hdfsBaseDir != null) { jobj.put("hdfsBaseDir", _hdfsBaseDir); }

		if (_ooziePrefix != null) { jobj.put("ooziePrefix", _ooziePrefix); }

		JSONArray jarr;


		jarr = new JSONArray();
		for (Chunk obj: getFulls()) {
			jarr.put(obj.asJson());
		}
		jobj.put("fulls", jarr);


		jarr = new JSONArray();
		for (Chunk obj: getBases()) {
			jarr.put(obj.asJson());
		}
		jobj.put("bases", jarr);


		jarr = new JSONArray();
		for (Chunk obj: getPeriods()) {
			jarr.put(obj.asJson());
		}
		jobj.put("periods", jarr);


		jarr = new JSONArray();
		for (Chunk obj: getDeltas()) {
			jarr.put(obj.asJson());
		}
		jobj.put("deltas", jarr);


		jarr = new JSONArray();
		for (Snapshot obj: getSnapshots()) {
			jarr.put(obj.asJson());
		}
		jobj.put("snapshots", jarr);
		
		return jobj;
	}

	public String getTable() {
		return _table;
	}

	public void setTable(String table) {
		this._table = table;
	}

	public String getDatabase() {
		return _database;
	}

	public void setDatabase(String database) {
		this._database = database;
	}

	public Boolean getIncremental() {
		return _incremental;
	}

	public void setIncremental(Boolean incremental) {
		this._incremental = incremental;
	}

	public String getHdfsBaseDir() {
		return _hdfsBaseDir;
	}

	public void setHdfsBaseDir(String hdfsBaseDir) {
		this._hdfsBaseDir = hdfsBaseDir;
	}

	public String getOoziePrefix() {
		return _ooziePrefix;
	}

	public void setOoziePrefix(String ooziePrefix) {
		this._ooziePrefix = ooziePrefix;
	}
 

	public void addFulls(Chunk bean) {
		_fulls.put(bean.key(), bean);
	}

	public void removeFulls(Chunk bean) {
		_fulls.remove(bean.key());
	}
	
	public Chunk getFulls(ChunkKey key) {
		return _fulls.get(key);
	}
	
	public List<Chunk> getFulls() {
		return new ArrayList<Chunk>(_fulls.values());
	}
 

	public void addBases(Chunk bean) {
		_bases.put(bean.key(), bean);
	}

	public void removeBases(Chunk bean) {
		_bases.remove(bean.key());
	}
	
	public Chunk getBases(ChunkKey key) {
		return _bases.get(key);
	}
	
	public List<Chunk> getBases() {
		return new ArrayList<Chunk>(_bases.values());
	}
 

	public void addPeriods(Chunk bean) {
		_periods.put(bean.key(), bean);
	}

	public void removePeriods(Chunk bean) {
		_periods.remove(bean.key());
	}
	
	public Chunk getPeriods(ChunkKey key) {
		return _periods.get(key);
	}
	
	public List<Chunk> getPeriods() {
		return new ArrayList<Chunk>(_periods.values());
	}
 

	public void addDeltas(Chunk bean) {
		_deltas.put(bean.key(), bean);
	}

	public void removeDeltas(Chunk bean) {
		_deltas.remove(bean.key());
	}
	
	public Chunk getDeltas(ChunkKey key) {
		return _deltas.get(key);
	}
	
	public List<Chunk> getDeltas() {
		return new ArrayList<Chunk>(_deltas.values());
	}
 

	public void addSnapshots(Snapshot bean) {
		_snapshots.put(bean.key(), bean);
	}

	public void removeSnapshots(Snapshot bean) {
		_snapshots.remove(bean.key());
	}
	
	public Snapshot getSnapshots(SnapshotKey key) {
		return _snapshots.get(key);
	}
	
	public List<Snapshot> getSnapshots() {
		return new ArrayList<Snapshot>(_snapshots.values());
	}

	public LoadStateKey key() {
		return new LoadStateKey(_table, _database);
	}

	public String toString() {
		String result = super.toString();
		try { result = asJson().toString(); } catch (Throwable t) {  }
		return result;
	}
	
	public static List<LoadState> sort(List<LoadState> unsorted) {
		LoadState[] a = new LoadState[unsorted.size()];
		unsorted.toArray(a);
		Arrays.sort(a);
		List<LoadState> result = new ArrayList<LoadState>();
		for (LoadState el : a) {
			result.add(el);
		}
		return result;
	}

	@Override
	public int compareTo(Object o) {
		LoadState other = (LoadState) o;
		return key().compareTo(other.key());
	}	
	
	// Begin custom logic

	public void resetParms(Properties props) {

		props.setProperty(SqoopDriver.PROPERTY_PREFIX + getDatabase() + "_" + getTable() + "_DoFull", "false");
		props.setProperty(SqoopDriver.PROPERTY_PREFIX + getDatabase() + "_" + getTable() + "_DoBase", "false");
		props.setProperty(SqoopDriver.PROPERTY_PREFIX + getDatabase() + "_" + getTable() + "_DoInterval", "false");
		props.setProperty(SqoopDriver.PROPERTY_PREFIX + getDatabase() + "_" + getTable() + "_DoDelta", "false");

	}
	
	public void update(IngestionState is) throws SQLException, NoSuchDatabaseException, NoDataException, JSONException {

		try {

			if (getIncremental()) {

				updateAsIncremental(is);
							
			} else {

				updateAsFull(is);

			}

		} catch (Exception e) {
			System.out.println("\t"+e.getLocalizedMessage());
		}
		
	}

	private void updateAsIncremental(IngestionState is) throws NoSuchDatabaseException, NoDataException, SQLException {

		System.out.println(getTable()+" in "+getDatabase()+" is incremental");

		int rows = getRows(is);
		if (rows == 0) {
			System.out.println(" - No data => No import for now");
			return;
		}
		
		int min = getMinId(is);
		int max = getMaxId(is);
		
		Snapshot lastSnapshot = null;
		if (!getSnapshots().isEmpty()) {
			List<Snapshot> snapshots = Snapshot.sort(getSnapshots());
			lastSnapshot = snapshots.get(snapshots.size()-1);
		}
		
		Snapshot snapshot = new Snapshot(System.currentTimeMillis(), max);
		addSnapshots(snapshot);
		
		// First, see if we have any bases
		
		if (getBases().isEmpty()) {
			
			long bases = (max-min+1) / rowsPerBase + 1;

			Chunk base = null;
			long now = System.currentTimeMillis() - bases;
			for (int i = 0; i < bases; i++) {
				String hdfsDir = getHdfsBaseDir() + "/Base/" + i;
				int minId = min + (i * rowsPerBase);
				int maxId = min + ((i+1) * rowsPerBase) - 1;
				base = new Chunk(now+i, minId, maxId, 0L, 0L, hdfsDir, 0);
			}
			base.setMaxId(max);
			
			return;
		}
		
		// If we already have some bases, just update the delta for now
		
		if (lastSnapshot.getId() == max) {
			// if no new data
			removeSnapshots(snapshot);
			System.out.println(" - No new data => No import for now");
			return;
		}
		
		Chunk delta;

		if (getDeltas().isEmpty()) {
			String hdfsDir = getHdfsBaseDir() + "/Delta";
			int minId = lastSnapshot.getId() + 1;
			int maxId = max;
			delta = new Chunk(System.currentTimeMillis(), minId, maxId, 0L, 0L, hdfsDir, 0);
			addDeltas(delta);
		}
		
		delta = getDeltas().get(0);
		
	}

	private void updateAsFull(IngestionState is) throws NoSuchDatabaseException, NoDataException, SQLException {

		System.out.println(getTable()+" in "+getDatabase()+" is a full load");

		if (getFulls().isEmpty()) {
			
			int rows = getRows(is);
			if (rows > 0) {
				int max = getMaxId(is);
				Chunk full = Chunk.full(getHdfsBaseDir(), max);
				addFulls(full);	
			} else {
				System.out.println(" - No data => No import for now");
			}

		}
		
	}

	public void reset() {
		_fulls = new HashMap<ChunkKey, Chunk>();
		_bases = new HashMap<ChunkKey, Chunk>();
		_deltas = new HashMap<ChunkKey, Chunk>();
		_periods = new HashMap<ChunkKey, Chunk>();
		_snapshots = new HashMap<SnapshotKey, Snapshot>();
	}

	public int getMinId(IngestionState is) throws SQLException, NoSuchDatabaseException, NoDataException {

		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;

		String query = "";
		
		try {
			connection = SqoopDriver.getDefault().getConnection(getDatabase());
			
				query = "select min("+getColumn(is)+") as 'MIN' from "+getTable();
				stmt = connection.createStatement();
				rs = stmt.executeQuery(query);
				if (rs.next()) {
				    return rs.getInt("MIN");
				} else {
					throw new NoDataException("No data for table "+getTable()+" in data base "+getDatabase());
				}
			
	    } catch (SQLException e) {
	    	System.out.println("Error performing query: "+query);
	    	System.out.println("\ttable="+getTable()+"; column="+getColumn(is)+"; database="+getDatabase());
			throw e;
		} finally {
			try { rs.close(); } catch (Throwable t) {  }
			try { stmt.close(); } catch (Throwable t) {  }
		}

	}

	private String getColumn(IngestionState is) {
		return is.getTables(new TableSpecKey(getTable())).getIdColumn();
	}

	public int getMaxId(IngestionState is) throws SQLException, NoSuchDatabaseException, NoDataException {

		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;

		String query = "";
		
		try {
			connection = SqoopDriver.getDefault().getConnection(getDatabase());
			
				query = "select max("+getColumn(is)+") as 'MAX' from "+getTable();
				stmt = connection.createStatement();
				rs = stmt.executeQuery(query);
				if (rs.next()) {
				    return rs.getInt("MAX");
				} else {
					throw new NoDataException("No data for table "+getTable()+" in data base "+getDatabase());
				}
			
	    } catch (SQLException e) {
	    	System.out.println("Error performing query: "+query);
	    	System.out.println("\ttable="+getTable()+"; column="+getColumn(is)+"; database="+getDatabase());
			throw e;
		} finally {
			try { rs.close(); } catch (Throwable t) {  }
			try { stmt.close(); } catch (Throwable t) {  }
		}

	}

	public int getRows(IngestionState is) throws SQLException, NoSuchDatabaseException, NoDataException {

		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;

		String query = "";
		
		try {
			connection = SqoopDriver.getDefault().getConnection(getDatabase());
			
				query = "select count("+getColumn(is)+") as 'ROWS' from "+getTable();
				stmt = connection.createStatement();
				rs = stmt.executeQuery(query);
				if (rs.next()) {
				    return rs.getInt("ROWS");
				} else {
					throw new NoDataException("No data for table "+getTable()+" in data base "+getDatabase());
				}
			
	    } catch (SQLException e) {
	    	System.out.println("Error performing query: "+query);
	    	System.out.println("\ttable="+getTable()+"; column="+getColumn(is)+"; database="+getDatabase());
			throw e;
		} finally {
			try { rs.close(); } catch (Throwable t) {  }
			try { stmt.close(); } catch (Throwable t) {  }
		}

	}

	public List<JobSpec> proposeJobs(IngestionState is, boolean all) {

		List<JobSpec> jobs = new ArrayList<JobSpec>();
		boolean found;
		
		// Find the earliest base that needs refreshing
		
		found = false;
		for (Chunk base: Chunk.sort(getBases())) {
			if (!found) {
				if ((base.getRefreshed() == 0L) || (base.isOutOfDate(is))) {
					found = !all;
					jobs.add(base.baseJob(SqoopDriver.PROPERTY_PREFIX + getDatabase() + "_" + getTable(), "Base load of "+getDatabase()+" : "+getTable()));
				}
			}
		}
		
		// If there's a delta, update it
		
		if (!getDeltas().isEmpty()) {
			Chunk delta = getDeltas().get(0);
			jobs.add(delta.deltaJob(SqoopDriver.PROPERTY_PREFIX + getDatabase() + "_" + getTable(), "Delta load of "+getDatabase()+" : "+getTable()));
		}
		
		// If there's a full, update it
		
		if (!getFulls().isEmpty()) {
			Chunk full = getFulls().get(0);
			jobs.add(full.fullJob(SqoopDriver.PROPERTY_PREFIX + getDatabase() + "_" + getTable(), "Full load of "+getDatabase()+" : "+getTable()));
		}

		return jobs;
		
	}

	
	// End custom logic 
	
}
