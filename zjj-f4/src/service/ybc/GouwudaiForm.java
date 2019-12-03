package service.ybc;

import service.core.ActionForm;
import service.core.form.showForm;

public class GouwudaiForm extends ActionForm{
	public String uname;
	public String upass;
	public String goods_id;
	public String status;
	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpass() {
		return upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}
	
	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goos_id) {
		this.goods_id = goos_id;
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
