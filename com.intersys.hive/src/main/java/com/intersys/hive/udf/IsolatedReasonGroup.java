package com.intersys.hive.udf;

public class IsolatedReasonGroup extends Lookup {

	public IsolatedReasonGroup() {

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
		return "IsolatedReasonGroup_data.txt";
	}

}
