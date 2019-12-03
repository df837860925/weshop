package service.kqx.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.User;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.kqx.form.xiadanForm;
import dao.daoimpl.DaoimplFactory;
import dao.daoimpl.Goodsdaoimpl;
import dao.daoimpl.Userdaoimpl;
import dto.UserLoginInfo;

public class xiadanAction extends Action {

	/**
	 * 这是一个下单逻辑
	 */
	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("xiadan");
		xiadanForm form = (xiadanForm) actionForm;
		UserLoginInfo uslf = (UserLoginInfo) request.getSession().getAttribute(
				"userlogininfo");
		Userdaoimpl usim = DaoimplFactory.getUserdaoimpl();
		Goodsdaoimpl goodim = DaoimplFactory.getGoodsdaoimpl();
		PrintWriter out = response.getWriter();
		if (uslf == null) {// 如果没有登录
			System.out.println("进入了没登录");
			out.print("unlogin");
			out.flush();
			return null;
		}

		User us;
		try {
			us = usim.selectByUserId(uslf.getUserid());
			String status = form.getStatus(); // 拿到上一个页面传来的状态
			String goods = form.getGoods_id();// 拿到上一个页面传来的goods_id参数
			// 拆分
			StringTokenizer stt = new StringTokenizer(goods, "-");
			String goodsid = stt.nextToken();
			StringTokenizer shopping = new StringTokenizer(
					us.getUsershopping(), "-");
			if ("go".equals(status)) {
				return new ActionForword("gouwudai.do", true);
			}
			if ("addcart".equals(status)) {
				while (shopping.hasMoreTokens()) {// 如果商品已经存在于购物车当中 则直接去购物车
					if (shopping.nextToken().equals(goodsid)) {
						out.print("false");
						out.flush();
						return null;
					}
				}
				out.print("true");
				out.flush();//
			}
			if ("buy".equals(status)) {
				while (shopping.hasMoreTokens()) {// 如果商品已经存在于购物车当中 则直接去购物车
					if (shopping.nextToken().equals(goodsid)) {
						out.print("true");
						out.flush();
						return null;
					}
				}
				out.print("true");
				out.flush();//
			}

			System.out.println(us.getUsershopping() + "+下单传过来的id+" + goodsid);
				us.setUsershopping("-"+goodsid + us.getUsershopping());// 加入购物车操作
				usim.updateUser(us);// 将更新后的用户信息放入

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}
}
