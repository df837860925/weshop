package text;

import java.sql.Connection;

import db.ConnectionPool;

public class text {
  public static void main(String[] args) {
	Connection c= ConnectionPool.getConnection();
	System.out.println(c);
	System.out.println("dsads");
}
}
