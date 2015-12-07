package com.intersys.sqoop.driver.model;

import java.util.Properties;

public class JobSpec implements Comparable {

	private Properties props = new Properties();
	private long refreshed;
	private String description;
	private int type;
	private int rows;
	
	public static final int JOB_BASE = 1;
	public static final int JOB_DELTA = 2;
	public static final int JOB_FULL = 3;
	
	public JobSpec(long refreshed, String description, int type, int rows) {
		this.refreshed = refreshed;
		this.description = description;
		this.type = type;
		this.rows = rows;
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
}
