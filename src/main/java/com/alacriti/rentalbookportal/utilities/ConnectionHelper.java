package com.alacriti.rentalbookportal.utilities;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.log4j.Logger;

public class ConnectionHelper {
	Logger logger=Logger.getLogger(ConnectionHelper.class);
	public static Connection getConnection(){
		Connection con=null;
		Logger logger=Logger.getLogger(ConnectionHelper.class);
		 
			DataSource datasource;
			InitialContext context;
			try {
				context = new InitialContext();
				datasource = (DataSource) context.lookup("java:/MiniProject");
				logger.info("inside datasource connection");
				con=datasource.getConnection();
			} catch (NamingException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		 
		return con;
	}
	public static void colseConnection(Connection con)
	{
		Logger logger1=Logger.getLogger(ConnectionHelper.class);
		if(con!=null)
		{
			try {
				con.close();
			} catch (SQLException e) {
				logger1.error("connection can not be closed" +e.getMessage());
			}
			
		}
		
	}
}
