package web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class KQXdingdanfilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
//		// 强转成HTTP协议
//		HttpServletRequest request = (HttpServletRequest) arg0;
//		HttpServletResponse response = (HttpServletResponse) arg1;
//		// 获得session中是否有值
//		HttpSession session = request.getSession();
//		// 从session中拿到当前的账号
//		Object obj = session.getAttribute("user_id");
//		if (obj == null) {
//			// 如果没有登录过，跳转到注册登录页面
//			response.sendRedirect("/zjj-f4/wkr-zhuce.jsp");
//		} else {
//			// 不为空表示登录过，跳转到xiangqingAction.java中进行操作
//			request.getRequestDispatcher("dingdan.do").forward(request,
//					response);
//		}
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		Object obj=request.getAttribute("userlogininfo");
		if(obj!=null){
			System.out.println("进了过滤器");
			arg2.doFilter(request, response);
		}else{
			response.sendRedirect("wkr-zhuce.do");
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
