<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	//System.out.print(request.getAttribute("goodslist"));
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'df_fenlei_type.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="witdh=device-witdh,initial-scale=1"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="css/daohang.css"/>
		<link rel="stylesheet" type="text/css" href="css/DF_small_type.css" />
		<link rel="stylesheet" type="text/css" href="css/animate.css"/>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style type="text/css">
		#last{
				background: #1B1B1B;
			}
			#last p{
				color: #666;
				margin: 30px 0px;
			}
			#last a{
				display: block;
				color: #e5dfd9;
				margin: 10px 0px;
				font-size: 11px;
			}
			.smll_daohang{
				height:50px;
				width: 100%;
				background: white;
				/*border: red 1px solid;*/
				
			}
			.ul_big {
				
				
				height:50px;
				width: 100%;
				padding-right:50px ;
			}
			
			.smll_daohang>ul>li {
				border-right: #E0E0E0 1px solid;
				position: relative;
				line-height: 50px;
				font-size: 12px;
				color: #1B1B1B;
				text-align: center;
				width: 70px;
				height: 50px;
				float: right;
				
			}
			.smll_daohang>ul>li>span{
				
				font-size:10px ;
				font-weight: 0;
			}
			.leibie
			{   position: absolute;
			   right: 0px;
			   top: 50px;
			   line-height: 30px;
				display: none;
				width: 120px;
				height: 100px;
			background: white;
			z-index: 10000;
			}
			.leibie li{
				
				border: #E0E0E0 1px solid;
			}
			.paixu
			{   position: absolute;
			   right: 0px;
			   top: 50px;
			   line-height: 30px;
				display: none;
				width: 120px;
				height:350px;
			background: white;
			z-index: 10000;
			}
			.paixu li{
				
				border: #E0E0E0 1px solid;
			}
			
			.shaixuan 
			{    border: #E0E0E0 1px solid;
				 padding:30px;
				position: absolute;
			   right: 0px;
			   top: 50px;
			   line-height: 30px;
				display: none;
				width:1000px;
				height: 500px;
			background: white;
			z-index: 1;
			}
			.shaixuan ul{
				width: 100px;
				margin: 30px 40px 30px 30px;
				}
			
			.shaixuan li{
				margin: 10px 0px;
				width: 100px;
				font-size: 12px;
				/*border: #E0E0E0 1px solid;*/
			}
			.shaixuan input{
				width: 15px;
        height: 14px;
       background-color: #fff;
            -webkit-appearance:none;
    border: 1px solid #c9c9c9;
    border-radius: 2px;
    outline: none;
	 float: left;			
				
			}
			.shaixuan input:checked{
				background: url(img/001_01.png)no-repeat center;
				
			}
			#color{
				font-size: 12px;
				line-height: 30px;
				text-align: top;
				margin-bottom:20px ;
			}
			
			//=====
			.a_btn{
				text-align: center;
				position: absolute;
				left:44.5%;
				top:48%;
				margin: 50px 0px 0px; 
				display: inline-block;
				padding-top: 12px;
				font-size: ;
				color: #e5dfd9;
				background-color:#1b1b1b;
				width: 168px;
				height: 45px;
			}
			.a_btn:hover{
				background: #444;
				color: white;
				list-style: none;
				text-decoration: none;
			}
			#btn_sure{
				margin: 20px 10px; 
				display: inline-block;
				padding-top: 1px;
				font-size: ;
				color: #e5dfd9;
				background-color:#1b1b1b;
				width: 100px;
				height: 45px;
			}
			#btn_sure:hover{
				background: #444;
				color: white;
				list-style: none;
				text-decoration: none;
			}
			#btn_quxiao{
				margin: 20px 10px; 
				display: inline-block;
				padding-top: 1px;
				font-size: ;
				color: #1B1B1B;
				background-color:white;
				width: 100px;
				height: 45px;
				border: #000000 1px solid;
			}
			#btn_quxiao:hover{
				background: #444;
				color: white;
				list-style: none;
				text-decoration: none;
			}
			#tag:hover {
			background-color: black;
			
			}
	</style>
  <body>
  <% //System.out.print("@@@@@"+request.getAttribute("list")); %>
  <input type="hidden" value="${msg}" id="loginmsg"/>
    	<div class="ybc_nav">
			<div class="container " id="ybc_mynav">
				<div class="row" >
					<div class="col-lg-4 col-lg-offset-4 text-center">
						<h1 id="logo" style="margin-bottom: 0px;">G U C C I</h1>
					</div>
					<div class="col-lg-4  text-right " id="ybc_shoping">
						<c:if test="${userlogininfo!=null}">
							<a href="user.do" class="login" id="login"><span class="glyphicon glyphicon-user  id="welcome"></span><span>${userlogininfo.username }</span></a>
							<a href="javascript:;" id="outline"><span class="glyphicon glyphicon-log-out "></span>退出</a>
						</c:if>
						<c:if test="${userlogininfo==null}">
							<a href="wkr-zhuce.jsp" class="login" id="login"><span>登陆 </span></a>
						</c:if>
						<a href="gouwudai.do" class="shop_cart" id="shop_cart"><span >购物袋 </span></a>
						<span class="glyphicon glyphicon-shopping-cart"></span>
					</div>
				</div>
				<div class="row " >
				<div class="col-md-3"  id="serchfather">
						<a id="serch" href="javascript:;">
							<span class="glyphicon glyphicon-search" id=""   >
							</span>
						</a>
					</div>
					<div class="col-md-3 "  id="serchinput">
						<div class="input-group" >
				      		<span class="input-group-btn">
				       		 	<button class="btn btn-default" type="button">
				       		 		<span class="glyphicon glyphicon-search" id="toserch"  >
									</span>
				       		 	</button>
				      		</span>
			      			<input type="text" class="form-control" placeholder="Search for...">
   			 			</div><!-- /input-group -->
					</div>
					<div class="col-md-6   navbar" id="ybc_main_nav">
							<ul class="nav  nav-justified" id="nav_a" >
								<li><a href="">全新资讯<p class="clearblock"><span  class="caret"></span></p></a></li>
								<li><a href="">女士<p class="clearblock"><span  class="caret"></span></p></a></li>
								<li><a href="">童装<p class="clearblock"><span  class="caret"></span></p></a></li>
								<li><a href="">珠宝和腕<p class="clearblock"><span  class="caret"></span></p></a></li>
								<li><a href="">家饰<p class="clearblock"><span  class="caret"></span></p></a></li>
								<li><a href="">礼品<p class="clearblock"><span  class="caret"></span></p></a></li>
								<li><a href="">古驰故事<p class="clearblock"><span  class="caret"></span></p></a></li>
							</ul>
					</div>
							<div class="container fuji">
								<div class="xialakuag">
									<div class="xialakuangbanxin">
										<ul >
											<li><h4>新品浏览</h4></li>
											<li><a href="">按秀场款式选购</a></li>
											<li><a href="">Gucci 1955马衔扣手袋</a></li>
											<li><a href="">Grip系列腕表</a></li>
											<li><a href="">古驰宣言系列</a></li>
										</ul>
										<ul>
											<li><h4>观看视频</h4></li>
											<li><a href="">2020春夏</a></li>
											<li><a href="">2020早春</a></li>
											<li><a href="">2019秋冬</a></li>
											<li><a href="">2019春夏</a></li>
										</ul>
										<ul>
											<li><h4>编辑精选</h4></li>
											<li><a href="">演出者(The Performers)</a></li>
											<li><a href="">Harry Styles Tailoring</a></li>
											<li><a href="">#Guccigi</a></li>
										</ul>
									</div>
								</div>
							</div>
				</div>
			</div>
			<div class="container ybc_nav_center">
						<div class="row">
							<div class="col-lg-4 text-center col-lg-offset-4 visible-lg">
								<h4>G U C C I</h4>
							</div>
						</div>
						<div class="row ">
							<div class="col-lg-4 text-center col-lg-offset-4  visible-lg">
								<h1>购物袋</h1>
							</div>
						</div>
			</div>
		</div>
		<!--导航栏 -->
		
		<section>
			
			<div class="smll_daohang">
			
				 <ul class="ul_big">
				    <c:if test="${list ne null }">
			<span id="select_desc" style="dispaly:inline;width:500px;height:60px;margin: 0px;font-size:16px;font-family: 'FuturaLT-Book', 'GucciChinese';
    font-size: 28px;color: #999999;">搜索“${list.desc}”共有${list.list.size()}个结果</span>
			</c:if>
				 	<li id="li_leibie"><a href="">排序</a><span class="caret"></span>
				 		<div class="leibie">
				 			<ul>
				 				<li class="leibie1"><a  onclick="paixu_height_low()">价格从高到底</a></li>
				 			     <li class="leibie1"><a  onclick="paixu_low_height()">价格从低到高</a></li>
				 			</ul>
				 		</div>
				 	</li >
				 	<li id="li_shaixuan">筛选<span class="caret"></span>
				 		<div class="shaixuan">
				 			<p style="color: #A6A5A6; font-size: 14px; float: left; margin-left:50px;">颜色</p>
				 			<ul id="c_flag"  style="display: inline-block; float: left;">
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-1" /><span id="color">　蓝色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-2" /><span id="color">　粉色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-3" /><span id="color">　绿色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-4" /><span id="color">　红色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-5" /><span id="color">　酒红色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-6" /><span id="color">　白色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-7" /><span id="color">　棕色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-8" /><span id="color">　黄色</span></li>
				 			
				 			</ul>
				 			<ul id="c_flag" style="display: inline-block;float: left;" >
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-9" /><span id="color">　灰色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-10" /><span id="color">　紫色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-11" /><span id="color">　橙色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-12" /><span id="color">　米色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-13" /><span id="color">　黑色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-14" /><span id="color">　金色</span></li>
				 			
				 			
				 			</ul>
				 			<p style="color: #A6A5A6; font-size: 14px; float: left;margin-left:100px; ">材质</p>
				 			<ul  id="m_flag" style="display: inline-block; float: left; margin-left:70px ;">
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-1"  /><span id="color">　织物</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-2" /><span id="color">　真皮</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-3" /><span id="color">　GG帆布</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-4" /><span id="color">　天鹅绒</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-5" /><span id="color">　绒面真皮</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-6" /><span id="color">　稀有皮</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-7" /><span id="color">　帆布</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-8" /><span id="color">　橡胶</span></li>
				 			
				 			</ul>
				 			<ul id="m_flag" style="display: inline-block;float: left;" >
				 				<li class="leibie2"><input type="checkbox" name="" id="" value="12-9" /><span id="color">　带有logo</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-10" /><span id="color">　纯银</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-11" /><span id="color">　时尚首饰</span></li>
				 			
				 			
				 			
				 			</ul>
				 			<div style="width: 500px; margin: 0 auto;">
				 			<button id="btn_sure">确定</button>
				 			<button  id="btn_quxiao">取消</button>
				 			</div>
				 		</div>
				 	</li>
				 	<li id="li_paixu">类别<span class="caret"></span>
				 		<div class="paixu">
				 			<ul id="shaixuan_ajax">
				 				<li class="leibie1"><a href="">价格从高到底</a></li>
				 			     <li class="leibie1"><a href="">价格从低到高</a></li>
				 			     <li class="leibie1"><a href="">价格从低到高</a></li>
				 			     <li class="leibie1"><a href="">价格从低到高</a></li>
				 			     <li class="leibie1"><a href="">价格从低到高</a></li>
				 			     <li class="leibie1"><a href="">价格从低到高</a></li>
				 			     <li class="leibie1"><a href="">价格从低到高</a></li>
				 			</ul>
				 		</div>
				 	</li>
				 </ul>
				
			</div>
			
		</section>
		
		<section class="ybc_main" style="padding: 0px;">
			<c:forEach items="${list.list}" var="user" varStatus="i" >
			<div class="ybc_jewel">
				<div class="banner_glasses">
					<a class="jihe" href="xiangqing.do?goods_id=${user.goodsid}">
				
					<img class="imglimit" src="${user.goodsimg}" />
					<div class="ps">
						<h2 >${user.goodsname}</h2>
						<p id="price">￥${user.goodsprice}</p>
						<p id="">点击购买></p>
						<p id="p_flag" style="dispaly:none;">12</p>
					</div>
				</a>
				</div>
			</div>
			
			
			
			
			</c:forEach>
		</section>
			
			
			
		<section id="last">
	   	<div class="container">
	   		<div class="row">
	   			<div class="col-md-2">
	   				<p>专属服务</p>
	   				<a href="">免费标准配送</a>
	   				<a href=""> 免费礼品包装</a>
	   				<p>需要帮助？</p>
	   				<a href="">联系我们</a>
	   				<a href="">常见问题</a>
	   			</div>
	   			<div class="col-md-2">
	   				<p>购物相关</p>
	   				<a href="">支付相关</a>
	   				<a href="">配送</a>
	   				
	   				<a href="">退货</a>
	   				<a href="">发票</a>
	   				<a href="">保养与维修</a>
	   			</div>
	   			<div class="col-md-2">
	   				<p>关于公司</p>
	   				<a href="">关于GUCCI</a>
	   				<a href="">GUCCI EQUILIBRLUM</a>
	   				
	   				<a href="">道德规范</a>
	   				<a href="">职业发展</a>
	   				<a href="">细节及条款</a>	
	   				<a href="">隐私与COOKIE</a>	
	   				<a href="">企业信息</a>	
	   			</div>
	   			<div class="col-md-2">
	   				<p>关注GUCCI</p>
	   				<a href="">微信</a>
	   				<a href="">微博</a>
	   				
	   				<a href="">优酷</a>
	   				<a href="">在线顾问</a>
	   				<a href="">400.8210.582</a>
	   			
	   			</div>
	   			<div class="col-md-4">
	   				<p>订阅GUCCI电子资讯</p>
	   				<p>通过订阅，即代表您接受GUCCI的隐私政策条款</p>
	   				<input type="text" name="" id="" value="" placeholder="请输入电子邮箱" />
	   				<p>直营店查询</p>
	   				省份
	   				<select name="请选择省">
	   					<option value="">湖南省</option>
	   				</select>
	   				市区<select name="请选择市">
	   					<option value="">长沙市</option>
	   				</select>
	   				<p>查找其他地区直营店</p>
	   				<img src="img/QQjietu20191025211758.png"/>
	   				
	   			</div>
	   		</div>
	   		<div class="row">
	   		    <div class="col-md-3">
	   		    	<p style="font-size: 11px;">©2019 古驰（中国）贸易有限公司 保留所有权利</p>
	   		    </div>
	   		    
	  
	   		</div>
	   	</div>
	   </section>
	
	
	<input type="text" style="display: none;"  name="" id="data" value="<%=request.getParameter("goods_bigtype")%>,<%=request.getParameter("goods_smalltype")%>" />
	<input type="text" style="display: none;"  name="" id="desc" value="${list.desc}" />
	<input  id="set" type="text " value="${list.set}" />
  </body>
