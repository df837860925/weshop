package service.kqx.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Order;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.kqx.form.dingdanform;
import dao.daoimpl.DaoimplFactory;
import dao.daoimpl.Orderdaoimpl;

public class dingdanAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		List<Order> orderlist = new ArrayList<Order>();
		// 获得作用域中的userid
		HttpSession session = request.getSession();
		dingdanform form = (dingdanform) actionForm;
		Object obj = session.getAttribute("userlogininfo");
		// 从请求中拿到商品ID
		String Order_id = form.getOrder_id();
		System.out.println(Order_id);
		// 判断，没有就跳转到登录注册页面
		// if (obj == null) {
		// return new ActionForword("zhuce.do");
		// } else {
		// 调用数据库
		Orderdaoimpl Ordersimpl = DaoimplFactory.getOrderdaoimpl();
		if (Order_id != null) {
			try {
				orderlist = Ordersimpl.selectOderByUserId(Integer
						.parseInt(Order_id));
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.setAttribute("orderlist", orderlist);
		}
		// }
		return new ActionForword("kqx-dingdan");
	}
}
