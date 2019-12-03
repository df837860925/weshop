package dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import pojo.Color;
import pojo.Material;
import dao.Materialdao;
import db.ConnectionPool;

public class Materialdaoimpl implements Materialdao{

	@Override
	public List<Material> selectAll() throws Exception {
		Connection conn = ConnectionPool.getConnection();
		String sql = "select * from material ";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		List<Material> list =new ArrayList<Material>();
		while(rs.next()){
			Material material =new Material();
			material.setMaterialid(rs.getInt("material_id"));
			material.setMaterialname(rs.getString("material_name"));
			list.add(material);
		}
		ConnectionPool.closeConnection(conn);
		return list;
	}
	
}
