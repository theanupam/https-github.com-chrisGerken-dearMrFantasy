package com.intersys.sqoop.driver.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.intersys.sqoop.driver.SqoopDriver;
import com.intersys.sqoop.driver.exception.NoSuchDatabaseException;
import com.intersys.sqoop.driver.model.key.TableSpecKey;

public class JobSpec implements Comparable {

	private Properties props = new Properties();
	private long refreshed;
	private String description;
	private int type;
	private int rows;
	private String database;
	private String table;
	private int min;
	private int max;
	
	public static final int JOB_BASE = 1;
	public static final int JOB_DELTA = 2;
	public static final int JOB_FULL = 3;
	
	public JobSpec(long refreshed, String description, int type, int rows, String database, String table, Integer min, Integer max) {
		this.refreshed = refreshed;
		this.description = description;
		this.type = type;
		this.rows = rows;
		this.database = database;
		this.table = table;
		this.min = min;
		this.max = max;
	}
	
	public void set(String key, String value) {
		props.setProperty(key, value);
	}
	
	public Properties getProperties() {
		return props;
	}
	
	public long getRefreshed() {
		return refreshed;
	}
	
	public String getDescription() {
		return description;
	}
	
	public int getRows() {
		return rows;
	}

	@Override
	public int compareTo(Object o) {
		JobSpec other = (JobSpec) o;
		
		if (other.type > type) { return -1; }
		if (other.type < type) { return  1; }
		
		if (other.refreshed > refreshed) { return -1; }
		if (other.refreshed < refreshed) { return  1; }
		
		return 0;
	}
	
	public void query(IngestionState is) {
		Statement stmt = null;
		ResultSet rs = null;
		try {
			Connection conn = SqoopDriver.getDefault().getConnection(database);
			String col = is.getTables(new TableSpecKey(table)).getIdColumn();
			String query = "select * from "+table;
			if (min > 0) {
				if (max > 0) {
					query = query + " where ("+min+" < "+col+") and ("+col+" < "+max+")";
				} else {
					query = query + " where ("+min+" < "+col+")";
				}
			} else {
				if (max > 0) {
					query = query + " where ("+col+" < "+max+")";
				}
			}
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			int count = 0;
			while (rs.next()) {
				count++;
			}
			System.out.println("Read "+count+" lines from "+database+":"+table);
		} catch (Throwable t) {
			System.out.println("Error reading lines from "+database+":"+table);
			t.printStackTrace();
		} finally {
			try { rs.close(); } catch (Throwable t) {  }
			try { stmt.close(); } catch (Throwable t) {  }
		}
	}

}
