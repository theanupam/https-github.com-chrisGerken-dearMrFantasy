package com.intersys.hive.udf;

public class LocationName extends Lookup {

	public LocationName() {

	}

	@Override
	protected int getValueIndex() {
		return 1;
	}

	@Override
	protected int getKeyIndex() {
		return 0;
	}

	@Override
	protected String getDataDelim() {
		return "\t";
	}

	@Override
	protected String getDataFileName() {
		return "Location.txt";
	}

}
