package pojo;

public class Goods {
   private int goodsid;
   private String goodsname;
   private String goodsprice;
   private String goodsimg;
   private String goodstype;
   private String goodsdesc;
   private String goodssex;
   private String goodsbody;
public int getGoodsid() {
	return goodsid;
}
public void setGoodsid(int goodsid) {
	this.goodsid = goodsid;
}
public String getGoodsname() {
	return goodsname;
}
public void setGoodsname(String goodsname) {
	this.goodsname = goodsname;
}
public String getGoodsprice() {
	return goodsprice;
}
public void setGoodsprice(String goodsprice) {
	this.goodsprice = goodsprice;
}
public String getGoodsimg() {
	return goodsimg;
}
public void setGoodsimg(String goodsimg) {
	this.goodsimg = goodsimg;
}
public String getGoodstype() {
	return goodstype;
}
public void setGoodstype(String goodstype) {
	this.goodstype = goodstype;
}
public String getGoodsdesc() {
	return goodsdesc;
}
public void setGoodsdesc(String goodsdesc) {
	this.goodsdesc = goodsdesc;
}
public String getGoodssex() {
	return goodssex;
}
public void setGoodssex(String goodssex) {
	this.goodssex = goodssex;
}
public String getGoodsbody() {
	return goodsbody;
}
public void setGoodsbody(String goodsbody) {
	this.goodsbody = goodsbody;
}
@Override
public String toString() {
	return "Goods [goodsid=" + goodsid + ", goodsname=" + goodsname
			+ ", goodsprice=" + goodsprice + ", goodsimg=" + goodsimg
			+ ", goodstype=" + goodstype + ", goodsdesc=" + goodsdesc
			+ ", goodssex=" + goodssex + ", goodsbody=" + goodsbody + "]";
}
   
   
	
}
