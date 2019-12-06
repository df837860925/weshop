package service.wkr.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.User;
import dao.daoimpl.Userdaoimpl;
import dto.UserLoginInfo;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.wkr.form.ZhuceActionForm;

public class ZhuceAction extends Action {
	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		//userlogininfo类
		UserLoginInfo userlogininfo = new UserLoginInfo();
		//跳转类
		ActionForword afor = null;
		// userdaoimpl类
		Userdaoimpl userdao = new Userdaoimpl();
		// 正确的验证码
		String yanzhengma = (String) request.getSession().getAttribute("code");
		// ZhuceActionForm类
		ZhuceActionForm af = (ZhuceActionForm) actionForm;
		if (af.getYanZhengma().toUpperCase().equals(yanzhengma)) {
			System.out.println("验证码正确");
		} else {
			System.out.println("验证码错误");
//			response.getWriter().print("<script language='javascript'>alert('验证码错误')</script>");
			request.setAttribute("tishi", "抱歉!验证码错误!");
			afor = new ActionForword("wkr-zhuce", false);
			return afor;
		}
		User user = null;
		try {
			user = userdao.selectByUserPhone(af.getZhucePhone());
			if (user != null) {
				System.out.println("这个手机号已经被注册了"); 
				request.setAttribute("tishi", "这个手机号已经被注册了");
				afor = new ActionForword("wkr-zhuce", false);
				return afor;
			}
			else {
				user = new User();
				user.setUsername(af.getZhucePhone());
				user.setUserphone(af.getZhucePhone());
				user.setUserpass(af.getZhucePassword());
				userdao.insertUser(user);
				System.out.println("注册用户成功");
				request.setAttribute("tishi", "注册用户成功");
				userdao = new Userdaoimpl();
				user = userdao.selectByUserPhone(af.getZhucePhone());
				userlogininfo.setUserid(user.getUserid());
				userlogininfo.setUsername(user.getUserphone());
				userlogininfo.setLogindate(new Date());
				userlogininfo.setIp(request.getLocalAddr());
				request.getSession().setAttribute("userlogininfo", userlogininfo);
				afor = new ActionForword("main_frame", false);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		System.out.println(af);
		return afor;
	}
}
