package dao.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;

import JSON.Color_m;
import JSON.paixuOBJ;
import pojo.Bigtype;
import pojo.Goods;
import dao.Bigtypedao;
import db.ConnectionPool;

public class Bigtypeimpl implements Bigtypedao {
	private static Logger log =Logger.getLogger(Goodsdaoimpl.class);
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

	@Override
	public paixuOBJ nameSelect(String name) {
		// TODO Auto-generated method stub
		List<Goods> list =new ArrayList<>();
		Connection cc=ConnectionPool.getConnection();
		  String sql="select *from  goods where 1=1 ";
		  
		 char [] aa=  name.toCharArray();
		 StringBuffer bbBuffer=new StringBuffer(sql);
		 for (int i = 0; i < aa.length; i++) {
			bbBuffer.append(" and goods_name like '%"+aa[i]+"%' ");
		}
		// System.out.println(bbBuffer.toString());
		    try {
			PreparedStatement pp=	cc.prepareStatement(bbBuffer.toString());
	ResultSet  rs=	  pp.executeQuery();
	while(rs.next()){
		Goods good = new Goods();
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
   Color_m clm=new Color_m(rs, list);
   Set<String> cm= clm.forselect_none();
	
   paixuOBJ obj=new paixuOBJ();
   obj.setCm(cm);
   obj.setList(list);
   ConnectionPool.closeConnection(cc);
	return obj;
	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  
		  
		return null;
	}

	@Override
	public List<Goods> nameSelect(String name, String[] list) {
		
		List<Goods> lists =new ArrayList<>();
		Connection cc=ConnectionPool.getConnection();

		int count_color=0;
		int count_type=0;
		String sql="select *from  goods where 1=1 ";
		char [] aa=  name.toCharArray();
		 StringBuffer bbBuffer=new StringBuffer(sql);
		 for (int i = 0; i < aa.length; i++) {
			bbBuffer.append(" and goods_name like '%"+aa[i]+"%' ");
		}
		 
		 StringBuffer aBuffer=new StringBuffer(bbBuffer.toString());
		StringBuffer colorBuffer=new StringBuffer("(");
		StringBuffer typeBuffer=new StringBuffer("("); 
		for (String string : list) {
			  int i= string.indexOf("-");
			String hear=   string.substring(0,i);
			String tail= string.substring(i+1);
			if ("15".equals(hear)) {
				count_color++;
				colorBuffer.append(" goods_color="+tail+" or");
				
			}
			if("12".equals(hear))
			{
				count_type++;
			typeBuffer.append(" goods_material="+tail+" or");
				
				
			}
		} 
		
		
		if (count_color!=0) {
		String color=	colorBuffer.toString().substring(0,colorBuffer.toString().length()-3);
			aBuffer.append(" and "+color+")");
		}
		if (count_type!=0) {
			String type=	typeBuffer.toString().substring(0,typeBuffer.toString().length()-3);
			aBuffer.append(" and "+type+")");
		}
		//System.out.println(aBuffer.toString());
		try {
			PreparedStatement pp=	cc.prepareStatement(aBuffer.toString());
	ResultSet  rs=	  pp.executeQuery();
	while(rs.next()){
		Goods good = new Goods();
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
		lists.add(good);
	}
	ConnectionPool.closeConnection(cc);
		return lists;
	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
		
		return null;
	}

}
