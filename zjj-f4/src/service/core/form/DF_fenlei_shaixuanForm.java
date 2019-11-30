package service.core.form;

import service.core.ActionForm;

public class DF_fenlei_shaixuanForm  extends ActionForm{
	String bigtype;
	  String smalltype;
	  String page;
	  String pagesize;
	  String list;
	  
	  
	public String getList() {
		return list;
	}

	public void setList(String list) {
		this.list = list;
	}

	public String getBigtype() {
		return bigtype;
	}

	public void setBigtype(String bigtype) {
		this.bigtype = bigtype;
	}

	public String getSmalltype() {
		return smalltype;
	}

	public void setSmalltype(String smalltype) {
		this.smalltype = smalltype;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getPagesize() {
		return pagesize;
	}

	public void setPagesize(String pagesize) {
		this.pagesize = pagesize;
	}

	

	@Override
	public void flagfunction() {
		// TODO Auto-generated method stub
		
	}

}
