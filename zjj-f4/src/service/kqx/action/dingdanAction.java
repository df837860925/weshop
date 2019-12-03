package service.kqx.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Adress;
import pojo.Goods;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.kqx.form.dingdanForm;
import dao.daoimpl.Adressdaoimpl;
import dao.daoimpl.DaoimplFactory;
import dao.daoimpl.Goodsdaoimpl;
import dto.UserLoginInfo;

public class dingdanAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		Map<Goods, String> map = new HashMap<Goods, String>();
		Goodsdaoimpl goodsimpl = DaoimplFactory.getGoodsdaoimpl();
		Adressdaoimpl adressimpl = DaoimplFactory.getAdressdaoimpl();
		HttpSession session = request.getSession();
		dingdanForm form = (dingdanForm) actionForm;
		// 从session中拿到dto中UserLoginInfo对象
		Object obj = session.getAttribute("userlogininfo");
		UserLoginInfo userinfo = (UserLoginInfo) obj;
		// 从UserLoginInfo对象中拿到userid
		int userid = userinfo.getUserid();
		Adress adress = new Adress();
		try {// 根据userid查到对应的地址
			adress = adressimpl.selectAdressById(userid);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		// 从form中拿到订单的数据(拿到的数据格式为id-num，例：1-5,2-8)
		String Order_mes = form.getOrder_mes();
		// 判断，没有就跳转到登录注册页面
		if (obj == null) {
			return new ActionForword("zhuce.do");
		} else {
			if (Order_mes != null) {
				// 根据,号分割字符串
				String[] mes = Order_mes.split(",");
				for (String mesgString : mes) {
					String goods_id = mesgString.split("-")[0];
					String number = mesgString.split("-")[1];
					try {
						// 拿到的goods_id进行数据库查询拿到Goods对象
						Goods goods = goodsimpl.selectByGoodsId(Integer
								.parseInt(goods_id));
						String price = goods.getGoodsprice().replace(",", "");
						goods.setGoodsprice(price);
						// 拿到的Goods对象存进goodslist集合中
						map.put(goods, number);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				request.setAttribute("map", map);
				request.setAttribute("adress", adress);
				request.setAttribute("Order_mes", Order_mes);
			}
		}
		// 转发至订单页
		return new ActionForword("kqx-dingdan");
	}
}
