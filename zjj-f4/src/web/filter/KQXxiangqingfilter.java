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

public class KQXxiangqingfilter implements Filter {

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
		// 从session中拿到当前的账号
		Object obj = session.getAttribute("user_id");
		if (obj == null) {
			// 如果没有登录过，跳转到注册登录页面，并重写URL把当前goods_id（商品编号）传过去
			response.sendRedirect("/zjj-f4/wkr-zhuce.jsp?goods_id=" + goods_id);
		} else {
			// 不为空表示登录过，跳转到xiangqingAction.java中进行操作
			request.getRequestDispatcher("xiangqing.do").forward(request,
					response);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}