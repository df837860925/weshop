package service.core.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JSON.JSONm;
import JSON.JSONmm;
import JSON.paixuOBJ;
import dao.daoimpl.Bigtypeimpl;
import pojo.Goods;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.core.form.DF_fenlei_shaixuanForm;
import service.core.form.DF_nameselect_shaixuanForm;

public class DF_nameselect_shaixuanAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Goods> listsql=null;
		DF_nameselect_shaixuanForm shaixuan=(DF_nameselect_shaixuanForm ) actionForm;
		   
		String  name=shaixuan.getName();
		String list=shaixuan.getList();
		  
		  System.out.println("list:"+list);
		  String lists[]=new String[1];
		  if (list.indexOf(",")<0) {
			lists[0]=list;
		}
		  else {
			lists=list.split(",");
		}
		  
		  Bigtypeimpl  bl=new Bigtypeimpl();
		listsql=   bl.nameSelect(name, lists);
		JSONm m=new JSONm(listsql, response, 0, "获取按名字筛选数据成功");
		m.result();
		
		return null;
	}

}
