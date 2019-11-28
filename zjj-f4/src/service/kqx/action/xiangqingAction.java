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
		HttpSession session = request.getSession();
		// 从request中拿到当前的商品
		Object goods_id = session.getAttribute("goods_id");
		// 从DaoimplFactory中拿一个Goodsdaoimpl并根据id查到该商品信息
		Goodsdaoimpl Goodsimpl = DaoimplFactory.getGoodsdaoimpl();
		if (goods_id != null) {
			try {
				goods = Goodsimpl.selectByGoodsId(Integer
						.parseInt((String) goods_id));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 将拿到的商品信息存进request中
		request.setAttribute("goods", goods);
		// 跳转到详情页
		return new ActionForword("kqx-xiangqing");
	}
}
