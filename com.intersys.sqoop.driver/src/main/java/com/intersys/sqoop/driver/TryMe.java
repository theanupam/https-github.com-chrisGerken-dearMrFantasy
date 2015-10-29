package com.intersys.sqoop.driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class TryMe {

	public TryMe() {

	}

	public static void main(String[] args) {

		try {
			Connection connection = getConnection("usrSqoop", "AXm6Sn6#o", "jdbc:sqlserver://172.23.236.90:1433;databaseName=MEXICALI_OWNER");

			getIdRange("Address",  "AddressID", connection);
			getIdRange("Line",  "LineID", connection);
			getIdRange("BuildRecord",  "BuildRecordID", connection);
		
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

	public static void getIdRange(String table, String idCol, Connection connection) throws SQLException {

		Statement stmt = null;
	    try {
			String query = "select min("+idCol+") as 'MIN', max("+idCol+") as 'MAX' from "+table;
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
	public static Connection getConnection(String user, String password, String url) throws SQLException {

	    Properties properties = new Properties();
	    properties.put("user", user);
	    properties.put("password", password);

	    Connection conn = DriverManager.getConnection( url, properties);
	    return conn;
	    
	}

}
