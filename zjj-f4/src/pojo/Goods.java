package pojo;

public class Goods {
   private int goodsid;
   private String goodsname;
   private String goodsprice;
   private String goodsimg;
   private String goodstype;
   private String goodsdesc;
   private int goodsbigtype;
   private int goodssmalltype;
   private int goodscolor;
   private int goodsmaterial;
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
public int getGoodsbigtype() {
	return goodsbigtype;
}
public void setGoodsbigtype(int goodsbigtype) {
	this.goodsbigtype = goodsbigtype;
}
public int getGoodssmalltype() {
	return goodssmalltype;
}
public void setGoodssmalltype(int goodssmalltype) {
	this.goodssmalltype = goodssmalltype;
}
public int getGoodscolor() {
	return goodscolor;
}
public void setGoodscolor(int goodscolor) {
	this.goodscolor = goodscolor;
}
public int getGoodsmaterial() {
	return goodsmaterial;
}
public void setGoodsmaterial(int goodsmaterial) {
	this.goodsmaterial = goodsmaterial;
}
@Override
public String toString() {
	return "Goods [goodsid=" + goodsid + ", goodsname=" + goodsname
			+ ", goodsprice=" + goodsprice + ", goodsimg=" + goodsimg
			+ ", goodstype=" + goodstype + ", goodsdesc=" + goodsdesc
			+ ", goodsbigtype=" + goodsbigtype + ", goodssmalltype="
			+ goodssmalltype + ", goodscolor=" + goodscolor
			+ ", goodsmaterial=" + goodsmaterial + "]";
}

   
   
	
}
