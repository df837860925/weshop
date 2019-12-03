package web.listener;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import dto.UserLoginInfo;

public class YbcSessionListener implements HttpSessionAttributeListener {

	Map<Integer, HttpSession> map = new HashMap();

	@Override
	public void attributeAdded(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		// 获得当前添加的属性名
		String attrname = arg0.getName();
		// 如果是登陆操作
		if (attrname.equals("userlogininfo")) {
			// 获得当前登陆信息
			UserLoginInfo userlogininfo = (UserLoginInfo) arg0.getValue();
			// 如果在其他地方登陆过了
			if (map.get(userlogininfo.getUserid()) != null) {
				// 拿出旧的session
				HttpSession session = map.get(userlogininfo.getUserid());
				// 移除旧登陆状态并提示
				session.removeAttribute("userlogininfo");
				String msg = "您的账号在" + userlogininfo.getIp() + " "
						+ userlogininfo.getLogindate().getDate() + "登陆";
				session.setAttribute("msg", msg);
			}
			// 将当前登陆信息存起来
			map.put(userlogininfo.getUserid(), arg0.getSession());
		}
		if (attrname.equals("nowPage")) {
			String nowYemian = (String) arg0.getValue();
			System.out.println("第一个jsp页面是：" + nowYemian + ".jsp");
		}
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		// 当有属性被移除时看一下是不是userlogininfo
		String attrname = arg0.getName();
		if (attrname.equals("userlogininfo")) {
			UserLoginInfo userlogininfo = (UserLoginInfo) arg0.getValue();
			map.remove(userlogininfo.getUserid());
		}
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		// 拿出被替换的属性名看一看是不是userlogininfo
		String attrname = arg0.getName();
		if (attrname.equals("userlogininfo")) {
			// 先把旧的移除
			UserLoginInfo olduserlogininfo = (UserLoginInfo) arg0.getValue();
			map.remove(olduserlogininfo.getUserid());
			// 获得新的登陆信息
			UserLoginInfo userlogininfo = (UserLoginInfo) arg0.getSession()
					.getAttribute("userlogininfo");
			// 再看看新的有没有在其他地方登陆过
			if (map.get(userlogininfo.getUserid()) != null) {
				// 如果有
				// 拿出其他地方登陆的session
				HttpSession session = map.get(userlogininfo.getUserid());
				// 移除其他地方登陆状态并提示
				session.removeAttribute("userlogininfo");
				String msg = "您的账号在" + userlogininfo.getIp() + " "
						+ userlogininfo.getLogindate().getDate() + "登陆";
				session.setAttribute("msg", msg);
			}
			map.put(userlogininfo.getUserid(), arg0.getSession());
		}
		if (attrname.equals("nowPage")) {
			String nowYemian = (String) arg0.getValue();
		}
	}

}
