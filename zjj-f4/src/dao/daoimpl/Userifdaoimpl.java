package dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import pojo.Userif;
import dao.Userifdao;
import db.ConnectionPool;

public class Userifdaoimpl implements Userifdao {

	@Override
	public void insertUserif(Userif usif) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = ConnectionPool.getConnection();
		String sql = "insert into userif(userif_sex,userif_phone,userif_name,userif_adress) values(?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, usif.getUserifsex());
		ps.setString(2, usif.getUserifphone());
		ps.setString(3, usif.getUserifname());
		ps.setInt(4, usif.getUserifadress());
		ps.executeUpdate();
		ConnectionPool.closeConnection(conn);
	}

	@Override
	public void deleteUserif(Userif usif) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateUserif(Userif usif) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = ConnectionPool.getConnection();
		String sql = "update userif set userif_sex=?,userif_phone=?,userif_name=?,userif_adress=? where userif_id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, usif.getUserifsex());
		ps.setString(2, usif.getUserifphone());
		ps.setString(3, usif.getUserifname());
		ps.setInt(4, usif.getUserifadress());
		ps.setInt(5, usif.getUserifid());
		ps.executeUpdate();
		ConnectionPool.closeConnection(conn);
	}

	@Override
	public Userif selectUserifById(int id) throws Exception {
		// TODO Auto-generated method stub
		Userif usif = null;
		Connection conn = ConnectionPool.getConnection();
		String sql = "select * from userif where userif_id=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		if (rs != null) {
			rs.next();
			usif = new Userif();
			usif.setUserifid(id);
			usif.setUserifsex(rs.getString("userif_sex"));
			usif.setUserifphone(rs.getString("userif_phone"));
			usif.setUserifname(rs.getString("userif_name"));
			usif.setUserifadress(rs.getInt("userif_adress"));
		}
		return usif;
	}

	@Override
	public List<Userif> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
