package com.ps.bankpage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {
	static Connection con=null;
	static String url="jdbc:mysql://localhost:3360/bank";
	static String user="root";
	static String password="tiger";
	
	public static Connection requestConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(url,user,password);
		return con;
	}

}
