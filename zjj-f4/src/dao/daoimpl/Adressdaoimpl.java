package dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import pojo.Adress;
import dao.Adressdao;
import db.ConnectionPool;

public class Adressdaoimpl implements Adressdao{

	@Override
	public void insertAdress(Adress adr) throws Exception {
		// TODO Auto-generated method stub
		Connection conn =ConnectionPool.getConnection();
		String sql="insert into adress(adress_name,adress_tel,adress_sheng,adress_shi,adress_xian,adress_zipcode,adress_detail) values(?,?,?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, adr.getAdressname());
		ps.setString(2, adr.getAdresstel());
		ps.setString(3, adr.getAdresssheng());
		ps.setString(4, adr.getAdressshi());
		ps.setString(5, adr.getAdressxian());
		ps.setString(6, adr.getAdresszipcode());
		ps.setString(7, adr.getAdressdetail());
		ps.executeUpdate();
		ConnectionPool.closeConnection(conn);
	}

	@Override
	public void deleteAdressById(int id) throws Exception {
		// TODO Auto-generated method stub
		Connection conn =ConnectionPool.getConnection();
		String sql="delete from adress where adress_id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		ps.executeUpdate();
		ConnectionPool.closeConnection(conn);
	}

	@Override
	public void updateAdress(Adress adr) throws Exception {
		// TODO Auto-generated method stub
		Connection conn =ConnectionPool.getConnection();
		String sql="update adress set adress_name=?,adress_tel=?,adress_sheng=?,adress_shi=?,adress_xian=?,adress_zipcode=?,adress_detail=? where adress_id=?) values(?,?,?,?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, adr.getAdressname());
		ps.setString(2, adr.getAdresstel());
		ps.setString(3, adr.getAdresssheng());
		ps.setString(4, adr.getAdressshi());
		ps.setString(5, adr.getAdressxian());
		ps.setString(6, adr.getAdresszipcode());
		ps.setString(7, adr.getAdressdetail());
		ps.setInt(8, adr.getAdressid());
		ps.executeUpdate();
		ConnectionPool.closeConnection(conn);
	}

	@Override
	public Adress selectAdressById(int id) throws Exception {
		// TODO Auto-generated method stub
		Adress adr=null;
		Connection conn =ConnectionPool.getConnection();
		String sql="select from  adress where adress_id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs =ps.executeQuery();
		if(rs!=null){
			rs.next();
			adr=new Adress();
			adr.setAdressid(id);
			adr.setAdressname(rs.getString("adress_name"));
			adr.setAdresstel(rs.getString("adress_tel"));
			adr.setAdresssheng(rs.getString("adress_sheng"));
			adr.setAdressshi(rs.getString("adress_shi"));
			adr.setAdressxian(rs.getString("adress_xian"));
			adr.setAdresszipcode(rs.getString("adress_zipcode"));
			adr.setAdressdetail(rs.getString("adress_detail"));
		}
		ConnectionPool.closeConnection(conn);
		return adr;
	}

	@Override
	public void selectAll() throws Exception {
		// TODO Auto-generated method stub
		
	}

}
