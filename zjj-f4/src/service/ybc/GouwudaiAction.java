package service.ybc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Goods;
import pojo.User;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import dao.daoimpl.DaoimplFactory;
import dao.daoimpl.Goodsdaoimpl;
import dao.daoimpl.Userdaoimpl;
import dto.UserLoginInfo;

public class GouwudaiAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		// 获得作用域中的userid
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("userlogininfo");
		if (obj == null) {
			System.out.println("跳转");
			// 如果没有登录 就跳转到注册页面
			return new ActionForword("ybc-gouwudai", true);
		} else {
			// 如果登陆了,就查出购物车内的商品信息
			UserLoginInfo uslf = (UserLoginInfo) obj;
			Userdaoimpl usim = DaoimplFactory.getUserdaoimpl();
			Goodsdaoimpl goodim = DaoimplFactory.getGoodsdaoimpl();
			try {
				List<Goods> list = new ArrayList<Goods>();
				User us = usim.selectByUserId(uslf.getUserid());
				// 因为用户的购车是按照 id-id-id... 来排列的 所以在这里分割一下
				StringTokenizer st = new StringTokenizer(us.getUsershopping(),
						"-");
				while (st.hasMoreTokens()) {
					int goodsid = Integer.parseInt(st.nextToken());
					list.add(goodim.selectByGoodsId(goodsid));
				}
				System.out.println("购物网车" + list);
				request.setAttribute("shoppinglist", list);
				return new ActionForword("ybc-gouwudai");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return new ActionForword("ybc-gouwudai");
		// return null;
	}

}
