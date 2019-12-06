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

public class DF_hostgoodsAction  extends Action{

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		List<Goods> list=null;
		 Goodsdaoimpl  gl=new Goodsdaoimpl();
		try {
			list= gl.hostGoods();
			JSONm  m=new JSONm(list, response, 0, "获取热门商品成功");
			m.result();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}

}
