package service.wkr.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.User;
import service.core.Action;
import service.core.ActionForm;
import service.core.ActionForword;
import service.wkr.form.LoginActionForm;
import dao.daoimpl.Userdaoimpl;
import dto.UserLoginInfo;

public class LoginAction extends Action {

	@Override
	public ActionForword execute(HttpServletRequest request,
			HttpServletResponse response, ActionForm actionForm)
			throws ServletException, IOException {
		// ��ת��
		ActionForword afor = null;

		 //����
		 LoginActionForm af = (LoginActionForm)actionForm;
		 //userlogininfo��
		 UserLoginInfo userlogininfo = new UserLoginInfo();
		 //userdaoimpl��
		 Userdaoimpl userdao = new Userdaoimpl();
		 User user = null;
		 try {
			 //�����ֻ��Ų���user����userlogininfo������userid��username
			 if (af.getLoginShoujihao()==null) {
				 request.setAttribute("tishi", "û����д�˺�");
				 afor = new ActionForword("wkr-zhuce", false);
				 return afor;
			 }
			 user = userdao.selectByUserName(af.getLoginShoujihao());
			 if (user==null) {
				 System.out.println("û������˺���");
				 user = userdao.selectByUserPhone(af.getLoginShoujihao());
				 if (user==null) {
					 System.out.println("û������û�");
					 request.setAttribute("tishi", "��Ǹ!û������û�");
					 return new ActionForword("wkr-zhuce", false);
				 }
			 }
			 if (!user.getUserpass().equals(af.getLoginPassword())) {
				 System.out.println("�������");
				 request.setAttribute("tishi", "��Ǹ!�������");
				 afor = new ActionForword("wkr-zhuce", false);
				 return afor;
			 }
			 userlogininfo.setUserid(user.getUserid());
			 userlogininfo.setUsername(user.getUsername());
		 } catch (Exception e) {
			 e.printStackTrace();
		 }

//		// =======��ŵ��޸�
//		LoginActionForm af = (LoginActionForm) actionForm;
//		String userphone = af.getLoginShoujihao();
//		String userpass = af.getLoginPassword();
//		Userdaoimpl userdao = new Userdaoimpl();
//		try {
//
//			User us = userdao.selectByUserPhone(userphone);
//
//			if (us != null) {// ������˺�
//				if (us.getUserpass().equals(userpass)) {// ���������ȷ
//					// ��userlogininfo������ip��ַ��ʱ��
//					UserLoginInfo userlogininfo = new UserLoginInfo();
//					userlogininfo.setUserid(us.getUserid());
//					userlogininfo.setUsername(us.getUsername());
//					userlogininfo.setIp(request.getLocalAddr());
//					userlogininfo.setLogindate(new Date());
//
//					// ��userlogininfo����session��
//					HttpSession session = request.getSession();
//					session.setAttribute("userlogininfo", userlogininfo);
//					return new ActionForword("main_frame", true);
//				}
//
//			}
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//		}
//		return new ActionForword("wkr-zhuce");

		 // ��userlogininfo������ip��ַ��ʱ��
		 userlogininfo.setIp(request.getLocalAddr());
		 userlogininfo.setLogindate(new Date());

		 // ��userlogininfo����session��
		 HttpSession session = request.getSession();
		 session.setAttribute("userlogininfo", userlogininfo);
		 
		 //ʵ�ּ�ס�ҵĹ���
		 if ("on".equals(af.getRemember())) {
			 System.out.println("ѡ���ˣ�"+af.getRemember());
			session.setAttribute("remember", af);
		}
		 else{
			 System.out.println("ûѡ�У�"+af.getRemember());
			 session.setAttribute("remeber", null);
		 }
		 // ��ù�����ҳ��
		 String uri = (String) session.getAttribute("nowPage");
		 System.out.println("uri�ǣ�" + uri);
		 // ����Ǵ���ͨ����Ҫ��¼��ҳ�������
		 afor = new ActionForword("main_frame", true);
		 return afor;
		 // TODO Auto-generated method stub

	}

}