</html>

<script src="js/jquery.min.js">
<script src="js/bootstrap.js"></script>
	
</script>
 <script src="js/DF_JS.js" type="text/javascript"></script>
<script type="text/javascript">



if($("#p_flag").text()!=""){
$("#li_paixu").css("display","none");

}
 var name='';
loadnav();
var data=$("#data").val();
console.log(data);
var x=0;
var y=0;
if(data!="null,null")
{  x=data.split(",")[0];
 y=data.split(",")[1];
 console.log("大分类");
 daohang_name(x, y);
}
else{
 x=1;
 y=1;
 console.log("默认");
}
console.log(x+y);
	if($("#price").text()=="")
	{
	fenleidata(x,y,page);}
	else{
	var set=  $("#set").val();
	console.log(set);
	var obj=set.substring(1,set.length-1);
	 var objs=  obj.split(",");
	 $(".shaixuan>ul>li>input").each(function(){
	 	
	 	$(this).attr("onclick","return false;");
	         $(this).css("background-color","gainsboro");
	 	
	 	
	 	
	 })
	for (var i = 0; i < objs.length; i++) {
     
	if(objs[i]==" c-1")
		   	{  
		   	console.log("进去；了");
		     $(".shaixuan>#c_flag>li").eq(0).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(0).children("input").css("background-color","white");}
		   	if(objs[i]==" c-2")
		   	{$(".shaixuan>#c_flag>li").eq(1).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(1).children("input").css("background-color","white");}
		   	if(objs[i]==" c-3")
		   	{$(".shaixuan>#c_flag>li").eq(2).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(2).children("input").css("background-color","white");}
		   	if(objs[i]==" c-4")
		   	{$(".shaixuan>#c_flag>li").eq(3).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(3).children("input").css("background-color","white");}
		   	if(objs[i]==" c-5")
		   	{$(".shaixuan>#c_flag>li").eq(4).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(4).children("input").css("background-color","white");}
		   	if(objs[i]==" c-6")
		   	{$(".shaixuan>#c_flag>li").eq(5).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(5).children("input").css("background-color","white");}
		   	if(objs[i]==" c-7")
		   	{$(".shaixuan>#c_flag>li").eq(6).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(6).children("input").css("background-color","white");}
		   	if(objs[i]==" c-8")
		   	{$(".shaixuan>#c_flag>li").eq(7).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(7).children("input").css("background-color","white");}
		   	if(objs[i]==" c-9")
		   	{$(".shaixuan>#c_flag>li").eq(8).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(8).children("input").css("background-color","white");}
		   	if(objs[i]==" c-10")
		   	{$(".shaixuan>#c_flag>li").eq(9).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(9).children("input").css("background-color","white");}
		   	if(objs[i]==" c-11")
		   	{$(".shaixuan>#c_flag>li").eq(10).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(10).children("input").css("background-color","white");}
		   	if(objs[i]==" c-12")
		   	{$(".shaixuan>#c_flag>li").eq(11).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(11).children("input").css("background-color","white");}
		   	if(objs[i]==" c-13")
		   	{$(".shaixuan>#c_flag>li").eq(12).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(12).children("input").css("background-color","white");}
		   	if(objs[i]==" c-14")
		   	{$(".shaixuan>#c_flag>li").eq(13).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(13).children("input").css("background-color","white");}
		   	
		   	if(objs[i]==" m-1")
		   	{$(".shaixuan>#m_flag>li").eq(0).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(0).children("input").css("background-color","white");}
		   	if(objs[i]==" m-2")
		   	{$(".shaixuan>#m_flag>li").eq(1).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(1).children("input").css("background-color","white");}
		   	if(objs[i]==" m-3")
		   	{$(".shaixuan>#m_flag>li").eq(2).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(2).children("input").css("background-color","white");}
		   	if(objs[i]==" m-4")
		   	{$(".shaixuan>#m_flag>li").eq(3).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(3).children("input").css("background-color","white");}
		   	if(objs[i]==" m-5")
		   	{$(".shaixuan>#m_flag>li").eq(4).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(4).children("input").css("background-color","white");}
		   	if(objs[i]==" m-6")
		   	{$(".shaixuan>#m_flag>li").eq(5).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(5).children("input").css("background-color","white");}
		   	if(objs[i]==" m-7")
		   	{$(".shaixuan>#m_flag>li").eq(6).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(6).children("input").css("background-color","white");}
		   	if(objs[i]==" m-8")
		   	{$(".shaixuan>#m_flag>li").eq(7).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(7).children("input").css("background-color","white");}
		   	if(objs[i]==" m-9")
		   	{$(".shaixuan>#m_flag>li").eq(8).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(8).children("input").css("background-color","white");}
		   	if(objs[i]==" m-10")
		   	{$(".shaixuan>#m_flag>li").eq(9).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(9).children("input").css("background-color","white");}
		   	if(objs[i]==" m-11")
		   	{$(".shaixuan>#m_flag>li").eq(10).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(10).children("input").css("background-color","white");}
	}
	}

	
	function fenleidata(x,y,i){
 
$.get({
	 type:"POST",
	 url:"DF_fenlei_datashow.do",
	 data:{"bigtype":x,"smalltype":y,"page":i,"pagesize":24},
	 success:function(result){
	   var objs=result;
	  
console.log(result);
	   var index=0;
	   var intarray=["https://res.gucci.cn/resources/2019/10/25/15719787843739250_content_PromoComponent_Standard_632x395_1570606213_PromoComponent_S01CRUISE-PROMO-HERO-148_001_Default.jpg","https://res.gucci.cn/resources/2019/10/25/15719787843738908_content_PromoComponent_Standard_632x395_1570606212_PromoComponent_S01CRUISE-PROMO-HERO-140_001_Default.jpg","https://res.gucci.cn/resources/2019/10/25/15719787843736115_content_PromoComponent_Standard_632x395_1570606211_PromoComponent_S01CRUISE-PROMO-HERO-127_001_Default.jpg","https://res.gucci.cn/resources/2019/10/25/15719787843732355_content_PromoComponent_Standard_632x395_1570606209_PromoComponent_S01CRUISE-PROMO-HERO-119_001_Default.jpg"];
	   var count=0;
   for (var i=0;i<objs.obj.list.length;i++) {
     ++index;
   	fenlei_data+='<div class="ybc_jewel"><div class="banner_glasses"><a href="xiangqing.do?goods_id='+objs.obj.list[i].goodsid+'" class="jihe"><img class="imglimit" src="'+objs.obj.list[i].goodsimg+'" /><div class="ps"><h2>'+objs.obj.list[i].goodsname+'</h2><p id="price">￥'+objs.obj.list[i].goodsprice+'</p><p id="">点击购买></p></div></a></div></div>'
	   if(index%6==0)
	   {
	   fenlei_data+='<img class="flag_img" onclick="img_loadown(this)" style="width:50%;height:500px; transition:0 0;" src="'+intarray[count]+'"  />';
	     count++;
	     if(count==4)
	     {count=0;}
	   }
	   }
	   jinyong(objs);

   $(".ybc_main").html(fenlei_data);
  $(".flag_img").css("transform", "scale(1)");
   $(".ybc_main").append($("<center class='cc'><button id='moregoods'>加载更多</button></center>"));
	$("#moregoods").click(function(){
	
	page++;
	console.log("tiaojian__"+(x,y));
	fenleidata(x,y,page);
	
	
}) 
   
	fenlei_mouseShow();
	
	}
	
	
	})


}

	
	
	
	//头部JS
	var flag=0;
	$(document).scroll(function(){
		if($(document).scrollTop()>60){
			$('#logo').slideUp(500);
			$('#ybc_mynav').css('background','#1b1b1b');
		}else{
			$('#logo').slideDown(500);
			$('#ybc_mynav').css('background','none');
		}
		if($(document).scrollTop()>350){
		
			$(".smll_daohang").css({"position":"fixed",
			    "left":"0px",
			    "top":"50px",
			    "z-index":"10000"
			
			})
			
		}else{
			$(".smll_daohang").css({"position":"relative",
			    "left":"0px",
			    "top":"0px",
			    "z-index":"10000"
			
			})
		}
	})
	$(".leibie").hide();
	$('#ybc_mynav').mouseenter(function(){
		$('#ybc_mynav').css('background','#1b1b1b')
	})
	$('#ybc_mynav').mouseleave(function(){
		if($(document).scrollTop()>60){
			return;
		}
		$('#ybc_mynav').css('background','none');
	})
	$('#nav_a li').each(function(x){
		$(this).mouseenter(function(){
			flag=1;
		$('#nav_a li a p').eq(x).show();
		$('.xialakuag').fadeIn(500);
		$('.xialakuag').addClass('gomove');
		console.log(111);
		
	})
		$(this).mouseleave(function(){
//			$('.xialakuag').slideUp();
		$('#nav_a li a p').eq(x).hide();
		setTimeout(function(){
//				$('.xialakuag').hide();
		},100)
		flag=0;
	})
	})
	$('.xialakuag').mouseleave(function(){
		var that=this;
		setTimeout(function(){
			if(flag==0){
				$(that).hide();
			}
//		$('.xialakuag').css('top',45);
		},100)
	})
	//中部
	//商品选择改变价格逻辑
	var allpay=0;
	var spcount=0;
	var flag=1;
	changepay();
	$('input').each(function(x){
		$(this).click(function(){
			changepay();
		});
	})
	$('select').each(function(x){
		$(this).change(function(){
			changepay();
		});
	})
	$('#quanxuan').click(function(){
			if(flag==0){
				$('.check').each(function(x){
						$(this).prop('checked',true);
				})
				flag=1;
			}else{
				$('.check').each(function(x){
				$(this).prop('checked',false);
				})
				flag=0;
			}
			changepay();
	})
	$('.delete').each(function(){
		$(this).click(function(){
			$(this).parent().parent().remove();
			changepay();
		})
	})
	function changepay(){
		$('.check').each(function(x){
			if($(this).prop('checked')){
				allpay+=$('select').eq(x).val()*parseFloat($('.price').eq(x).html());
				spcount+=parseFloat($('select').eq(x).val());
			}
		})
		$('.allpay').html(allpay+'.00');
		$('#spcount').html(spcount);
		allpay=0;
		spcount=0;
	}
	//================搜索
	$('#serchinput').hide();
	$('#serch').click(function(){
		$('#serchfather').hide();
		$('#serchinput').show();
	})
	$('#serchinput').mouseleave(function(){
		$('#serchfather').show();
		$('#serchinput').hide();
	})
	$('#toserch').click(function(){
		var desc=$('#serchinput input').val();
		location.href="selectdesc.do?desc="+desc;
	})
	//================================丁锋
	read();
	//读缓存 
	function read(){
		var name=localStorage.getItem("username");var token=localStorage.getItem("token");
		if(token!=null)
		{  $("#login").hide();
		   $("#shop_cat").hide();
		   $("#welcome").show();
		   $("#exit").show();
		   $("#welcome").html("欢迎.."+name);
			
		}
		else{
			 $("#login").show();
		   $("#shop_cat").show();
		   $("#welcome").hide();
		   $("#exit").hide();
		}	
	}
	$("#exit").click(function(){
		localStorage.removeItem("username");
		localStorage.removeItem("token");
		$("#login").show();
		$("#shop_cat").show();
		$("#welcome").hide();
		$("#exit").hide();
		read();
	})
	
	//=====================丁锋
	$("#li_leibie").mouseover(function(){
		$(".leibie").slideDown(0);
	})
	$("#li_leibie").mouseout(function(){
		$(".leibie").slideUp(0);
	})
	
	$(".leibie1").hover(function(){
		$(this).css("background","#ecebe6");
		
	})
	$(".leibie1").mouseleave(function(){
		$(this).css("background","white");
		
	})
	//排序
	$("#li_paixu").mouseover(function(){
		$(".paixu").slideDown(0);
	})
	$("#li_paixu").mouseout(function(){
		$(".paixu").slideUp(0);
	})
	

	//筛选
	$("#li_shaixuan").mouseover(function(){
		$(".shaixuan").slideDown(0);
	})
	$("#li_shaixuan").mouseout(function(){
		$(".shaixuan").slideUp(0);
	})
	
	$("#btn_quxiao").click(function(){
		$(".shaixuan").children("ul").children("li").children("input").attr("checked",false);
	})
	var colorarray =[];
	$("#btn_sure").click(function(){
		var count=0;
		
	   $(".shaixuan>ul>li>input").each(function(i){
	   if ($(this).prop("checked")==true){
	   	
	   colorarray[count]=$(this).prop("value");
	   count++;
	  }
	   })
	   
	 
	    fenlei_data='';
	if( $(document).scrollTop()>1000)
	{$("html,body").animate({"scrollTop":0},1000);
	}
	if(name!="") //判断是否点击了类别
		{  select_name(name,colorarray);
		console.log("name___"+x+y);
		  return
		}
	
	if($("#p_flag").text()=="")//判断不是条件查询过来的
	{console.log("tJ___"+x+y);
	tiaojian(x,y,tiaojianpage);}
	
	else{   //是条件查询过来的

	var num=0;
	var desc=$("#desc").val();
	console.log("desc___"+x+y);
	tiaojian1(num,desc,tiaojianpage);}
	
	

	console.log(colorarray);
	colorarray=[];
})
	
	function tiaojian(x,y,i){
	 console.log("tJ___"+x+y);
		$.get({
	type:"POST",
		 url:"DF_fenlei_shaixuan.do",
		 data:{"bigtype":x,"smalltype":y,"page":i,"pagesize":24,"list":colorarray},
		 success:function(result){
		   var objs=result;
		   console.log(result);
		  
		   if(objs.list.length!=0){
		   
		    for (var i=0;i<objs.list.length;i++) {
	   	fenlei_data+='<div class="ybc_jewel"><div class="banner_glasses"><a href="xiangqing.do?goods_id='+objs.list[i].goodsid+'" class="jihe"><img class="imglimit" src="'+objs.list[i].goodsimg+'" /><div class="ps"><h2>'+objs.list[i].goodsname+'</h2><p id="price">￥'+objs.list[i].goodsprice+'</p><p id="">点击购买></p></div></a></div></div>'
	   }
	  
		   }
		   else{
		     fenlei_data='<h1>没有相关的物品<h1>';
		   }
	   $(".ybc_main").html(fenlei_data);
	   if(objs.list.length>=24){
	   $(".ybc_main").append($("<center class='cc'><button id='moregoods'>加载更多</button></center>"));
		$("#moregoods").click(function(){
		var count=0;
	   $(".shaixuan>ul>li>input").each(function(i){
	   if ($(this).prop("checked")==true){
	   	
	   colorarray[count]=$(this).prop("value");
	   count++;
	  }
	   })
	   
		tiaojianpage++;
		
		if($("#p_flag").text()=="")
	{
	tiaojian(x,y,tiaojianpage);}
	else{
	var num=0;
	var desc=$("#desc").val();
	tiaojian1(num,desc,tiaojianpage);}
	
		   
		

	

	console.log(colorarray);
	colorarray=[];
		
		
	}) }
	
	
		   if(tiaojianpage<0){
		   
		   fenlei_data='';
		   }
		   
		   $(".ybc_jewel").mouseenter(function(){
		$(this).children(".banner_glasses").children(".jihe").children(".ps").fadeIn(500);	
	})
	
	
	$(".ybc_jewel").mouseleave(function(){
		$(this).children(".banner_glasses").children().children(".ps").fadeOut(500);		
	}) 
	
	 
	}
	})
	
	}
	
	 //查询出来的结果 再惊醒筛选
		function tiaojian1(num,desc,i){
	
		$.get({
	type:"POST",
		 url:"DF_select_tiaojian.do",
		 data:{"desc":desc,"num":num,"list":colorarray},
		 success:function(result){
		   var objs=result;
		   console.log(result);
		  
		   if(objs.list.length!=0){
		   
		    for (var i=0;i<objs.list.length;i++) {
	   	fenlei_data+='<div class="ybc_jewel"><div class="banner_glasses"><a href="xiangqing.do?goods_id='+objs.list[i].goodsid+'" class="jihe"><img class="imglimit" src="'+objs.list[i].goodsimg+'" /><div class="ps"><h2>'+objs.list[i].goodsname+'</h2><p id="price">￥'+objs.list[i].goodsprice+'</p><p id="">点击购买></p><p id="p_flag" style="dispaly:none;">12</p></div></a></div></div>'
	   }
	   
		   }
		   else{
		     fenlei_data='<h1>没有相关的物品<h1>';
		   }
	   $(".ybc_main").html(fenlei_data);
	   if(objs.list.length>=24){
	   $(".ybc_main").append($("<center class='cc'><button id='moregoods'>加载更多</button></center>"));
		$("#moregoods").click(function(){
		var count=0;
	   $(".shaixuan>ul>li>input").each(function(i){
	   if ($(this).prop("checked")==true){
	   	
	   colorarray[count]=$(this).prop("value");
	   count++;
	  }
	   })
	   
		tiaojianpage++;
	tiaojian1(x,y,tiaojianpage);
		   
		

	

	console.log(colorarray);
	colorarray=[];
		
		
	}) }
	
	
		   
		   
		   fenlei_data='';
		   
		   
		   $(".ybc_jewel").mouseenter(function(){
		$(this).children(".banner_glasses").children(".jihe").children(".ps").fadeIn(500);	
	})
	
	
	$(".ybc_jewel").mouseleave(function(){
		$(this).children(".banner_glasses").children().children(".ps").fadeOut(500);		
	}) 
	$("#li_paixu").css("display","none");
	
	}
	})
	
	}
		
		
		
		
		
		
		
		
		
		
		   $(".ybc_jewel").mouseenter(function(){
		   console.log("!!!!!!!!!!!!!!!!!!!!");
		$(this).children(".banner_glasses").children(".jihe").children(".ps").fadeIn(500);	
	})
	
	
	$(".ybc_jewel").mouseleave(function(){
		$(this).children(".banner_glasses").children(".jihe").children(".ps").fadeOut(500);		
	}) 
	
	
	shaixuan(x,y);
