package com.intersys.hive.udf;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.StringTokenizer;

import org.apache.hadoop.hive.ql.exec.UDF;
import org.apache.hadoop.io.Text;

public abstract class Lookup extends UDF {

	protected HashMap<String, String> table = null;
	
	public Text evaluate(Text key) {

		return new Text(lookup(key.toString()));
		
	}
	
	public String lookup(String key) {
		
		String value = getTable().get(key);
		if (value == null) {
			value = "NA";
		}
		return value;
		
	}
	
	protected HashMap<String, String> getTable() {
		if (table == null) {
			try {
				HashMap<String, String> temp = new HashMap<String, String>();
				InputStream is = Lookup.class.getResourceAsStream(getDataFileName());
				BufferedReader br = new BufferedReader(new InputStreamReader(is));
				String line;
				line = br.readLine();
				line = br.readLine();
				while (line != null) {
					StringTokenizer st = new StringTokenizer(line, getDataDelim());
					ArrayList<String> tokens = new ArrayList<String>();
					while (st.hasMoreTokens()) {
						tokens.add(st.nextToken());
					}
					String key = tokens.get(getKeyIndex());
					String value = tokens.get(getValueIndex());
					temp.put(key, value);
					line = br.readLine();
					table = temp;
				}
			} catch (IOException e) {
				table = new HashMap<String, String>();
			}
		}
		return table;
	}

	protected abstract int getValueIndex();

	protected abstract int getKeyIndex();

	protected abstract String getDataDelim();

	protected abstract String getDataFileName();
	
	
}
