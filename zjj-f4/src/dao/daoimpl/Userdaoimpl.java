package dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import pojo.User;
import dao.Userdao;
import db.ConnectionPool;

public class Userdaoimpl implements Userdao {

	@Override
	public void insertUser(User us) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = ConnectionPool.getConnection();
		String sql = "insert into user(user_pass,user_name,user_phone,user_adress,user_shopping,user_order) values(?,?,?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, us.getUserpass());
		ps.setString(2, us.getUsername());
		ps.setString(3, us.getUserphone());
		ps.setString(4, us.getUseradress());
		ps.setString(5, us.getUsershopping());
		ps.setString(6, us.getUserorder());
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
		Connection conn = ConnectionPool.getConnection();
		String sql = "update user set user_pass=?,user_name=?,user_phone=?,user_adress=?,user_shopping=?,user_order=? where user_id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, us.getUserpass());
		ps.setString(2, us.getUsername());
		ps.setString(3, us.getUserphone());
		ps.setString(4, us.getUseradress());
		ps.setString(5, us.getUsershopping());
		ps.setString(6, us.getUserorder());
		ps.setInt(7, us.getUserid());
		ps.executeUpdate();
		ConnectionPool.closeConnection(conn);
	}

	@Override
	public User selectByUserId(int id) throws Exception {
		// TODO Auto-generated method stub
		User us = null;
		Connection conn = ConnectionPool.getConnection();
		String sql = "select * from user where user_id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		if (rs != null) {
			rs.next();
			us = new User();
			us.setUserid(id);
			us.setUserpass(rs.getString("user_pass"));
			us.setUsername(rs.getString("user_name"));
			us.setUserphone(rs.getString("user_phone"));
			us.setUseradress(rs.getString("user_adress"));
			us.setUsershopping(rs.getString("user_shopping"));
			us.setUserorder(rs.getString("user_order"));
		}
		ConnectionPool.closeConnection(conn);
		return us;
	}

	@Override
	public User selectByUserName(String username) throws Exception {
		// TODO Auto-generated method stub
		User us = null;
		Connection conn = ConnectionPool.getConnection();
		String sql = "select * from user where user_name=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, username);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			us = new User();
			us.setUserid(rs.getInt("user_id"));
			us.setUserpass(rs.getString("user_pass"));
			us.setUsername(username);
			us.setUserphone(rs.getString("user_phone"));
			us.setUseradress(rs.getString("user_adress"));
			us.setUsershopping(rs.getString("user_shopping"));
			us.setUserorder(rs.getString("user_order"));
		}
		ConnectionPool.closeConnection(conn);
		return us;
	}

	@Override
	public User selectByUserPhone(String userphone) throws Exception {
		// TODO Auto-generated method stub
		User us = null;
		Connection conn = ConnectionPool.getConnection();
		String sql = "select * from user where user_phone=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, userphone);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			us = new User();
			us.setUserid(rs.getInt("user_id"));
			us.setUserpass(rs.getString("user_pass"));
			us.setUsername(rs.getString("user_name"));
			us.setUserphone(userphone);
			us.setUseradress(rs.getString("user_adress"));
			us.setUsershopping(rs.getString("user_shopping"));
			us.setUserorder(rs.getString("user_order"));
		}
		ConnectionPool.closeConnection(conn);
		return us;
	}

	@Override
	public List<User> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void emptyShoppingCart(int userid) throws Exception {
		Connection conn = ConnectionPool.getConnection();
		String sql = "update user set user_shopping = '' where user_id = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, userid);
		int rs = ps.executeUpdate();
		ConnectionPool.closeConnection(conn);
	}
}
