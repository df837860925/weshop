package web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import dto.UserLoginInfo;

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
		String uri = request.getRequestURI();
	    int begin= uri.lastIndexOf("/");
	    int end=uri.indexOf(".");
	    if (begin!=-1&&end!=-1&&end>begin) {
			
	    uri=  uri.substring(begin+1, end);
	    System.out.println(uri);
		}
	    if ("wkr-zhuce".equals(uri)) {
	    	UserLoginInfo userlogininfo = (UserLoginInfo)request.getSession().getAttribute("userlogininfo");
			if (userlogininfo!=null) {
				System.out.println(userlogininfo);
				request.getSession().setAttribute("zhanghao", userlogininfo.getUsername());
			}
		}
	    else{
			System.out.println("错了");
		}
		request.getSession().setAttribute("nowPage", uri);
		arg2.doFilter(request, arg1);
		
	}
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("初始化了过滤器");
		
	}
}
