package service.core.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JSON.JSONm;
import JSON.JSONmm;
import JSON.jsonclass;
import JSON.paixuOBJ;
import pojo.Goods;
import pojo.User;
import dao.daoimpl.Goodsdaoimpl;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.core.form.DF_fenlei_datashowForm;
import service.core.form.DF_fenlei_shaixuanForm;

public class DF_fenlei_shaixuanAction  extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		List<Goods> listsql=null;
		
	     DF_fenlei_shaixuanForm shaixuan=(DF_fenlei_shaixuanForm) actionForm;
	     int bigtype=Integer.valueOf( shaixuan.getBigtype());
	     int smalltype=Integer.valueOf(shaixuan.getSmalltype());
		  
	     int page=Integer.valueOf(shaixuan.getPage());
	     int pagesize=Integer.valueOf(shaixuan.getPagesize());
		  String list=shaixuan.getList();
		  
		 // System.out.println("list:"+list);
		  String lists[]=new String[1];
		  if (list.indexOf(",")<0) {
			lists[0]=list;
		}
		  else {
			lists=list.split(",");
		}
		  Goodsdaoimpl goodsdaoimpl=new Goodsdaoimpl();
		  try {
		listsql=	goodsdaoimpl.selectByGoodsSmalltype(bigtype, smalltype, page, pagesize, lists);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		  JSONm mJsoNm=new JSONm(listsql, response, 0, "获取条件商品数据成功");
		  mJsoNm.result();
		
		
		return null;
	}

}
