package web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import service.wkr.form.LoginActionForm;

public class WkrFilter implements Filter{
	@Override
	public void destroy() {
		System.out.println("销毁了过滤器");
		
	}
	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		System.out.println("进入了过滤器");
		HttpServletRequest request = (HttpServletRequest)arg0;
		HttpSession session = request.getSession();
		String uri = request.getRequestURI();
	    int begin= uri.lastIndexOf("/");
	    int end=uri.indexOf(".");
	    if (begin!=-1&&end!=-1&&end>begin) {
			
	    uri=  uri.substring(begin+1, end);
	    System.out.println(uri);
		}
	    if ("wkr-zhuce".equals(uri)) {
	    	LoginActionForm remember = (LoginActionForm)session.getAttribute("remember");
			if (remember!=null) {
				System.out.println(remember);
				if ("on".equals(remember.getRemember())) {
					request.getSession().setAttribute("zhanghao", remember.getLoginShoujihao());
				}
			}
		}
	    else{
			System.out.println("错了");
		}
		session.setAttribute("nowPage", uri);
		arg2.doFilter(request, arg1);
		
	}
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("初始化了过滤器");
		
	}
}
