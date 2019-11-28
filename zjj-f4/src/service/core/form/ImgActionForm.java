package service.core.form;

import service.core.ActionForm;

public class ImgActionForm extends ActionForm{
	private String id = "0";
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	

	@Override
	public String toString() {
		return "ImgActionForm [id=" + id + "]";
	}

	@Override
	public void flagfunction() {
		// TODO Auto-generated method stub
		
	}
}
