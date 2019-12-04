package dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import pojo.Color;
import pojo.Smalltype;
import dao.Smalltypedao;
import db.ConnectionPool;

public class Smalltypeimpl implements Smalltypedao{

	@Override
	public List<Smalltype> selectAll()  throws Exception{
		// TODO Auto-generated method stub
		Connection conn = ConnectionPool.getConnection();
		String sql = "select * from smalltype ";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		List<Smalltype> list =new ArrayList<Smalltype>();
		while(rs.next()){
			Smalltype sm=new Smalltype();
			sm.setSmalltypeid(rs.getInt("smalltype_id"));
			sm.setSmalltypename(rs.getString("smalltype_name"));
			sm.setSmalltypekeyword(rs.getString("smalltype_keyword"));
			list.add(sm);
		}
		ConnectionPool.closeConnection(conn);
		return list;
	}
	
}
