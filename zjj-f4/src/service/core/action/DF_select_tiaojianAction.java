package service.core.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JSON.JSONm;
import dao.daoimpl.Goodsdaoimpl;
import pojo.Goods;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.core.form.DF_fenlei_shaixuanForm;
import service.core.form.DF_select_tiaojianForm;

public class DF_select_tiaojianAction extends Action{

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		
		List<Goods> listsql=null;
		
		DF_select_tiaojianForm shaixuan=(DF_select_tiaojianForm) actionForm;
	     int num=Integer.valueOf( shaixuan.getNum());
	     String  desc=shaixuan.getDesc();
	     String list=shaixuan.getList();
	     
	     
		  
		  //System.out.println("list:"+list);
		  String lists[]=new String[1];
		  if (list.indexOf(",")<0) {
			lists[0]=list;
		}
		  else {
			lists=list.split(",");
		}
		  Goodsdaoimpl  gg=new Goodsdaoimpl();
		  try {
		listsql=	gg.selectByGoodsDesc(desc, num, lists);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 JSONm jm=new JSONm(listsql, response, 0, "搜索条件查询返回数据成功");
		 jm.result();
		  
		  
		return null;
	}

}
