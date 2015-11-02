package com.intersys.sqoop.driver.model.key;

public class IncrementalLoadKey implements Comparable<IncrementalLoadKey> {

	private String _table;
	private String _database;

	public IncrementalLoadKey(String table, String database) {
		super();
		this._table = table;
		this._database = database;
	}

	public String getTable() {
		return _table;
	}

	public String getDatabase() {
		return _database;
	}

	@Override
	public int compareTo(IncrementalLoadKey other) {
		if (this == other) 
			return 0;
		if (other == null) 
			return -1;
		if (getClass() != other.getClass())
			return -1;
		int result;

		if ((_table == null) && (other._table == null)) {
			return 0;
		} else if (_table == null) {
			return -1;
		} else if (other._table == null) {
			return 1;
		} else {
			result = _table.compareTo(other._table);
			if (result != 0) {
				return result;
			}
		}

		if ((_database == null) && (other._database == null)) {
			return 0;
		} else if (_database == null) {
			return -1;
		} else if (other._database == null) {
			return 1;
		} else {
			result = _database.compareTo(other._database);
			if (result != 0) {
				return result;
			}
		}

		return 0;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((_table == null) ? 0 : _table.hashCode());
		result = prime * result + ((_database == null) ? 0 : _database.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) 
			return true;
		if (obj == null) 
			return false;
		if (getClass() != obj.getClass())
			return false;
		IncrementalLoadKey other = (IncrementalLoadKey) obj;

		if (_table == null) {
			if (other._table != null)
				return false;
		} else if (!_table.equals(other._table))
			return false;

		if (_database == null) {
			if (other._database != null)
				return false;
		} else if (!_database.equals(other._database))
			return false;


		return true;
	}

}
