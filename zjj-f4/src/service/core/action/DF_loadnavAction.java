package service.core.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Bigtype;
import dao.daoimpl.Bigtypeimpl;
import JSON.JSONm;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;

public class DF_loadnavAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		List<Bigtype> list=null;
	   Bigtypeimpl by=new Bigtypeimpl();
	    list= by.selectALL_bigtype();
	    
	    JSONm jm=new JSONm(list, response, 0, "获取分类名成功");
	    jm.result();
		
		return null;
	}

}
