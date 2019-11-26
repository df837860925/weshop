package dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import pojo.User;
import dao.Userdao;
import db.ConnectionPool;

public class Userdaoimpl implements Userdao{

	@Override
	public void insertUser(User us) throws Exception {
		// TODO Auto-generated method stub
		Connection conn =ConnectionPool.getConnection();
		String sql="insert into user(user_pass,user_name,user_adress,user_shopping,user_order) values(?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, us.getUserpass());
		ps.setString(2, us.getUsername());
		ps.setString(3, us.getUseradress());
		ps.setString(4, us.getUsershoping());
		ps.setString(5, us.getUserorder());
		ps.executeUpdate();
		ConnectionPool.closeConnection(conn);
	}

	@Override
	public void deleteUser(User us) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateUser(User us) throws Exception {
		// TODO Auto-generated method stub
		Connection conn =ConnectionPool.getConnection();
		String sql="update user set user_pass=?,user_name=?,user_adress=?,user_shopping=?,user_order where user_id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, us.getUserpass());
		ps.setString(2, us.getUsername());
		ps.setString(3, us.getUseradress());
		ps.setString(4, us.getUsershoping());
		ps.setString(5, us.getUserorder());
		ps.setInt(6, us.getUserid());
		ps.executeUpdate();
		ConnectionPool.closeConnection(conn);
	}

	@Override
	public User selectByUserId(int id) throws Exception {
		// TODO Auto-generated method stub
		User us=null;
		Connection conn =ConnectionPool.getConnection();
		String sql="select * from user where user_id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		if(rs!=null){
			rs.next();
			us=new User();
			us.setUserid(id); 
			us.setUserpass(rs.getString("user_pass"));
			us.setUsername(rs.getString("user_name"));
			us.setUsershoping(rs.getString("user_shopping"));
			us.setUserorder(rs.getString("user_order"));
		}
		return us;
	}

	@Override
	public User selectByUsername(String username) throws Exception {
		// TODO Auto-generated method stub
		User us=null;
		Connection conn =ConnectionPool.getConnection();
		String sql="select * from user where user_name=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, username);
		ResultSet rs=ps.executeQuery();
		if(rs!=null){
			rs.next();
			us=new User();
			us.setUserid(rs.getInt("user_id")); 
			us.setUserpass(rs.getString("user_pass"));
			us.setUsername(rs.getString("user_name"));
			us.setUsershoping(rs.getString("user_shopping"));
			us.setUserorder(rs.getString("user_order"));
		}
		return us;
	}

	@Override
	public List<User> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
}
