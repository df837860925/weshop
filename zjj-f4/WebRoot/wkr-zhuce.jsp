<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.01Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
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

		<meta charset="UTF-8">
		<title></title>
		<meta name="viewport" content="witdh=device-witdh,initial-scale=1"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/daohang.css"/>
		<style>
			.zhuce{
				position: absolute;
				top: 0px;
				height: 200%;width: 100%;
				background: #000000;
				visibility: hidden;
				background: rgba(92,92,92,0.7) none repeat scroll !important;
				z-index: 105;
			}
			.zhuce1{
				position: absolute;
				padding: 70px 0;width: 100%;
			}
			.zhuce2{
				position: relative;
				text-align: center;width: 100%;
			}
			.zhuce3{
				display: inline-block;
				position: relative;
				margin: 0 15px;
				width: auto;
				background: white;
			}
			.zhuce4a{
				display: inline-block;
				position: relative;
				padding: 20px;
				width: auto;
				min-width: 290px;
				background: #ffffff;
			}
			.zhuce5{
				width: auto;
				padding: 0;
			}
			.zhuce5li{
				display: inline-block;
				position: absolute;
				list-style-type: none;
				font-size: 46px;
				margin: 12px 0 0 0;
				width: 16px;height: 16px;
				color: #999;
				line-height: 0.5;
				font-weight: 100;
				top: 6px;right: 27px;
				cursor: pointer;
			}
			.zhuce6{
				position: relative;
				padding-bottom: 25px;
				border-bottom: 1px solid #E7E7E7;;
				margin-top: 20px;
				text-align: center;
				line-height: 18px;
				letter-spacing: 1.5px;
				font-size: 18px;
			}
			.zhuce7{
				position: absolute;
				display: inline-block;
				font-family: "svg-iconfont" !important;
				font-size: 16px;
				width: 10px;
    			height: 10px;
    			text-align: center;
    			left: 50%;
    			bottom: -5px;
    			color: #999;
    			line-height: 0.5;
    			margin-left: -5px;
			}
			.zhuce8{
				padding-top: 30px;
			}
			.zhuce9{
				
			}
			.form1{
				text-align: left;
			}
			.formdiv{
				margin-bottom: 25px;
			}
			label{
				display: block;
				font-size: 12px;
				margin-bottom: 10px;
			}
			img{
				width: 15px;
			}
			.shurukuang1{
				padding: 0 12px;
				height: 37px;
				width: 100%;
				box-sizing: border-box;
				font-size: 12px;
				border: 1px solid transparent;
				background-color: #f5f5f5;
			}
			.shurukuang2{
				padding: 0 12px;
				height: 37px;
				width: calc(100% - 93px);
				box-sizing: border-box;
				font-size: 12px;
				border: 1px solid transparent;
				background-color: #f5f5f5;
			}
			.shurukuang3{
				padding: 0 12px;
				height: 37px;
				width: calc(100% - 93px);
				box-sizing: border-box;
				font-size: 12px;
				border: 1px solid transparent;
				background-color: #f5f5f5;
			}
			.shurukuang4{
				display: inline-block;
				padding: 0 12px;
				height: 37px;
				width: 100%;
				box-sizing: border-box;
				font-size: 12px;
				border: 1px solid transparent;
				background-color: #f5f5f5;
			}
			.shurukuang5{
				display: inline-flex;
				position: relative;
				top: -37px;
				padding: 0 12px;
				height: 37px;
				width: 286.375px;
				box-sizing: border-box;
				font-size: 12px;
				border: 1px solid transparent;
				background-color: #f5f5f5;
				visibility: hidden;
			}
			.shurukuang6{
				padding: 0 12px;
				height: 37px;
				width: 100%;
				box-sizing: border-box;
				font-size: 12px;
				border: 1px solid transparent;
				background-color: #f5f5f5;
			}
			.shurukuang7{
				padding: 0 12px;
				height: 37px;
				width: 100%;
				box-sizing: border-box;
				font-size: 12px;
				border: 1px solid transparent;
				background-color: #f5f5f5;
			}
			.shurukuang8{
				padding: 0 12px;
				height: 37px;
				width: 100%;
				box-sizing: border-box;
				font-size: 12px;
				border: 1px solid transparent;
				background-color: #f5f5f5;
			}
			.yanzhengma{
				font-size: 12px;
				margin-left: 11px;
				text-decoration: underline;
				color: #000000;
			}
			.tijiao{
				display: inline-block;
				background: #1B1B1B;
			    border: 2px solid #1B1B1B;
			    color: #E5DFD9;
			    height: 40px;
			    width: 100%;
			    min-width: 128px;
			    text-align: center;
			    font-size: 12px;
			    line-height: 36px;
			    text-decoration: none;
			}
			.cuowu{
				border-color: #D24E55;
				background: #F5DBDC;
			    border: 1px solid #D24E55;
			    display: inline;
			}
			#tuyanzheng{
				display: inline-block;
			    width: 78px;
			    height: 40px;
			}
			#tuyanzheng img{
				width: 90px;
				height: 37px;
			}
			span{
				font-size: 12px;
			}
			.denglu{
				position: relative;
				top: 113.2px;
			}
			.denglu1{
				max-width: 770px;
				padding-bottom: 26px;
				margin: 0 auto;
			}
			.denglu2{
				padding: 60px 0 19px;
				border-bottom: 1px solid #DBD8D6;
				text-align: center;
			}
			.denglu3{
				padding: 44px 22px 15px 55px;
				max-width: 770px;
				margin: 0 auto;
				margin-bottom: 160px;
			}
			.denglu4{
				display: block;
				width: 41%;
				height: 100px;
    			float: left;
			}
			.denglu5{
				display: block;
				width: 50%;
				height: 100px;
				padding-left: 91px;
    			/*padding-top: 1px;*/
    			float: left;
			}
			.denglu6{
				
			}
			.denglu7{
				margin-top: 17px;
			}
			.denglu8{
				margin-top: 23px;
			}
			.denglu9{
				margin-top: 40px;
			}
			.denglu10{
				margin-top: 10px;
				text-align: center;!important;
			}
			.denglubiaoqian{
				display: inline-block;
				line-height: 37px;
				width: 100%;
				letter-spacing: 2px;
				text-align: center;
				background: #1B1B1B;
			    border: 2px solid #1B1B1B;
			    color: #E5DFD9;
			    zoom: 1;
		        padding: 0px 5px;
			}
			.fuxuani{
				width: 16px;
			    height: 16px;
			    position: absolute;
			    background-color: #ffffff;
    			border: 1px solid #ffffff;
    			left: 0;
			}
			a{
				cursor: pointer;
			}
			canvas{
				    height: 120%;
				    top: 230px;
				    background: #ffffff;
				    width: 1px;
				    position: absolute;
				    left: 50%;
				    margin-left: -1px;
			}
			li{
				margin-top: 20px;
				font-size: 12px;
			}
			.zhucebiaoqian{
				display: inline-block;
				max-width: 240px;
			    width: 100%;height: 40px;
			    text-align: center;
			    background: #E7E7E7;
			    border: 2px solid #1B1B1B;
    			color: #1B1B1B;
    			padding: 7px 5px;
			}
			#ybc_shoping a {
			cursor: pointer;
		}
		</style>
	</head>
	
	
	<!--<div style="height: 200px;width: 500px;background: red;"></div>-->
	<input type="hidden" value="${msg}" id="loginmsg"/>
	<body style="background: #e7e7e7;">
		<!--导航栏-->
		<div class="container " id="ybc_mynav" style="z-index: 100;">
			<div class="row" >
				<div class="col-lg-4 col-lg-offset-4 text-center">
					<h1 id="logo" style="margin-bottom: 0px;">G U C C I</h1>
				</div>
				<div class="col-lg-4  text-right " id="ybc_shoping">
						<c:if test="${userlogininfo!=null}">
							<a href="user.do" class="login" id="login"><span class="glyphicon glyphicon-user  id="welcome"></span><span>${userlogininfo.username }</span></a>
							<a href="outline.do"><span class="glyphicon glyphicon-log-out "></span>退出</a>
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

		<!--主体-->
		<div class="denglu">
			<div class="denglu1">
				<div class="denglu2">
					<h2>登陆</h2>
					
				</div>
				<div style="position: relative;bottom: 10px;left: 49%;">◈</div>
			</div>
			<div class="denglu3">
				<div class="denglu4">
				<form action="login.do"id="loginid" method="post">
					<input type="hidden" value="${param.goods_id}" name="goods_id">
					<div class="denglu6">
						<label>手机号码/电子邮箱</label>
						<input class="shurukuang7" placeholder="请输入电子邮箱或手机号" name="loginShoujihao"/>
					</div>
					<div class="denglu7">
						<label>密码</label>
						<input class="shurukuang8" type="password" placeholder="请输入密码" name="loginPassword"/>
					</div>
					<div class="denglu8">
						<div>   
							<label style="cursor: pointer;position: relative;padding-left: 26px;width: 70px;">
								<i class="fuxuani"></i>
								<input class="fuxuankuang" type="checkbox" style="display: none;"/>
								<span>记住我</span>
							</label>
						</div>
					</div>
					<div class="denglu9">
						<div>
							<a class="denglubiaoqian"onclick="document:loginid.submit()">登录</a>
						</div>
					</div>
					<div class="denglu10">
						<div>
							<a style="font-size: 12px;color: #999999;">忘记密码？</a>
						</div>
					</div>
				</form>
				</div>
				<canvas ></canvas>
				<div class="denglu5">
					<div>
						<div>
							<h3>没有账号？</h3>
						</div>
						<div>
							<p style="margin-top: 30px;margin-bottom: 10px;">拥有古驰账号您将获得以下权利：</p>
							<ul style="list-style: circle;">
								<li style="list-style: circle;">保存您的心愿清单</li>
								<li style="list-style: circle;">个性化您的推荐内容</li>
								<li style="list-style: circle;">订单寄送追踪及退换货管理</li>
							</ul>
							<div style="margin-top: 30px;">
								<a class="zhucebiaoqian">创建账户</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!--注册页面-->
		<div class="zhuce">
			<div class="zhuce1">
				<div class="zhuce2">
					<div class="zhuce3">
						<div class="zhuce4a">
							<div class="zhuce5">
								<div class="zhuce6">
									创建您的账户
									<div class="zhuce7">
										◈
									</div>
								</div>
							<li class="zhuce5li">×</li>
							<div class="zhuce8">
								<div class="zhuce9">
									<form class="form1"action="zhuce.do"id="zhuceid"method="post">
										<div class="formdiv">
											<div>
												<label>
													手机号码
												</label>
												<div>
													<input class="shurukuang1" type="text" placeholder="请输入11位手机号码"name="zhucePhone"/>
												</div>
											</div>
										</div>
										<div class="formdiv">
											<div>
												<label>
													图形验证码
												</label>
												<div>
													<input class="shurukuang2" type="text" placeholder="请输入图中所示验证码" name="yanZhengma"/>
													<a id="tuyanzheng" style="cursor: pointer; display: inline-flex;margin-left: 11px;position: relative;top:15px">
														<img src="img.do"onclick="flushCode(this)"/>
													</a>
												</div>
											</div>
										</div>
										<div class="formdiv">
											<div>
												<label>
													手机验证码
												</label>
												<div>
													<input class="shurukuang3" type="text" placeholder="请输入短信验证码" name="shoujiYanzhengma"/>
													<a  class="yanzhengma"> 发送验证码</a>
												</div>
											</div>
										</div>
										<div class="formdiv">
											<div>
												<label>
													密码
												</label>
												<div style="width:286.38px;height:37px">
													<input class="shurukuang4" type="password" placeholder="至少六个字符，区分大小写" id="mm"name="zhucePassword"/>
													<input class="shurukuang5" type="text" placeholder="至少六个字符，区分大小写"/>
													<a class="yanjing" style="cursor: pointer; position: relative;left: 255px;top: -65px;font-size: 16px;">∅</a>
												</div>
											</div>
										</div>
										<div class="formdiv">
											<input id="youjiankuang" type="checkbox" style="position: relative;top: 3.2px;" />
											<span id="youjianwenzi" style="font-size: 12px;">我愿意接收Gucci邮件获取新款推荐及更多内容</span>
										</div>
										<div class="formdiv">
											<input type="checkbox" style="position: relative;top: 3.2px;" />
											<span style="font-size: 12px;">
												创建帐号代表您已接受Gucci的<a  style="text-decoration: underline;color: #000000;">隐私政策</a>和<a  style="text-decoration: underline;color: #000000;">销售条款</a>
											</span>
										</div>
										<div style="margin-top: 15px;margin-bottom: 20px;">
											<div>
												<a  class="tijiao"onclick="document:zhuceid.submit()">创建账户</a>
											</div>
										</div>
									</form>
								</div>
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
<script src="js/jquery-1.8.3.min.js"></script>
<script>
	$('.zhucebiaoqian').click(function(){
		$('.zhuce').css('visibility','visible');
//		huantupian();
		$('.shurukuang4').css('visibility','visible');
		$('#yzmId').attr('src','img.do');
		
		
	})
