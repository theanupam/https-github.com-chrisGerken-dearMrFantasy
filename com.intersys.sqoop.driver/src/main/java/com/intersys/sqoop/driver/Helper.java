package com.intersys.sqoop.driver;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.codehaus.jettison.json.JSONException;

import com.intersys.sqoop.driver.exception.IngestionStatePersistException;
import com.intersys.sqoop.driver.exception.NoSuchDatabaseException;

public class Helper {

	public static String contentAsString(String filename) throws IOException {
		byte[] b = new byte[4000];
		FileInputStream fis = new FileInputStream(filename);
		ByteArrayOutputStream baos = new ByteArrayOutputStream(fis.available());
		int len = fis.read(b);
		while (len > -1) {
			baos.write(b, 0, len);
			len = fis.read(b);
		}
		fis.close();
		return baos.toString();
	}

	
	public void writeString(String content, String filename) throws IOException {
		
		FileWriter fw = new FileWriter(filename);
		fw.append(content);
		fw.close();
		
	}

	private static void getIdRange() throws SQLException, NoSuchDatabaseException {

		String table = incTable.getTable();
		String column = incTable.getIdColumn();
		Connection connection = SqoopDriver.getDefault().getConnection(incTable.getDatabase());
		
		Statement stmt = null;
	    try {
			String query = "select min("+column+") as 'MIN', max("+column+") as 'MAX' from "+table;
			stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			if (rs.next()) {
			    int min = rs.getInt("MIN");
			    int max = rs.getInt("MAX");
			    System.out.println("ID range in "+table+" is "+min+" -> "+max);
			}
		} catch (SQLException e) {
			throw e;
		} finally {
			stmt.close();
		}

	}	

}
