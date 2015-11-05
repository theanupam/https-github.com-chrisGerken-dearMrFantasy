package com.intersys.sqoop.incremental.gramar;

import org.gramar.Apply;
import org.gramar.exception.GramarException;
import org.gramar.util.PropertiesHelper;

/**
 *
 * Command line applicator for gramar com.intersys.sqoop.incremental.gramar
 *
 */
public class Workflow extends Apply {

	public Workflow() {
		super();
	}

	public static void main(String[] args) {

		try {
			new Workflow().apply(args);
		} catch (GramarException e) {
			System.err.println(e.getMessage());
		}

	}

	@Override
	public void defaultValues(PropertiesHelper pm) {
		pm.setProperty(PropertiesHelper.PROPERTY_GRAMAR_ID, "com.intersys.sqoop.incremental.gramar", false);
	}

}
