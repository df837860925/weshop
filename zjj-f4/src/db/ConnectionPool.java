package db;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionPool {

	public static DataSource ds=null;
	public static Context ct=null;
	
	static{
		
		  try {
			ct=new InitialContext();
			find();
	
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public static DataSource find()
	{
		
		try {
			ds = (DataSource) ct.lookup("java:comp/env/c3p0_sql");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ds;
	}
	
	public static Connection getConnection(){
		Connection cc=null;
		   try {
			 cc=ds.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return cc;
		
		
		
	}
	
	public static void closeConnection(Connection cc) {
		 cc=getConnection();
		try {
			if (!cc.isClosed()&&cc!=null) {
				cc.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
