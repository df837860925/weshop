package service.ybc;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Goods;
import dao.daoimpl.Goodsdaoimpl;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;

public class SelectDescAction extends Action{

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String descd =request.getParameter("desc");
		descd=new String(descd.getBytes("ISO-8859-1"),"utf-8");
		System.out.println("selectaction"+descd);
		Goodsdaoimpl goodsim =new Goodsdaoimpl();
		SelectDescForm	form =(SelectDescForm)actionForm;
		//String desc=form.getDesc();
		try {
			//∞¥’’
			List<Goods>list=goodsim.selectByGoodsDesc(descd, 0);
			request.setAttribute("goodslist", list);
			return  new  ActionForword("DF_fenlei_type");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ActionForword("ybc-gouwudai");
	}
	
}
