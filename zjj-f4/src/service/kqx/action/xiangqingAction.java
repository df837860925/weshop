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
		Goods goods = new Goods();
		// 获得作用域中的userid
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("userid");
		// 判断，没有就跳转到登录注册页面
		if (obj == null) {
			return new ActionForword("zhuce.do");
		} else {
			// 从请求中拿到商品ID
			Object goods_id = request.getAttribute("goods_id");
			// 调用数据库
			Goodsdaoimpl Goodsimpl = DaoimplFactory.getGoodsdaoimpl();
			if (goods_id != null) {
				try {
					goods = Goodsimpl.selectByGoodsId(Integer
							.parseInt((String) goods_id));
				} catch (Exception e) {
					e.printStackTrace();
				}
				request.setAttribute("goods", goods);
			}
		}
		return new ActionForword("kqx-xiangqing");
	}
}
