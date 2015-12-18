package com.intersys.hive.udf;

import org.apache.hadoop.hive.ql.exec.UDF;
import org.apache.hadoop.io.Text;

public class Sort extends UDF {

	public Text evaluate(Integer anInteger) {
		
		return new Text("number: "+anInteger);
		
	}
}
