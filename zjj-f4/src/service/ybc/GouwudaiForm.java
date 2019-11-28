package service.ybc;

import service.core.ActionForm;
import service.core.form.showForm;

public class GouwudaiForm extends ActionForm{
	public String uname;
	public String upass;
	
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

	@Override
	public void flagfunction() {
		// TODO Auto-generated method stub
		
	}

}
