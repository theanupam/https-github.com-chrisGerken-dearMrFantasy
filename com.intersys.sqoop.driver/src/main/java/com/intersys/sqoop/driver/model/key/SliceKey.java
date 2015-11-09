package com.intersys.sqoop.driver.model.key;

public class SliceKey implements Comparable<SliceKey> {

	private Long _timestamp;

	public SliceKey(Long timestamp) {
		super();
		this._timestamp = timestamp;
	}

	public Long getTimestamp() {
		return _timestamp;
	}

	@Override
	public int compareTo(SliceKey other) {
		if (this == other) 
			return 0;
		if (other == null) 
			return -1;
		if (getClass() != other.getClass())
			return -1;
		int result;

		if ((_timestamp == null) && (other._timestamp == null)) {
			return 0;
		} else if (_timestamp == null) {
			return -1;
		} else if (other._timestamp == null) {
			return 1;
		} else {
			result = _timestamp.compareTo(other._timestamp);
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
		result = prime * result + ((_timestamp == null) ? 0 : _timestamp.hashCode());
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
		SliceKey other = (SliceKey) obj;

		if (_timestamp == null) {
			if (other._timestamp != null)
				return false;
		} else if (!_timestamp.equals(other._timestamp))
			return false;


		return true;
	}

}
