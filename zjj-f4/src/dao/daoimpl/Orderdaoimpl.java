package dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import pojo.Order;
import dao.Orderdao;
import db.ConnectionPool;

public class Orderdaoimpl implements Orderdao{

	@Override
	public void insertOrder(Order ode) throws Exception {
		// TODO Auto-generated method stub
		Connection conn =ConnectionPool.getConnection();
		String sql="insert into order(order_userid,order_goodsid,order_goodssum,order_adressid) values(?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, ode.getOrderuserid());
		ps.setInt(2, ode.getOrdergoodsid());
		ps.setInt(3, ode.getOrdergoodssum());
		ps.setInt(4, ode.getOrderadressid());
		ps.executeUpdate();
		ConnectionPool.closeConnection(conn);
	}

	@Override
	public void deleteOrderById(int id) throws Exception {
		// TODO Auto-generated method stub
		Connection conn =ConnectionPool.getConnection();
		String sql="delete from order where order_id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		ps.executeUpdate();
		ConnectionPool.closeConnection(conn);
	}

	@Override
	public void updateOrder(Order ode) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Order selectOderByid(int id) throws Exception {
		// TODO Auto-generated method stub
		Order ode=null;
		Connection conn =ConnectionPool.getConnection();
		String sql="select from order where order_id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs= ps.executeQuery();
		if(rs!=null){
			rs.next();
			ode=new Order();
			ode.setOrderid(id);
			ode.setOrderuserid(rs.getInt("order_userid"));
			ode.setOrdergoodsid(rs.getInt("order_goodsid"));
			ode.setOrdergoodssum(rs.getInt("order_goodssum"));
			ode.setOrderadressid(rs.getInt("order_adress"));
		}
		ConnectionPool.closeConnection(conn);
		return ode;
	}

	@Override
	public List<Order> selectOderByUserId(int id) throws Exception {
		// TODO Auto-generated method stub
		List<Order> list=new ArrayList<Order>();
		Connection conn =ConnectionPool.getConnection();
		String sql="select from order where order_userid=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs= ps.executeQuery();
		if(rs!=null){
			while(rs.next()){
			Order ode=new Order();
			ode.setOrderid(rs.getInt("order_id"));
			ode.setOrderuserid(rs.getInt("order_userid"));
			ode.setOrdergoodsid(rs.getInt("order_goodsid"));
			ode.setOrdergoodssum(rs.getInt("order_goodssum"));
			ode.setOrderadressid(rs.getInt("order_adress"));
			}
		}
		ConnectionPool.closeConnection(conn);
		return null;
	}

	@Override
	public List<Order> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
}
