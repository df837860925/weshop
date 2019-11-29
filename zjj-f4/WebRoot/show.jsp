<%@page import="java.net.URLDecoder"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="JSON.jsonclass"%>
<%@page import="JSON.Users"%>
<%@page import="JSON.UsersDaoImpl"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<% 
UsersDaoImpl ud = new UsersDaoImpl();
			List<Users> list = ud.selectAll();
//			JSONArray jarr = JSONArray.fromObject(list);
			jsonclass  c=new jsonclass();
			c.setList(list);
			c.setCode(0);
		c.setMessage("获取数据成功");
	
		
			JSONObject c1 = JSONObject.fromObject(c);
			
		
	//		PrintWriter pw = response.getWriter();
			response.setCharacterEncoding("UTF-8");
			response.setHeader("Content-Type", "application/json;charset=utf-8");
			
//			response.setContentType("text/html; charset=UTF-8");
	
			System.out.println(c1.toString());
		  out.print(URLDecoder.decode(c1.toString()));
		





%>