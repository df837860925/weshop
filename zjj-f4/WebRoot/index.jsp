
<%@page import="db.ConnectionPool"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <% 
   
  
   %>
     <center>
     
    <a   onclick="chuandi(this)"  name="dingfeng" id="1ahdab1" >点我传送数据</a>
     </center>
  </body>
</html>
<script  src="js/jquery-3.4.1.min.js"></script>
<script>
    function chuandi(obj){
		var name=obj.name;
		var value=obj.id;
		console.log(value);
		$.get({
		 type:"POST",
		 url:"show.do",
		 data:{"name":name,"value":value},
		 success:function(result){
		 
		 console.log(JSON.parse(result));
		 
		 }
		 
		
		
		
		})
		
	} 



</script>
