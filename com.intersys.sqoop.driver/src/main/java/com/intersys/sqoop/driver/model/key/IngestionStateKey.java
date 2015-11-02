package com.intersys.sqoop.driver.model.key;

public class IngestionStateKey implements Comparable<IngestionStateKey> {


	public IngestionStateKey() {
		super();
	}

	@Override
	public int compareTo(IngestionStateKey other) {
		if (this == other) 
			return 0;
		if (other == null) 
			return -1;
		if (getClass() != other.getClass())
			return -1;
		int result;

		return 0;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
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
		IngestionStateKey other = (IngestionStateKey) obj;


		return true;
	}

}
