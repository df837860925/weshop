package service.wkr.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.User;
import dao.daoimpl.Userdaoimpl;
import dto.UserLoginInfo;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.wkr.form.LoginActionForm;

public class LoginAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		//跳转类
		ActionForword afor = null;
		
		//表单类
		LoginActionForm af = (LoginActionForm)actionForm;
		System.out.println(af);
		//userlogininfo类
		UserLoginInfo userlogininfo = new UserLoginInfo();
		//userdaoimpl类
		Userdaoimpl userdao = new Userdaoimpl();
		User user = null;
		try {
			//根据手机号查找user并向userlogininfo中填入userid与username
			if (af.getLoginShoujihao()==null) {
				afor = new ActionForword("wkr-zhuce", true);
				return afor;
			}
			user = userdao.selectByUserName(af.getLoginShoujihao());
			if (user==null) {
				System.out.println("没有这个账号名");
				user = userdao.selectByUserPhone(af.getLoginShoujihao());
				if (user==null) {
					System.out.println("没有这个用户");
					return null;
				}
			}
			if (!user.getUserpass().equals(af.getLoginPassword())) {
				System.out.println("密码错误");
				return null;
			}
			userlogininfo.setUserid(user.getUserid());
			userlogininfo.setUsername(user.getUsername());
		} catch (Exception e) {
			e.printStackTrace();
		}
		//向userlogininfo中填入ip地址与时间
		userlogininfo.setIp(request.getLocalAddr());
		userlogininfo.setLogindate(new Date());
		
		//将userlogininfo存入session中
		HttpSession session = request.getSession();
		session.setAttribute("userlogininfo", userlogininfo);
		
		//获得过来的页面
		String uri = (String)session.getAttribute("nowPage");
		System.out.println("uri是："+uri);
		//如果是从详情页过来的
		Integer goods_id = (Integer)session.getAttribute("goods");
		if (goods_id!=null) {
			afor = new ActionForword(uri+"?goods_id="+goods_id, true);
			return afor;
		}
		//如果是从普通的需要登录的页面过来的
		afor = new ActionForword(uri,true);
		return afor;
		// TODO Auto-generated method stub
		
	}

}
