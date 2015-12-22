package com.intersys.hive.udf;

public class ScrapReason extends Lookup {

	public ScrapReason() {

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
		return "ScrapReason.txt";
	}

}
