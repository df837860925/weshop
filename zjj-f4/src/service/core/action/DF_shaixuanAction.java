package service.core.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JSON.JSONm;
import pojo.Liebie;
import dao.daoimpl.Goodsdaoimpl;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.core.form.DF_shaixuanForm;

public class DF_shaixuanAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		       DF_shaixuanForm sx=(DF_shaixuanForm) actionForm;
		       int bigtype=Integer.valueOf(sx.getGoods_bigtype());
		       int smalltype=Integer.valueOf(sx.getGoods_smalltype());
		       
		       List<Liebie> list =null;
		  Goodsdaoimpl goodsdaoimpl=new Goodsdaoimpl();
		   try {
			list= goodsdaoimpl.selectByGoodsSmalltype(bigtype, smalltype);
			
			JSONm mJsoNm=new JSONm(list, response, 0, "获取筛选名字成功");
			mJsoNm.result();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}
