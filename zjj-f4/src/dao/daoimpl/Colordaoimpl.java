package dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import pojo.Color;
import dao.Colordao;
import db.ConnectionPool;

public class Colordaoimpl implements Colordao{

	@Override
	public List<Color> selectAll() throws Exception {
		// TODO Auto-generated method stub
		Connection conn = ConnectionPool.getConnection();
		String sql = "select * from color ";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		List<Color> list =new ArrayList<Color>();
		while(rs.next()){
			Color color =new Color();
			color.setColor_id(rs.getInt("color_id"));
			color.setColor_name(rs.getString("color_name"));
			list.add(color);
		}
		ConnectionPool.closeConnection(conn);
		return list;
	}

}
