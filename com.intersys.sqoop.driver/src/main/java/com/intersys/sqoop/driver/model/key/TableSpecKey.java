package com.intersys.sqoop.driver.model.key;

public class TableSpecKey implements Comparable<TableSpecKey> {

	private String _table;

	public TableSpecKey(String table) {
		super();
		this._table = table;
	}

	public String getTable() {
		return _table;
	}

	@Override
	public int compareTo(TableSpecKey other) {
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

		return 0;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((_table == null) ? 0 : _table.hashCode());
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
		TableSpecKey other = (TableSpecKey) obj;

		if (_table == null) {
			if (other._table != null)
				return false;
		} else if (!_table.equals(other._table))
			return false;


		return true;
	}

}