//=====================================================请求服务器
/*
//==========注册
$(".tijiao").click(function(){
	console.log("!!!!!!!!!!")
	
	var mima= $("#mm").val();
		var zhanghao=$("#zh").val();
		if(!zhanghao)
		{
			alert("请输入您的邮箱地址");
			return
		}
		send(zhanghao,mima);
})
  function send(x,y){
  	
  	$.post("http://wjian.top/shop/api_user.php",{
  		status:"register",
  		username:x,
  		password:y
  	},function(event){
  		var obj=JSON.parse(event);
  		console.log(obj);
  		if(obj.code!=0)
  		{  alert("你的信息输入有误")
  			return
  		}
  		else{
  			alert("注册成功！您的账号为："+x+ " ~~完成登入即可继续购物")
  			$(".zhuce").hide();
  		}
  		
  	})
  }
  //=================登录
  $(".denglubiaoqian").click(function(){
  var zh=	$(".shurukuang7").val();
  var mm=$(".shurukuang8").val();
    login(zh,mm);
  })
	function login(x,y){
  	
  	$.post("http://wjian.top/shop/api_user.php",{
  		status:"login",
  		username:x,
  		password:y
  	},function(event){
  		var obj=JSON.parse(event);
  		console.log(obj);
  		if(obj.code!=0)
  		{  if(obj.code==1001)
  			{alert("密码错误，密码至少6个字符");}
  			if(obj.code==2002)
  			{alert("用户不存在，请重新输入");}
  			return
  		}
  		else{
  			alert("登入成功");
  			localStorage.setItem("username",obj.data.username);
  			localStorage.setItem("token",obj.data.token);
  			read();
  			var pipei=geturlval("gc")
  			
  			if(pipei=="1"){
  				$(location).attr("href","main_frame.html");
  			}
  			else
  			{var pipei2=geturlval("goods_id");}
  			if(pipei2)
  			{
  				$(location).attr("href","kqx-xiangqing.jsp?goods_id="+pipei2);
  			}
  			else{
  				if(pipei==2)
  				{
			  
  					$(location).attr("href","fenlei.jsp");
  				}
  				console.log("不跳转页面");
  			}
  		}
  		
  	})
  }
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
function  geturlval(content){
//	var content=null;
	var jieshou= window.location.search.substring(1);
	var shuju=new RegExp("(^|&)"+content+"=([^&]*)(&|$)");
	var result=jieshou.match(shuju);
	if(result==null)
	{return;}
	else return result[2];
	}

//===================按钮
$("#login").click(function(){
		$(location).attr("href","wkr-zhuce.jsp?gc=1");
	})
	$("#shop_cart").click(function(){
		var token=localStorage.getItem("token");
		if(token)
		{  
			$(location).attr("href","ybc-gouwudai.jsp");
		}
		else{
			if(confirm("您还没有登入，点击确定将跳转到登入页面"))
			{
				$(location).attr("href","wkr-zhuce.jsp?gc=1");
			}
		}
	
	})
//========================================	
	*/
	
	
