package service.core.form;

import service.core.ActionForm;

public class DF_fenlei_datashowForm extends ActionForm {
  String bigtype;
  String smalltype;
  String page;
  String pagesize;
  
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


@Override
public void flagfunction() {
	// TODO Auto-generated method stub
	
}
  
  
	
}
