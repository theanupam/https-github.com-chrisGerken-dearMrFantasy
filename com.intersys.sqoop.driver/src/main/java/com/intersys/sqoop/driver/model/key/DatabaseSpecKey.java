package com.intersys.sqoop.driver.model.key;

public class DatabaseSpecKey implements Comparable<DatabaseSpecKey> {

	private String _name;

	public DatabaseSpecKey(String name) {
		super();
		this._name = name;
	}

	public String getName() {
		return _name;
	}

	@Override
	public int compareTo(DatabaseSpecKey other) {
		if (this == other) 
			return 0;
		if (other == null) 
			return -1;
		if (getClass() != other.getClass())
			return -1;
		int result;

		if ((_name == null) && (other._name == null)) {
			return 0;
		} else if (_name == null) {
			return -1;
		} else if (other._name == null) {
			return 1;
		} else {
			result = _name.compareTo(other._name);
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
		result = prime * result + ((_name == null) ? 0 : _name.hashCode());
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
		DatabaseSpecKey other = (DatabaseSpecKey) obj;

		if (_name == null) {
			if (other._name != null)
				return false;
		} else if (!_name.equals(other._name))
			return false;


		return true;
	}

}