//	正则
	var re1 = /^1[3456789]\d{9}$/g;
	var re2 = /^[A-z0-9]{6,21}$/;
	var re3 = /^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/g;
	
//	手机号
	var tishi1 = null;
	$('.shurukuang1').focusout(function(){
		if ($(this).val().length<1) {
			if (tishi1!=null) {
				tishi1.remove();
				tishi1 = null;
			}
			$(this).removeClass('cuowu');
			return;
		}
		if (!re1.test($(this).val())) {
			if (tishi1 == null) {
				tishi1 = $(this).after($('<div><span>请输入手机号码</span></div>')).siblings('div');
			}
			console.log(tishi1);
			tishi1.css('color','red');
			$(this).addClass('cuowu');
		}
		else{
			if (tishi1!=null) {
				tishi1.remove();
				tishi1 = null;
			}
			$(this).removeClass('cuowu');
		}
		re1.lastIndex = 0;
	})
	
//	密码
	var yanjing = 1;
	var tishi4 = null;
	$('.shurukuang4').focusout(function(){
		$('.shurukuang5').val($(this).val());
		if ($(this).val().length<1) {
			if (tishi4!=null) {
				tishi4.remove();
				tishi4 = null
			}
			$(this).removeClass('cuowu');
			return;
		}
		if (!re2.test($(this).val())) {
			console.log(tishi4);
			if (tishi4 == null) {
				tishi4 = $(this).parent().after($('<div><span>至少6个字符含数字大小写字母</span></div>')).siblings('div');
			}
			console.log(tishi4);
			tishi4.css('color','red');
			if (tishi4==null) {
				$(this).addClass('cuowu');
			}
		}
		else{
			if (tishi4!=null) {
				tishi4.remove();
				tishi4 = null;
			}
			$(this).removeClass('cuowu');
		}
		re2.lastIndex = 0;
	})
	$('.shurukuang5').focusout(function(){
		$('.shurukuang4').val($(this).val());
		if ($(this).val().length<1) {
			if (tishi4!=null) {
				tishi4.remove();
				tishi4 = null;
			}
			$(this).removeClass('cuowu');
			return;
		}
		if (!re2.test($(this).val())) {
			if (tishi4 == null) {
				tishi4 = $(this).parent().after($('<div><span>至少6个字符含数字大小写字母</span></div>')).siblings('div');
			}
			console.log(tishi4);
			tishi4.css('color','red');
			if (tishi4==null) {
				$(this).addClass('cuowu');
			}
			
		}
		else{
			if (tishi4!=null) {
				tishi4.remove();
				tishi4 = null;
			}
			$(this).removeClass('cuowu');
		}
		re2.lastIndex = 0;
	})
	$('.yanjing').click(function(){
		yanjing = -yanjing;
		if (yanjing>0) {
			$('.shurukuang4').css('visibility','hidden');
			$('.shurukuang5').css('visibility','visible');
		} else{
			$('.shurukuang4').css('visibility','visible');
			$('.shurukuang5').css('visibility','hidden');
		}
		
	})
	
