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

public class KQXfilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// 强转成HTTP协议
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		// 获得session中是否有值
		HttpSession session = request.getSession();
		// 从请求中拿到当前访问的goods_id（商品编号）
		String goods_id = (String) request.getAttribute("goods_id");
		if (goods_id!=null) {
			request.setAttribute("goods", goods_id);
		}
		//获取过来的页面的uri并存入request中
		String uri = request.getRequestURI();
		int begin= uri.lastIndexOf("/");
		uri = uri.substring(begin+1);
		request.setAttribute("uri", uri);
		// 从session中拿到当前的账号
		Object obj = session.getAttribute("userlogininfo");
		if (obj == null) {
			// 如果没有登录过，转发到注册登录页面，并把当前goods_id（商品编号）传过去
			request.getRequestDispatcher("/wkr-zhuce.jsp").forward(request, response);
		} else {
			// 不为空表示登录过，跳转到xiangqingAction.java中进行操作
			arg2.doFilter(request, response);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}