package service.kqx.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Goods;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import dao.daoimpl.DaoimplFactory;
import dao.daoimpl.Goodsdaoimpl;

public class xiangqingAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		System.out.println("123");
		Goods goods = new Goods();
		// 获得作用域中的userid
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("userlogininfo");
		// 从请求中拿到商品ID
		Object goods_id = request.getAttribute("goods_id");
		// 判断，没有就跳转到登录注册页面
		// if (obj == null) {
		// return new ActionForword("zhuce.do");
		// } else {
		// 调用数据库
		Goodsdaoimpl Goodsimpl = DaoimplFactory.getGoodsdaoimpl();
		// if (goods_id != null) {
		try {
			// goods = Goodsimpl.selectByGoodsId(Integer
			// .parseInt((String) goods_id));
			goods = Goodsimpl.selectByGoodsId(Integer.parseInt("100"));
			System.out.println(goods);
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("goods", goods);
		// }
		// }
		return new ActionForword("kqx-xiangqing");
	}
}