//	邮件
	var youxiangdiv = null;
	var tishi3 = null;
	$('#youjiankuang').click(function(){
		if($('#youjiankuang').is(':checked')){
			youxiangdiv = $(this).parent().after('<div class="formdiv"><label>邮箱</label><div><input id="zh" class="shurukuang6" type="text" placeholder="请输入电子邮箱地址" name="zhuceEmail"/></div></div>').siblings('div').eq(4);
			console.log(youxiangdiv);
		}
		else{
			console.log('移除');
			youxiangdiv.remove();
		}
		youxiangdiv.children().eq(1).children().focusout(function(){
			if ($(this).val().length<1) {
				if (tishi3!=null) {
					tishi3.remove();
					tishi3 = null;
				}
				$(this).removeClass('cuowu');
				return;
			}
			if (!re3.test($(this).val())) {
				if (tishi3 == null) {
					tishi3 = $(this).after($('<div><span>请输入邮箱</span></div>')).siblings('div');
				}
				console.log(tishi3);
				tishi3.css('color','red');
				$(this).addClass('cuowu');
			}
			else{
				if (tishi3!=null) {
					tishi3.remove();
					tishi3 = null;
				}
				$(this).removeClass('cuowu');
			}
			re3.lastIndex = 0;
		})
	})
	

	//验证码和验证图片
		function flushCode(obj){
			obj.src = "img.do?id="+new Date().getTime();
		}
	/*
//	随机
	var suiji = function(){
		var number = Math.random();
		number = Math.ceil(number*36);
		return number;
	}
	
	//	验证图片
	var zimushuzi = null;
	var zifuchuan = '';	
	var huantupian = function(){
		zifuchuan = '';
		$('#tuyanzheng img').each(function(x){
			zimushuzi = suiji();
			if(zimushuzi>10){
				zimushuzi = String.fromCharCode(zimushuzi+86);
			}
			else{
				zimushuzi -= 1;
			}
			$('#tuyanzheng img').eq(x).attr('src','images/'+zimushuzi+'.png');
			zifuchuan += zimushuzi;
			console.log(zifuchuan);
		})
	}
	$('#tuyanzheng').click(function(){
		huantupian();
	})
	var tishi2 = null;
	$('.shurukuang2').focusout(function(){
		if ($(this).val().length<1) {
			if (tishi2!=null) {
				tishi2.remove();
			}
			$(this).removeClass('cuowu');
			return;
		}
		if (zifuchuan != $(this).val()) {
			if (tishi2 == null) {
				tishi2 = $(this).after($('<div><span>验证码错误</span></div>')).siblings('div');
			}
			console.log(tishi2);
			tishi2.css('color','red');
			$(this).addClass('cuowu');
		}
		else{
			if (tishi2!=null) {
				tishi2.remove();
			}
			$(this).removeClass('cuowu');
		}
	})
	*/
	
//	记住账号复选框
	$('.fuxuankuang').parent().click(function(){
		if($('.fuxuankuang').is(':checked')){
			$('.fuxuani').text('✓');
		}
		else{
			$('.fuxuani').text('');
		}
	})
	
//	退出
	$('.zhuce5li').click(function(){
		$('.zhuce').css('visibility','hidden');
		$('.shurukuang4').css('visibility','hidden');
		$('.shurukuang5').css('visibility','hidden');
	})
	
//	导航栏
	$(document).scroll(function(){
		if($(document).scrollTop()>60){
			$('#logo').slideUp(500);
			$('#ybc_mynav').css('background','#1b1b1b');
		}else{
			$('#logo').slideDown(500);
		}
	})
	$('#ybc_mynav').mouseenter(function(){
		$('#ybc_mynav').css('background','#1b1b1b')
	})
	$('#ybc_mynav').mouseleave(function(){
		if($(document).scrollTop()>60){
			return;
		}
	})
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
	//================单态登录的提示
	var msg=$('#loginmsg').val();
	if(msg!=''){
		if(confirm(msg+",请从重新"))
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
</html>
