package service.kqx.form;

import javax.ws.rs.core.Form;

import service.core.ActionForm;

public class xiadanForm extends ActionForm{
	private String goods_id;
	private String status;
	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String good_sid) {
		this.goods_id = good_sid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public void flagfunction() {
		// TODO Auto-generated method stub
		
	}
}
