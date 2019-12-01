package dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import pojo.Bigtype;
import dao.Bigtypedao;
import db.ConnectionPool;

public class Bigtypeimpl implements Bigtypedao {

	@Override
	public List<Bigtype> selectALL_bigtype() {
		// TODO Auto-generated method stub
		List<Bigtype> list=new ArrayList<>();
		Connection  cc=   ConnectionPool.getConnection();
		String sql="select *from bigtype";
		PreparedStatement pp=null;
		 try {
		pp=	cc.prepareStatement(sql);
		 ResultSet rs=  pp.executeQuery();
		while (rs.next()) {
			Bigtype by=new Bigtype();
			by.setGoods_bigtype(rs.getInt("goods_bigtype"));
			by.setTypename(rs.getString("typename"));
			list.add(by);
			
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 ConnectionPool.closeConnection(cc);
		
		return list;
	}

}
