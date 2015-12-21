package com.intersys.hive.udf;

import static org.junit.Assert.*;

import org.junit.Test;

public class IsolatedReasonGroupTest {

	@Test
	public void testLookup() {
		
		IsolatedReasonGroup irg = new IsolatedReasonGroup();
		
		String value = irg.lookup("C3 Edge Metal Ring");
		if (!"Others".equals(value)) {
			fail("lookup failed");
		}
	}

}
