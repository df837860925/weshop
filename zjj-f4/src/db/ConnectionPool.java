package db;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.apache.log4j.Logger;

public class ConnectionPool {
   private static Logger  log=Logger.getLogger(ConnectionPool.class);
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
			ds = (DataSource) ct.lookup("java:comp/env/mysql");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			log.error("�Ҳ����������ӣ����������ݿ����̫��");
		}
		
		return ds;
	}
	
	public static Connection getConnection(){
		Connection cc=null;
		   try {
			 cc=ds.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			log.error("�Ҳ����������ӣ����������ݿ����̫�󣬵ò�������");
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
			log.error("�������������ݿⳬʱ");
		}
	}
	
}
