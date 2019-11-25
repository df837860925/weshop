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
		Properties config=(Properties)request.getSession().getServletContext().getAttribute("config");
		if (redirect) {
			response.sendRedirect(config.getProperty(path));//要用绝对路径 因为这里不是servlet;要在属性文件加对应的跳转；
		}
		else {
			request.getRequestDispatcher(config.getProperty(path)).forward(request, response);
		}
		
		
		
	}

	
}
