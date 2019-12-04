package service.ybc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Goods;
import pojo.Order;
import pojo.User;
import dao.daoimpl.Goodsdaoimpl;
import dao.daoimpl.Orderdaoimpl;
import dao.daoimpl.Userdaoimpl;
import dto.Orders;
import dto.UserLoginInfo;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;

public class UserAction extends Action{

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserLoginInfo uslf= (UserLoginInfo)request.getSession().getAttribute("userlogininfo");
		Userdaoimpl usim=new Userdaoimpl();
		Goodsdaoimpl goim=new Goodsdaoimpl();
		Orderdaoimpl orderim=new Orderdaoimpl();
		List<Orders> list=new ArrayList<>();
		User us=null;
		try {
			us=usim.selectByUserId(uslf.getUserid());
			StringTokenizer stt=new StringTokenizer(us.getUserorder(),"-");
			while(stt.hasMoreTokens()){
				Orders ords =new Orders();
				Order or =orderim.selectOderByid(Integer.parseInt(stt.nextToken()));
				Goods good=goim.selectByGoodsId(or.getOrdergoodsid()); 
				ords.setGoodsimg(good.getGoodsimg());
				ords.setGoodsname(good.getGoodsname());
				ords.setGoodsprice(good.getGoodsprice());
				ords.setGoodstype(good.getGoodstype());
				ords.setOrdertime(new Date().toLocaleString());
				list.add(ords);
			}
			System.out.println(list);
			request.setAttribute("list", list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ActionForword("ybc-user");
		
	}
	
}
