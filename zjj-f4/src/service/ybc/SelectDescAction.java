package service.ybc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import dao.daoimpl.Goodsdaoimpl;
import dto.Goodslist;

public class SelectDescAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String descd = request.getParameter("desc");
		descd = new String(descd.getBytes("ISO-8859-1"), "utf-8");
		Goodsdaoimpl goodsim = new Goodsdaoimpl();
		SelectDescForm form = (SelectDescForm) actionForm;
		// String desc=form.getDesc();
		try {
			// °´ÕÕ
			Goodslist goodslist = goodsim.selectGoodsByDesc(descd, 1, 48);
			System.err.println("ËÑË÷³öÀ´" + goodslist.getList());
			request.setAttribute("list", goodslist);
			return new ActionForword("df_fenlei_type");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ActionForword("df_fenlei_type");
	}

}