//刷选方法
 
 //类型的名字
function shaixuan(x,y){
		var content='';
		$("#shaixuan_ajax").html("");
		$.get({
			
			type:"POST",
			url:"DF_shaixuan.do",
			data:{"goods_bigtype":x,"goods_smalltype":y},
			success:function(result){
				var obj=result;
				for (var i=0;i<obj.list.length;i++) {
					content+='<li class="leibie1"><a  onclick="select(this)" >'+obj.list[i].goods_liebie_name+'</a></li>'
					
				}
				
				$("#shaixuan_ajax").html(content);
				
				$(".leibie1").hover(function(){
		$(this).css("background","#ecebe6");
		
	})
	$(".leibie1").mouseleave(function(){
		$(this).css("background","white");
		
	})
				
			}
			
			
		})
		
		
		
		
	}
	
	//类型名字的点击时间
	function select(obj){
	name=obj.text;
	 var content='';
		var text=obj.text;
		$.get({
			type:"POST",
			url:"DF_nameselect.do",
			data:{"name":text},
			success:function(result){
				var objs=result;
				$(".ybc_main").html("");
				for (var i=0;i<objs.obj.list.length;i++) {
					content+='<div class="ybc_jewel"><div class="banner_glasses"><a href="xiangqing.do?goods_id='+objs.obj.list[i].goodsid+'" class="jihe"><img class="imglimit" src="'+objs.obj.list[i].goodsimg+'" /><div class="ps"><h2>'+objs.obj.list[i].goodsname+'</h2><p id="price">￥'+objs.obj.list[i].goodsprice+'</p><p id="">点击购买></p></div></a></div></div>'
	   }
	   jinyong(objs);
				$(".ybc_main").html(content);
				
				fenlei_mouseShow();
			}
			
			
		})
		
	};	
	
	
	// 点击类型名字 之后的筛选
	function select_name(name,colorarray){
	
	    var content='';
		
		$.get({
			type:"POST",
			url:"DF_nameselect_shaixuan.do",
			data:{"name":name,"list":colorarray},
			success:function(result){
				var objs=result;
				console.log(objs);
				$(".ybc_main").html("");
				for (var i=0;i<objs.list.length;i++) {
					content+='<div class="ybc_jewel"><div class="banner_glasses"><a href="xiangqing.do?goods_id='+objs.list[i].goodsid+'" class="jihe"><img class="imglimit" src="'+objs.list[i].goodsimg+'" /><div class="ps"><h2>'+objs.list[i].goodsname+'</h2><p id="price">￥'+objs.list[i].goodsprice+'</p><p id="">点击购买></p></div></a></div></div>'
	   }
	   
				$(".ybc_main").html(content);
				
				fenlei_mouseShow();
				
				name='';
				colorarray=[];
			}
			
			
		})
	}

	
	function daohang_name(x,y) { 
 if(y==1)
 { $(".ul_big").prepend($("<span id='s_tag'>服饰</span>"));}
 if(y==2)
 { $(".ul_big").prepend($("<span id='s_tag'>包包</span>"));}
 if(y==3)
 { $(".ul_big").prepend($("<span id='s_tag'>女靴</span>"));}
 if(y==4)
 { $(".ul_big").prepend($("<span id='s_tag'>卡包</span>"));}
 if(y==5)
 { $(".ul_big").prepend($("<span id='s_tag'>腰带</span>"));}
 if(y==6)
 { $(".ul_big").prepend($("<span id='s_tag'>腕表</span>"));}
 if(y==7)
 { $(".ul_big").prepend($("<span id='s_tag'>首饰</span>"));}
 if(y==8)
 { $(".ul_big").prepend($("<span id='s_tag'>眼镜</span>"));}
 if(y==9)
 { $(".ul_big").prepend($("<span id='s_tag'>箱包</span>"));}
 if(y==10)
 { $(".ul_big").prepend($("<span id='s_tag'>男鞋</span>"));}
 if(y==11)
 { $(".ul_big").prepend($("<span id='s_tag'>首饰</span>"));}
 if(y==12)
 { $(".ul_big").prepend($("<span id='s_tag'>眼镜</span>"));}
 if(y==13)
 { $(".ul_big").prepend($("<span id='s_tag'>腕表</span>"));}
 if(y==14)
 { $(".ul_big").prepend($("<span id='s_tag'>帽子</span>"));}
 if(y==15)
 { $(".ul_big").prepend($("<span id='s_tag'>儿童服饰</span>"));}
 if(y==16)
 { $(".ul_big").prepend($("<span id='s_tag'>儿童配饰</span>"));}
 
 if(x==1)
	{
	 $(".ul_big").prepend($("<a id='tag'  href='w_small_type.jsp'>女装</a>>"))
	}
if(x==2)
	{
	  $(".ul_big").prepend($("<a id='tag' href='m_small_type.jsp'>男装</a>>"));
	}
	if(x==3)
	{
	  $(".ul_big").prepend($("<a id='tag' href='c_small_type.jsp'>童装</a>>"));
	}
 }
	
