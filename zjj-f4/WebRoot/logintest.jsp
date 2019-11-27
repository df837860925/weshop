<%@page import="pojo.User"%>
<%@page import="dao.daoimpl.DaoimplFactory"%>
<%@page import="dao.daoimpl.Userdaoimpl"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String uname=request.getParameter("uname");
	String upass=request.getParameter("upass");
	System.out.print(uname);
	Userdaoimpl usim =DaoimplFactory.getUserdaoimpl();
	User us=usim.selectByUsername(uname);
	if(us!=null){//如果账号纯在
		if(us.getUserpass().equals(upass)){//如果密码正确
			request.getSession().setAttribute("userid", us.getUserid());
			request.getRequestDispatcher("gouwudai.do").forward(request, response);
		}
	}
 %>