package service.core;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public  class ActionForword {
     public String path=null;  //要跳转的页面；
     public boolean redirect=false; //是否重定向
     
    public ActionForword(String path) {
		
    this(path,false);
    	// TODO Auto-generated constructor stub
	}

	public ActionForword(String path, boolean redirect) {
		
		this.path = path;
		this.redirect = redirect;
	}
	
	public void forword(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
	{	
		//看是否有需要提示
		String tishi = (String) request.getAttribute("tishi");
		if (tishi != null) {
			System.out.println("有提示:" + tishi);
			response.getWriter().print(tishi);
			request.setAttribute("tishi", tishi);
		} else {
			System.out.println("没有提示");
		}
		//如果是要访问别人的页面应该要先经过他的action 所以要去.do
		if(this.path.indexOf(".do")<0){//如果没加.do
			Properties config=(Properties)request.getSession().getServletContext().getAttribute("config");
			//如果是为自己的页面 放行 写个对应地址的就行
			if (redirect) {
				System.out.println("进入了重定向");
				response.sendRedirect(config.getProperty(path));//要用绝对路径 因为这里不是servlet;要在属性文件加对应的跳转；
				
			}
			else {
				request.getRequestDispatcher(config.getProperty(path)).forward(request, response);
			}
		}else{//没有选择地址
				if(redirect){
					response.sendRedirect(this.path);
				}else{
					request.getRequestDispatcher(this.path).forward(request, response);
					}
			}
		
		
	}

	
}