$("#tag").css({
 "dispaly":"inline-block",
 "width":"100px",
 "height":"60px",
 "background-color":"#e7e7e7",
 "line-height": "60px",
 "font-size":"20px",
 "margin":"0px 50px",
 "padding":"5px",
 "border-radius": "20%"
}); 

$("#s_tag").css({
 "dispaly":"inline-block",
 "width":"100px",
 "height":"60px",
 "background-color":"#e7e7e7",
 "line-height": "60px",
 "font-size":"20px",
 "padding":"5px",
 "border-radius": "20%"
}); 

	//=========退出登录
	$('#outline').click(function(){
		$.ajax({
			type:"GET",
			dataType:"text",
			url:"outline.do",
			success:function(result){
			console.log("退出按钮");
					alert("退出登录成功！");
					$('#ybc_shoping').empty();
					$('#ybc_shoping').html("<a href='wkr-zhuce.jsp' class='login' id='login'><span>登陆 </span></a><a href='gouwudai.do' class='shop_cart' id='shop_cart'><span >购物袋 </span></a><span class='glyphicon glyphicon-shopping-cart'></span>");
					
			},
		})
		
	})
	 
 function img_loadown(obj){
  var src=obj.src;
  if(confirm("将下载该图片,是否需要？"))
  {  
  
  window.location.href="DF_loadown.do?src="+src;
  
  }
  else{
  
  }
 
 
 }
 //================单态登录的提示
	var msg=$('#loginmsg').val();
	if(msg!=''){
		if(confirm(msg+",是否立即去登录?"))
		{
			$.ajax({
				type:"GET",
				dataType:"text",
				url:"cleanmsg.do",
				success:function(result){
					location.href="wkr-zhuce.jsp";
				}
			})
		}else{
			$.ajax({
				type:"GET",
				dataType:"text",
				url:"cleanmsg.do",
				success:function(result){
				}
			})
		}
	}
</script>
