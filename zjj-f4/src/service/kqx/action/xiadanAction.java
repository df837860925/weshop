package service.kqx.action;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.User;
import dao.daoimpl.DaoimplFactory;
import dao.daoimpl.Goodsdaoimpl;
import dao.daoimpl.Userdaoimpl;
import dto.UserLoginInfo;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.kqx.form.xiadanForm;

public class xiadanAction extends Action{

		/**
		 * 这是一个下单逻辑页面
		 */
	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		xiadanForm form= (xiadanForm)actionForm;
		UserLoginInfo uslf = (UserLoginInfo) request.getSession().getAttribute("userlogininfo");
		Userdaoimpl usim = DaoimplFactory.getUserdaoimpl();
		Goodsdaoimpl goodim = DaoimplFactory.getGoodsdaoimpl();
		User us;
		try {
			us = usim.selectByUserId(uslf.getUserid());
			String status=form.getStatus();//拿到上一个页面传来的状态
			String goods=form.getGoods_id();//拿到上一个页面传来的goods_id参数
			
			//拆分拿到goods_id
			StringTokenizer stt=new StringTokenizer(goods,"-");
			String goodsid=stt.nextToken();
			
					System.out.println("进入了商品下单");
			StringTokenizer shopping=new StringTokenizer(us.getUsershopping(),"-");
			while(shopping.hasMoreTokens()){//如果商品已经存在于购物车当中 则直接去购物车
				if(shopping.nextToken().equals(goodsid)){
					System.out.println("商品已存在");
					return new ActionForword("kqx-xiangqing",true);
				}
			}
			System.out.println(us.getUsershopping()+"+下单传过来的id+"+goodsid);
			us.setUsershopping(goodsid+"-"+us.getUsershopping());//加入购物车操作
			usim.updateUser(us);//将更新后的用户信息放入
			if("addCart".equals(status)){
				return new ActionForword("kqx-xiangqing",true);
			}
			if("buy".equals(status)){
				System.out.println("进入了立即购买"+goodsid);
				return new ActionForword("gouwudai.do",true);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}
