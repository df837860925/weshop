package service.core.form;

import service.core.ActionForm;

public class DF_shaixuanForm  extends ActionForm{
  String goods_bigtype;
  String goods_smalltype;
	
	
	public String getGoods_bigtype() {
	return goods_bigtype;
}


public void setGoods_bigtype(String goods_bigtype) {
	this.goods_bigtype = goods_bigtype;
}


public String getGoods_smalltype() {
	return goods_smalltype;
}


public void setGoods_smalltype(String goods_smalltype) {
	this.goods_smalltype = goods_smalltype;
}


	@Override
	public void flagfunction() {
		// TODO Auto-generated method stub
		
	}

}
