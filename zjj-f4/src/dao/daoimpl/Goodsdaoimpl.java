package dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import pojo.Goods;
import dao.Goodsdao;
import db.ConnectionPool;

public class Goodsdaoimpl implements Goodsdao{

	@Override
	public void insert(Goods good) throws Exception {
		// TODO Auto-generated method stub
//		Connection conn =ConnectionPool.getConnection();
//		String sql="insert into goods(goods_name,goods_img,goods_price)"
	}

	@Override
	public void delete(Goods good) throws Exception {
		// TODO Auto-generated method stub
//		Connection conn =ConnectionPool.getConnection();
//		String sql="insert into goods(goods_name,goods_img,goods_price)"
		
	}

	@Override
	public void update(Goods good) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Goods selectByGoodsId(int id) throws Exception {//按商品id查询
		// TODO Auto-generated method stub
		Goods good=null;
		Connection conn =ConnectionPool.getConnection();
		String sql="select * from goods where goods_id=?";
		PreparedStatement ps= conn.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		if(rs!=null){
			rs.next();
			good=new Goods();
			good.setGoodsid(id);
			good.setGoodsname(rs.getString("goods_name"));
			good.setGoodsimg(rs.getString("goods_img"));
			good.setGoodsprice(rs.getString("goods_price"));
			good.setGoodstype(rs.getString("goods_type"));
			good.setGoodsdesc(rs.getString("goods_desc"));
			good.setGoodsbigtype(rs.getInt("goods_bigtype"));
			good.setGoodssmalltype(rs.getInt("goods_smalltype"));
			good.setGoodscolor(rs.getInt("goods_color"));
			good.setGoodsmaterial(rs.getInt("goods_material"));
		}
		
		return good;
	}

	@Override
	public List<Goods> selectByGoodsBigtype(int type) throws Exception {//按大类型查询
		// TODO Auto-generated method stub
		List<Goods> list=new ArrayList<Goods>();
		Connection conn =ConnectionPool.getConnection();
		String sql="select * from goods where goods_bigtype=?";
		PreparedStatement ps= conn.prepareStatement(sql);
		ps.setInt(1, type);
		ResultSet rs=ps.executeQuery();
		if(rs!=null){
			while(rs.next()){
				Goods good=new Goods();
				good.setGoodsid(rs.getInt("goods_id"));
				good.setGoodsname(rs.getString("goods_name"));
				good.setGoodsimg(rs.getString("goods_img"));
				good.setGoodsprice(rs.getString("goods_price"));
				good.setGoodstype(rs.getString("goods_type"));
				good.setGoodsdesc(rs.getString("goods_desc"));
				good.setGoodsbigtype(rs.getInt("goods_bigtype"));
				good.setGoodssmalltype(rs.getInt("goods_smalltype"));
				good.setGoodscolor(rs.getInt("goods_color"));
				good.setGoodsmaterial(rs.getInt("goods_material"));
				list.add(good);
			}
		}
		return list;
	}

	@Override
	public List<Goods> selectByGoodsSmalltype(int type) throws Exception {//按小类型查询
		// TODO Auto-generated method stub
		List<Goods> list=new ArrayList<Goods>();
		Connection conn =ConnectionPool.getConnection();
		String sql="select * from goods where goods_smalltype=?";
		PreparedStatement ps= conn.prepareStatement(sql);
		ps.setInt(1, type);
		ResultSet rs=ps.executeQuery();
		if(rs!=null){
			while(rs.next()){
				Goods good=new Goods();
				good.setGoodsid(rs.getInt("goods_id"));
				good.setGoodsname(rs.getString("goods_name"));
				good.setGoodsimg(rs.getString("goods_img"));
				good.setGoodsprice(rs.getString("goods_price"));
				good.setGoodstype(rs.getString("goods_type"));
				good.setGoodsdesc(rs.getString("goods_desc"));
				good.setGoodsbigtype(rs.getInt("goods_bigtype"));
				good.setGoodssmalltype(rs.getInt("goods_smalltype"));
				good.setGoodscolor(rs.getInt("goods_color"));
				good.setGoodsmaterial(rs.getInt("goods_material"));
				list.add(good);
			}
		}
		return list;
	}

	@Override
	public List<Goods> selectAll(int num) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Goods> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
