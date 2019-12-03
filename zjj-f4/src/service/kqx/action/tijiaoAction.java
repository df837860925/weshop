package service.kqx.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Adress;
import pojo.Order;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.kqx.form.tijiaoForm;
import dao.daoimpl.Adressdaoimpl;
import dao.daoimpl.DaoimplFactory;
import dao.daoimpl.Orderdaoimpl;
import dao.daoimpl.Userdaoimpl;
import dto.UserLoginInfo;

public class tijiaoAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		Adress adress = new Adress();
		HttpSession session = request.getSession();
		Userdaoimpl userimpl = DaoimplFactory.getUserdaoimpl();
		tijiaoForm form = (tijiaoForm) actionForm;
		String Order_mes = (String) form.getOrder_mes();
		// 从session中拿到dto中UserLoginInfo对象
		Object obj = session.getAttribute("userlogininfo");
		UserLoginInfo userinfo = (UserLoginInfo) obj;
		// 从UserLoginInfo对象中拿到userid
		int userid = userinfo.getUserid();
		// 判断，没有就跳转到登录注册页面
		if (obj == null) {
			return new ActionForword("zhuce.do");
		} else {
			if (Order_mes != null) {
				// 根据,号分割字符串
				String[] mes = Order_mes.split(",");
				for (String mesgString : mes) {
					Order order = new Order();
					String goods_id = mesgString.split("-")[0];
					String number = mesgString.split("-")[1];
					order.setOrderadressid(userid);
					try {
						// 从数据库中得到用户对应的地址信息
						Adressdaoimpl adressimpl = DaoimplFactory
								.getAdressdaoimpl();
						Adress adress2 = adressimpl.selectAdressById(userid);
						// 操作数据库插入信息到订单信息表
						Orderdaoimpl orderimpl = DaoimplFactory
								.getOrderdaoimpl();
						order.setOrderadressid(adress2.getAdressid());
						order.setOrderuserid(userid);
						order.setOrdergoodsid(Integer.parseInt(goods_id));
						order.setOrdergoodsum(Integer.parseInt(number));
						orderimpl.insertOrder(order);
						// 进行更新用户表购物车字段和订单字段
						userimpl.emptyShoppingCart(userid);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}
		return new ActionForword("");
	}
}
