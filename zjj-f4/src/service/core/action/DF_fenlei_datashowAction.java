package service.core.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JSON.JSONm;
import pojo.Goods;
import dao.daoimpl.Goodsdaoimpl;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.core.form.DF_fenlei_datashowForm;

public class DF_fenlei_datashowAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		  DF_fenlei_datashowForm df_= ( DF_fenlei_datashowForm) actionForm;
		  String  bigtype=  df_.getBigtype();
		  String  smalltype=df_.getSmalltype();
		  String  page=df_.getPage();
		  String  pagesize=df_.getPagesize();
		  
		  
		  Goodsdaoimpl gd=new Goodsdaoimpl();
		  List<Goods> list=null;
		  try {
		 list=	gd.selectByGoodsSmalltype(Integer.valueOf(bigtype), Integer.valueOf(smalltype),Integer.valueOf(page),Integer.valueOf(pagesize));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		JSONm  mJsoNm=new JSONm(list, response, 0, "获得分类商品数据成功");
		 mJsoNm.result();
		
		
		return null;
	}

	
}
