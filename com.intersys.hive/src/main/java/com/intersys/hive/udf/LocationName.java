package com.intersys.hive.udf;

public class LocationName extends Lookup {

	public LocationName() {

	}

	@Override
	protected int getValueIndex() {
		return 2;
	}

	@Override
	protected int getKeyIndex() {
		return 1;
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
