package JSON;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import pojo.Goods;

public class Color_m {
ResultSet  rs1=null;
List<Goods> list1=null;
public Color_m(ResultSet rs1, List<Goods> list1) {
	
	this.rs1 = rs1;
	this.list1 = list1;
}
public Color_m(List<Goods> list1){
	this.list1 = list1;
}
	public Set<String> forselect() throws SQLException {
		
		if (rs1 != null) {
			while (rs1.next()) {
				Goods good = new Goods();
				good.setGoodsid(rs1.getInt("goods_id"));
				good.setGoodsname(rs1.getString("goods_name"));
				good.setGoodsimg(rs1.getString("goods_img"));
				good.setGoodsprice(rs1.getString("goods_price"));
				good.setGoodstype(rs1.getString("goods_type"));
				good.setGoodsdesc(rs1.getString("goods_desc"));
				good.setGoodsbigtype(rs1.getInt("goods_bigtype"));
				good.setGoodssmalltype(rs1.getInt("goods_smalltype"));
				good.setGoodscolor(rs1.getInt("goods_color"));
				good.setGoodsmaterial(rs1.getInt("goods_material"));
				list1.add(good);
			}
		}
		Set<String> cm=new HashSet<>();
		for (int i = 0; i < list1.size(); i++) {
			if (list1.get(i).getGoodsmaterial()==1) {
				cm.add("m-1");
	}
			if (list1.get(i).getGoodsmaterial()==2) {
				cm.add("m-2");
			}
			if (list1.get(i).getGoodsmaterial()==3) {
				cm.add("m-3");
			}
			if (list1.get(i).getGoodsmaterial()==4) {
				cm.add("m-4");
			}
			if (list1.get(i).getGoodsmaterial()==5) {
				cm.add("m-5");
			}
			if (list1.get(i).getGoodsmaterial()==6) {
				cm.add("m-6");
			}
			if (list1.get(i).getGoodsmaterial()==7) {
				cm.add("m-7");
			}
			if (list1.get(i).getGoodsmaterial()==8) {
				cm.add("m-8");
			}
			if (list1.get(i).getGoodsmaterial()==9) {
				cm.add("m-8");
			}
			if (list1.get(i).getGoodsmaterial()==10) {
				cm.add("m-10");
			}
			if (list1.get(i).getGoodsmaterial()==11) {
				cm.add("m-11");
			}
			if (list1.get(i).getGoodscolor()==1) {
				cm.add("c-1");
			}
			if (list1.get(i).getGoodscolor()==2) {
				cm.add("c-2");
			}
			
			if (list1.get(i).getGoodscolor()==3) {
				cm.add("c-3");
			}
			if (list1.get(i).getGoodscolor()==4) {
				cm.add("c-4");
			}
			
			if (list1.get(i).getGoodscolor()==5) {
				cm.add("c-5");
			}
			if (list1.get(i).getGoodscolor()==6) {
				cm.add("c-6");
			}
			
			if (list1.get(i).getGoodscolor()==7) {
				cm.add("c-7");
			}
			if (list1.get(i).getGoodscolor()==8) {
				cm.add("c-8");
			}
			
			if (list1.get(i).getGoodscolor()==9) {
				cm.add("c-9");
			}
			if (list1.get(i).getGoodscolor()==10) {
				cm.add("c-10");
			}
			
			if (list1.get(i).getGoodscolor()==11) {
				cm.add("c-11");
			}
			if (list1.get(i).getGoodscolor()==12) {
				cm.add("c-12");
			}
			
			if (list1.get(i).getGoodscolor()==13) {
				cm.add("c-13");
			}
			if (list1.get(i).getGoodscolor()==14) {
				cm.add("c-14");
			}
			
			
			
			
			
			
			
		}
		
		return cm;}

	public Set<String> forselect_none() throws SQLException{
		
		Set<String> cm=new HashSet<>();
		for (int i = 0; i < list1.size(); i++) {
			if (list1.get(i).getGoodsmaterial()==1) {
				cm.add("m-1");
	}
			if (list1.get(i).getGoodsmaterial()==2) {
				cm.add("m-2");
			}
			if (list1.get(i).getGoodsmaterial()==3) {
				cm.add("m-3");
			}
			if (list1.get(i).getGoodsmaterial()==4) {
				cm.add("m-4");
			}
			if (list1.get(i).getGoodsmaterial()==5) {
				cm.add("m-5");
			}
			if (list1.get(i).getGoodsmaterial()==6) {
				cm.add("m-6");
			}
			if (list1.get(i).getGoodsmaterial()==7) {
				cm.add("m-7");
			}
			if (list1.get(i).getGoodsmaterial()==8) {
				cm.add("m-8");
			}
			if (list1.get(i).getGoodsmaterial()==9) {
				cm.add("m-8");
			}
			if (list1.get(i).getGoodsmaterial()==10) {
				cm.add("m-10");
			}
			if (list1.get(i).getGoodsmaterial()==11) {
				cm.add("m-11");
			}
			if (list1.get(i).getGoodscolor()==1) {
				cm.add("c-1");
			}
			if (list1.get(i).getGoodscolor()==2) {
				cm.add("c-2");
			}
			
			if (list1.get(i).getGoodscolor()==3) {
				cm.add("c-3");
			}
			if (list1.get(i).getGoodscolor()==4) {
				cm.add("c-4");
			}
			
			if (list1.get(i).getGoodscolor()==5) {
				cm.add("c-5");
			}
			if (list1.get(i).getGoodscolor()==6) {
				cm.add("c-6");
			}
			
			if (list1.get(i).getGoodscolor()==7) {
				cm.add("c-7");
			}
			if (list1.get(i).getGoodscolor()==8) {
				cm.add("c-8");
			}
			
			if (list1.get(i).getGoodscolor()==9) {
				cm.add("c-9");
			}
			if (list1.get(i).getGoodscolor()==10) {
				cm.add("c-10");
			}
			
			if (list1.get(i).getGoodscolor()==11) {
				cm.add("c-11");
			}
			if (list1.get(i).getGoodscolor()==12) {
				cm.add("c-12");
			}
			
			if (list1.get(i).getGoodscolor()==13) {
				cm.add("c-13");
			}
			if (list1.get(i).getGoodscolor()==14) {
				cm.add("c-14");
			}
		}
		return cm;
		
	}
	
}
