package service.core.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JSON.JSONm;
import JSON.JSONmm;
import JSON.paixuOBJ;
import pojo.Goods;
import dao.daoimpl.Bigtypeimpl;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.core.form.DF_nameselectForm;

public class DF_nameselectAction extends Action{

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		paixuOBJ list=null;
		
		DF_nameselectForm  ns=(DF_nameselectForm) actionForm;
		  String name=   ns.getName();
		  
		  Bigtypeimpl bt=new Bigtypeimpl();
		list=  bt.nameSelect(name);
		JSONmm  smNm=new JSONmm(list, response, 0, "按名字查找数据成功");
		smNm.result();
		  
		// TODO Auto-generated method stub
		return null;
	}

}
