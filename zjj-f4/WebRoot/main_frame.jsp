<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.01Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main_frame.jsp' starting page</title>
    
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
		<link rel="stylesheet" type="text/css" href="css/1.css"/>
		<link rel="stylesheet" type="text/css" href="css/daohang.css"/>
		<link rel="stylesheet" type="text/css" href="css/animate.css"/>
		<!--<link rel="stylesheet" type="text/css" href="css/王凯睿.css"/>-->
		<style type="text/css">
			
			
			
			.lunbao{
				
				height: 762px;
				width: 100%;
				/*border: 1px red solid;*/
				
			}
			.lunbao ul{
				float: left;
			}
			.DF_zhedang_left {
				background: black;
				opacity: 0.4;
				width: 8.3%;
				height: 100%;
				position: absolute;
				top: 0px;
				left: 0px;
			}
			.DF_zhedang_left img
			{   
				width: 30px;
				height: 60px;
				position: absolute;
				left: 30%;
				top: 45%;
			}
			.DF_zhedang_right img
			{   
				width: 30px;
				height: 60px;
				position: absolute;
				left: 30%;
				top: 45%;
			}
			.DF_zhedang_right {
				background: black;
				opacity: 0.4;
				width: 8.3%;
				height: 100%;
				position: absolute;
				top: 0px;
				right: 0px;
			}
			@media only screen and (min-width:1200 ) {
				
			}
			.sport {
				margin-top:120px ;
				padding-top:40px ;
				display: inline-block;
				background: white;
				
			}
			.sport a {
				color: black;
			}
			.sport_box{
				background-color: #E7E7E7;
			}
			.sport_btn {
				display: inline-block;
				padding-top: 10px;
				font-size: ;
				color: #e5dfd9;
				background-color:#1b1b1b;
				width: 168px;
				height: 45px;
			}
			.sport_btn:hover{
				background: #444;
				color: white;
				list-style: none;
				text-decoration: none;
			}
			.chunxia{
			background: #E7E7E7;
			}
			
			.chunxia>#chunxia_heart {
				width: 100%;
				height: 1000px;
			
			}
			.chunxia>#chunxia_heart img{
				width: 100%;
				
				
			}
			.bao {
				margin-top:120px ;
				padding-top:40px ;
				display: inline-block;
				background: white;
			}
	 
           .bao a {
				color: black;
			}
			#chunxia_heart {
				position: relative;
			}
			
			#chunxia_heart #tag {
				background: white;
				width: 178px;
				height: 309px;
				position: absolute;
				left: 50%;margin-left:-90px ;
				top: 50%;margin-top: -155px;
			}
			#chunxia_heart #tag a {
				display: inline-block;
				color: black;
				margin: 20px 10px;
				
			}
			#chunxia_heart #tag a:hover {
				color: black;
				text-decoration: none;
			}
			.small_img {
				margin-bottom: 100px;
			}
			.xinshang {
				margin: 40px 0px; 
				display: inline-block;
				padding-top: 10px;
				font-size: ;
				color: #e5dfd9;
				background-color:#1b1b1b;
				width: 168px;
				height: 45px;
			}
			.xinshang:hover{
				background: #444;
				color: white;
				list-style: none;
				text-decoration: none;
			}
			#guchi {
			margin: 2px 0px;
				background: #E7E7E7;
			}
			.liebiao_box{
				position: relative;
				/*border: 2px black solid;*/
				
			}
			.liebiao_box ul li{
				list-style: none;
			}
			.liebiao_box img{
					
				width: 385px;
				
			}
			.liebiao{
				width: 100%;
				background: white;
				position: absolute;
				display: none;
				background-color: #f3f3f3;
				border-bottom: white 4px solid;
			
				left: 0px;
				top: 100%;
				z-index: 10000;
			}
			
			
			.liebiao span {
				font-size: 16px;
				position: absolute;
				right: 0px; top: 5px;
			}
			.liebiao li p {
				font-size: 16px;
				color: #262626;
			}
			#product {
				background: #E7E7E7;
				padding: 30px 0px;
			}
			#big_liebao{
				padding: 0px;
				/*overflow: hidden;*/
				border: 2px white solid;
				
				
			}
			.glyphicon-eye-open{
				float: right;
			}
			#btn_btnbox{
				margin: 50px 0px;
			}
			#btn_next {
				
			}
			#btn_next{
				margin: 40px 0px; 
				display: inline-block;
				padding-top: 5px;
				font-size: ;
				color: #e5dfd9;
				background-color:#1b1b1b;
				width: 168px;
				height: 45px;
			}
			#btn_next:hover{
				background: #444;
				color: white;
				list-style: none;
				text-decoration: none;
			}
			#btn_prev{
				margin: 40px 0px; 
				display: inline-block;
				padding-top: 5px;
				font-size: ;
				color: #e5dfd9;
				background-color:#1b1b1b;
				width: 168px;
				height: 45px;
			}
			#btn_prev:hover{
				background: #444;
				color: white;
				list-style: none;
				text-decoration: none;
			}
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
			.li1 {
				position: relative;
			}
			#ul1 li h1{  
				font-family: "宋体";
				font-size: 75px;
				color: white;
				position: absolute;
				left:33%;top:40%;
				font-weight:0;
			}
			#ul1 li a.a_btn{
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
			#ul1 li a.a_btn:hover{
				background: #444;
				color: white;
				list-style: none;
				text-decoration: none;
			}
			.a_top {
				width: 55px;
				height: 50px;
				position: fixed;
				left: 90%;
				top: 80%;
                text-align: center;
                font-size: 25px;
                padding-top: 10px;
				color: #e5dfd9;
				background-color:#1b1b1b;
				
			}
			.a_top:hover{
				background: #444;
				color: white;
				list-style: none;
				text-decoration: none;
			}
			.login{
				cursor: pointer;
			}
			.shop_cart{
				cursor: pointer;
			}
			
		</style>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<meta name="viewport" content='width=device-width,initial-scale=1'>
	</head>
	<body>
		<!--导航-->
		<section>
			<div class="container " id="ybc_mynav">
				<div class="row" >
					<div class="col-lg-4 col-lg-offset-4 text-center">
						<h1 id="logo" style="margin-bottom: 0px;">G U C C I</h1>
					</div>
					<div class="col-lg-4  text-right " id="ybc_shoping">
						<c:if test="${userlogininfo!=null}">
							<a href="user.do" class="login" id="login"><span class="glyphicon glyphicon-user  id="welcome"></span><span>${userlogininfo.username }</span></a>
							<a href="javascript:;"  id="outline"><span class="glyphicon glyphicon-log-out "></span>退出</a>
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
					<div class="col-md-6  navbar" id="ybc_main_nav">
							<ul class="nav  nav-justified" id="nav_a" >
								<li><a href="">全新资讯<p class="clearblock"><span  class="caret"></span></p></a></li>
								<li><a href="">女士<p class="clearblock"><span  class="caret"></span></p></a></li>
								<li><a href="">童装<p class="clearblock"><span  class="caret"></span></p></a></li>
								<li><a href="">珠宝和腕<p class="clearblock"><span  class="caret"></span></p></a></li>
								<li><a href="">家饰<p class="clearblock"><span  class="caret"></span></p></a></li>
								<li><a href="">礼品<p class="clearblock"><span  class="caret"></span></p></a></li>
								<li><a href="">guchiGushi<p class="clearblock"><span  class="caret"></span></p></a></li>
							</ul>
					</div>
							<div class="container fuji">
								<div class="xialakuag" >
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
		</section>
	  <!--轮播图-->
		<div class="lunbao " id="box">
			<ul id="ul1">
			    <li class="li1"><a href=""><img src="img/frist-xiangmu/15713959146484022_content_HeroBigStandard_1600x760_1562746506_HeroBigStandard_S93-FS-HERO-03_001_Default.jpg"/></a><h1>GG&nbsp;MARMNT&nbsp;系列</h1> 
					<a class="a_btn" href="">点击购买</a></li>
				<li class="li1"><a href=""><img src="img/frist-xiangmu/1571644619981107_content_HeroBigStandard_1600x760_1571233504_HeroBigStandard_S01-FS-GGMarmont2-01_001_Default.jpg"/></a> <h1>GG&nbsp;MARMNT&nbsp;系列</h1> 
					<a class="a_btn" href="">点击购买</a></li> 
				<li class="li1"><a href=""><img src="img/frist-xiangmu/15713959146482377_content_HeroBigStandard_1600x760_1562746512_HeroBigStandard_S93-FS-HERO-23_001_Default.jpg"/></a><h1 style="left: 40%;">2019秋冬</h1> 
					<a class="a_btn" href="">点击购买</a></li>
				<li class="li1"><a href=""><img src="img/frist-xiangmu/15713959146484022_content_HeroBigStandard_1600x760_1562746506_HeroBigStandard_S93-FS-HERO-03_001_Default.jpg"/></a><h1 style="left: 34%;">URLTRAPACE系列</h1> 
					<a class="a_btn" href="">点击购买</a></li>
			    <li class="li1"><a href=""><img src="img/frist-xiangmu/1571644619981107_content_HeroBigStandard_1600x760_1571233504_HeroBigStandard_S01-FS-GGMarmont2-01_001_Default.jpg"/></a><h1>GG&nbsp;MARMNT&nbsp;系列</h1> 
					<a class="a_btn" href="">点击购买</a></li>

			</ul>
			
			<div id="box-box">
				
			
			<span id="go">
				
			</span>
			<span id="">
				
			</span>
			<span id="">
				
			</span>
			</div>
			<div class="DF_zhedang_left" id="prev">
				<img src="img/D2Csheji_03.png"/>
			</div>
			<div class="DF_zhedang_right" id="next">
				<img src="img/D2Csheji_05.png"/>
			</div>
		</div>
	   <!--主体-->
	    <!--鞋子-->
	    <section class="sport_box">
	    	<div class="container">
	    		<div class="row ">
	    		   <div class="col-md-7 col-md-offset-2 col-xs-7 ">
	    		   	<a style="display: inline-block;" href="#"><img src="img/15713959146483102_content_DarkGray_ProductPush_Standard_700x700_1569319203_ProductPush_5923451LH107665_001_Light.png"/></a>
	    		   </div>
	    		    <div class="sport text-center col-md-2 col-sm-2 col-sm-2  hidden-xs" id="sport_desc">
	    		     	<a href=""><img src="img/frist-xiangmu/singleMianban/1571395914648180_content_LightGray_Vignette_Standard_80x80_1569319204_Vignette_5923451LH107665_001_Light.jpg"/></a>
	    		        <a href=""><p style="font-size: 20px; margin-top: 20px;">运动鞋</p></a>
	    		        <a href=""><p style="color: #666; font-style: italic;font-size:12px  ;">低帮造型，混搭多种皮革和织物</p></a>
	    		        <a href=""><p>更多></p></a>
	    		     </div>
	    		   
	    		</div>
	    		<div class="row">
	    			<div class="col-md-12  col-sm-12 text-center" style="margin-bottom: 180px;" >
	    		   	  <p>运动鞋</p>
	    		   	  <h1 style="margin-top: 0px;">Ultrapace系列男士运动鞋</h1>
	    		   	  <a class="sport_btn" href="" style="margin-top: 30px;">点击购买</a>
	    		   </div>
	    		</div>
	    	</div>
	    </section>
	    <!--2020春夏-->
	    <section class="chunxia">
	       <div id="chunxia_heart">
              <a href=""><img   src="img/15713959146482583_content_HomepageVideoBackgroundStandard_1300x758_1569177911_HomepageVideoBackgroundStandard_S01-FS-Lineup_001_Default.png"/></a>
             <div id="tag" class="text-center">
             	<a href=""><h2 style="color:#666;">2020春夏</h2></a>
             	<a href="" style="color: #666; font-style: italic;font-size:12px  ;"><p>亚力山卓·米开理倾心打造的2020春夏系列。</p></a>
             	<a href=""><p>阅读更多&nbsp;></p></a>
             </div>
	       </div>

	        <div class="container " id="img-2020">
	        	<div class="row text-center">
	        		<div class="col-md-7 col-md-push-2 ">
	        			<a href=""><img src="img/15713959146481161_content_DarkGray_ProductPush_Standard_700x700_1565189103_ProductPush_5894791J70G1000_001_Light.png"/></a>
	        		</div>
	        		<div class="col-md-2 col-md-push-2  bao text-center" id="bao_desc">
	        			<a href=""><img src="img/frist-xiangmu/singleMianban/15713959146486699_content_LightGray_Vignette_Standard_80x80_1564754406_Vignette_5894791J70G1000_001_Light.jpg"/></a>
	        			<a href=""><p style="font-size: 20px; margin-top: 20px;">Sylvie</p></a>
	        			<a href=""><p style="color: #666; font-style: italic;font-size:12px  ;">别致包链采用收窄设计，呈现别致新意</p></a>
	        			<a href=""><p>更多></p></a>
	        		</div>
	        		
	        	</div>
	        	<div class="row">
	        		
	        		  <div class="col-md-12  col-sm-12 text-center" style="margin-bottom: 180px; margin-left: -20px;">
	    		   	  <p >手袋</p>
	    		   	  <h1 style="margin-top: 0px;">Sylvie 1969系列漆皮迷你手提包</h1>
	    		   	  <a class="sport_btn" href="" style="margin-top: 30px;">点击购买</a>
	    		   </div>
	        			
	        	
	        	</div>
	        </div>
	    	
	    </section>
        <!--guchiGushi-->
        <section id="guchi">
        	<div class="container">
        		<div class="row text-center" style="margin-top: 60px;">
        			<div class="col-md-4 col-md-offset-4 ">
        				<h1 style="letter-spacing: 2px;">古锋故事</h1>
        			</div>
        		</div>
        		<div class="row text-center" style="margin-bottom: 40px;">
        			<div class="col-md-2 col-md-offset-5 ">
        				<hr style="border: grey 1px solid;">
        			</div>
        		</div>
        		<div class="row">
        			<div class="col-md-4">
        				<div class="text-center small_img wow fadeInLeft animated" data-wow-duration="2s" style="visibility: visible; animation-duration: 2s; animation-name: fadeInLeft;">
        					<a href=""><img src="img/frist-xiangmu/guchiGushi/15713959146484657_content_StyleNewsSingle_Standard_340x202_1571041806_StyleNewsSingle_S01-CRUISE-HP-TIMETRAVELER-1_001_Default.jpg"/></a>      
        					<h3 style="margin-top: 45px;">GUCCI灵感地图</h3>
        					<a href=""><p style="color: #000000;">时间旅人-李宇春 &nbsp;></p></a>
        				</div>
        				<div class="text-center small_img wow fadeInRight animated" data-wow-duration="2s" style="visibility: visible; animation-duration: 2s; animation-name: fadeInLeft;">
        					<a href=""><img src="img/frist-xiangmu/guchiGushi/15713959146485979_content_StyleNewsSingle_Standard_340x202_1570791604_StyleNewsSingle_Daniela_001_Default.jpg"/></a>
        					<h3 style="margin-top: 45px;">Daniela Vega演绎《演出者》</h3>
        					<a href=""><p style="color: #000000;">全新短片&nbsp;> </p></a>
        				</div>
        			</div>
        			
        			<div class="col-md-4 text-center center_img wow fadeInUp animated" data-wow-duration="2s" style="visibility: visible; animation-duration: 2s; animation-name: fadeInUp;" >
        				<a href=""><img src="img/frist-xiangmu/guchiGushi/15713959146487518_content_StyleNewsDoubleVertical_Standard_340x602_1569177911_StyleNewsDoubleVertical_S01-FS-Gallery_001_Default.jpg"/></a>
        			<h3 style="margin-top: 45px;">2020春夏</h3>
        			<a href=""><p style="color: #000000;">男女装系列&nbsp;></p></a>
        			<a class="xinshang" href="">欣赏更多故事</a>
        			</div>
        			
        			<div class="col-md-4">
        			<div class="text-center small_img wow fadeInRight animated" data-wow-duration="2s" style="visibility: visible; animation-duration: 2s; animation-name: fadeInRight;" >
        				<a href=""><img src="img/frist-xiangmu/guchiGushi/15717078825699848_content_StyleNewsSingle_Standard_340x202_1571653810_StyleNewsSingle_Florence-tencent_001_Default.jpg"/></a>                         
        				<h3 style="margin-top: 45px;">灵感来源</h3>
        				<a href=""><p style="color: #000000;">阅读更多&nbsp;></p></a>
        			</div>
        			<div class="text-center small_img wow fadeInRight animated" data-wow-duration="2s" style="visibility: visible; animation-duration: 2s; animation-name: fadeInRight;">
        				<a href=""><img src="img/frist-xiangmu/guchiGushi/15717078825694632_content_StyleNewsSingle_Standard_340x202_1571036403_StyleNewsSingle_S01-BEAUTYLOOKS-1_001_Default.jpg"/></a>                 
        				<h3 style="margin-top: 45px;">2020春夏妆容造型</h3>
        				<a href=""><p style="color: #000000;">细节&nbsp;></p></a>
        			</div>
        			</div>
        		</div>
        	</div>
        	
        </section>
	   <!--商品-->
	   <section id="product">
	     	<div class="container">
	     	   <div class="row" id="jiashuju">
	     	   	<!--<div class="col-md-4 ">
	     	   	 <div class="liebiao_box">
	     	   	 	<a href=""><img st src=""/><img src="img/15713959146481161_content_DarkGray_ProductPush_Standard_700x700_1565189103_ProductPush_5894791J70G1000_001_Light.png"/></a><ul class="liebiao">
	     	   	   		<li><p>商品名字</p></li>
	     	   	   		<li><p>价格</p></li>
	     	   	   		<li><span class="glyphicon glyphicon-eye-open">
	     	   	   			666
	     	   	   		</span></li>
	     	   	   	</ul>
	     	   	 </div>
	     	   	   	
	     	   	   
	     	   	</div>-->
	     	   	 
	     	   </div>
	     	   <div class="row" id="btn_btnbox">
	     	   	<div class="col-md-4 text-center">
	     	   		<button id="btn_prev">上一页</button>
	     	   	</div>
	     	   	<div class="col-md-4 text-center">
	     	   		<div id="">
	     	   			<p style="display: inline-block; 
				margin-top:45px;
				padding-top: 10px;
				font-size: ;
				color: #e5dfd9;
				background-color:#1b1b1b;
				width: 50px;
				height: 40px;">跳转至</p>
				
	     	   		<select name="跳转至" style="height: 40px;width: 50px;" >
	     	   			<option value="1">1</option>
	     	   			<option value="2">2</option>
	     	   			<option value="3">3</option>
	     	   			<option value="4">4</option>
	     	   			<option value="5">5</option>
	     	   			<option value="6">6</option>
	     	   			<option value="7">7</option>
	     	   			<option value="8">8</option>
	     	   			<option value="9">9</option>
	     	   			
		
	     	   		</select>
	     	   		</div>
	     	   		
	     	   	</div>
	     	   	<div class="col-md-4 text-center">
	     	   		<button id="btn_next">下一页</button>
	     	   	</div>
	     	   </div>
	     	</div>
	     	
	     	
	     </section>
	   <!--最后清单-->   
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
	
	<a class="a_top"><span class="glyphicon glyphicon-eject">
		
	</span></a>
	</body>
</html>
<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="js/wow.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/DF_JS.js" type="text/javascript" charset="utf-8"></script>
<!--<script src="js/cart.js" type="text/javascript" charset="utf-8"></script>-->
<script type="text/javascript">
	//====================================轮播======================
	
	var window_width=$(window).width();
	var window_height=$(window).height();
	var weiyi=window_width*0.752;

	$("#box>ul>li").css("width",parseInt(window_width*0.835));
	$("#box").css("height",$(window).width()*0.39);

//	              //克隆第一个属性，克隆出来的是另外一个东西，脱离了本体。
	var n=0;
var x=0;

	$(window).resize(function(){
		console.log("dsadsa");
		 window_width=$(window).width();
		 
		 $("#ul1").css("width",$("#box>ul li").length*parseInt($("#box>ul>li").eq(0).css("width"))+40000);
		$("#box>ul li").css("width",parseInt(window_width*0.835));
		img_length=parseInt($("#box>ul>li").eq(0).css("width"));
		weiyi=window_width*0.752;
		$("#box").css("height",$(window).width()*0.39);
//		nextanimate(n,x);
nextmove();
	})

console.log(weiyi);

$("#ul1").css("width",$("#box>ul li").length*parseInt($("#box>ul>li").eq(0).css("width"))+4000);
var img_length=parseInt($("#box>ul>li").eq(0).css("width"));

$("#next").click(function(){
nextmove()
});


$("#prev").click(function(){
  prevmove();
});



$("#box span").each(function (i) {
	$(this).click(function() {
		x=i;
		n=i;
		$("#ul1").animate({"left":-img_length*i-weiyi},1000);
		$("#box span").eq(x).css("opacity",1).siblings().css("opacity",0.5);
	})
})
 
 var timer=setInterval(function(){
  	nextmove();
	
 },4000)
 
 $("#box").mouseover(function(){
 	clearInterval(timer);
 	
 })
 $("#box").mouseout(function(){
 	if($("#ul1").is(":animated"))
{return};
 	
 	 timer=setInterval( function(){
 		nextmove();
	
 },4000)
 })
 
  function nextanimate(n,x){
  	if($("#ul1").is(":animated"))
{return};
 		n++;
	if(n>$("#box>ul li").length-2)
	{n=0;
	
	};
	$("#ul1").animate({"left":-img_length*n-weiyi},1000,function () {
		if(n>=$("#box>ul li").length-2)
	{console.log(weiyi);
	   $("#ul1").css("left",-weiyi);
	   n=0;
	};
	});
	//闪现
	x++;
	if(x>$("#box span").length-1)
	{x=0;
		
	}
	$("#box span").eq(x).css("opacity",1).siblings().css("opacity",0.5);
  }
 
 function nextmove(){
 	if($("#ul1").is(":animated"))
{return};
	n++;
	if(n>$("#box>ul li").length-2)
	{n=0;
	
	};
	$("#ul1").animate({"left":-img_length*n-weiyi},500,function () {
		if(n>=$("#box>ul li").length-2)
	    { console.log(weiyi);
	     $("#ul1").css("left",-weiyi);
	     n=0;
	   };
	});
	//闪现
	x++;
	if(x>$("#box span").length-1)
	{x=0;
		
	}
	$("#box span").eq(x).css("opacity",1).siblings().css("opacity",0.5);
 }


function prevmove(){
	if($("#ul1").is(":animated"))
{return};
	n--;
	
	if(n<0)
	{
	   $("#ul1").css("left",-($("#box>ul li").length-1)*parseInt($("#box>ul>li:first").css("width"))+window_width*0.17);
	   n=$("#box>ul li").length-3;
	};
	$("#ul1").animate({"left":-img_length*n-weiyi},500,function () {
		
	});
	//闪现
	x--;
	if(x<0)
	{x=$("#box span").length-1;
		
	}
	$("#box span").eq(x).css("opacity",1).siblings().css("opacity",0.5);
}





//====================================数据
var n1=1;
	var content='';
loadhtml(9,1);
//$(".liebiao_box").mouseenter(function(){
//	$(this).children().eq(1).slideDown();
//})
//$(".liebiao_box").mouseleave(function(){
//	$(this).children().eq(1).slideUp();
//})


function loadhtml(x,y)	{
	$.get("http://wjian.top/shop/api_goods.php",{
		pagesize:x,
		page:y,
	},function (resulit){
		var obj=JSON.parse(resulit);
		
		if(obj.code!=0)
		{
			console.log("获取数据失败");
		}
		else{
//		console.log(obj.message);
		console.log(obj);
		for (var i=0;i<obj.data.length;i++) {
			content+='<div class="col-md-4 " id="big_liebao"><div class="liebiao_box"><a href="kqx-xiangqing.jsp?goods_id='+obj.data[i].goods_id+'"><img src="'+obj.data[i].goods_thumb+'"/></a><ul class="liebiao"><li><p>'+obj.data[i].goods_name+'</p></li><li><p>￥'+obj.data[i].price+'</p></li><li><span class="glyphicon glyphicon-eye-open">'+obj.data[i].star_number+'</span></li></ul></div></div>'
			
		}
		
		$("#jiashuju").html(content);
		content='';
		
		$("#jiashuju .liebiao_box").mouseenter(function(){
			if($(this).children(".liebiao").is(":animated"))
			{return}
			
			$(this).children(".liebiao").slideDown(300);
//		$("#box>ul>li>#li_box").show();
	})
	$("#jiashuju .liebiao_box").mouseleave(function(){
		if($(this).children(".liebiao").is(":animated"))
			{return}
		$(this).children(".liebiao").slideUp(300);
	})
	
		
}
		
		})}
$("#btn_prev").click(function(){
		n1--;
		if(n1<1)
		{n1=1;
			
		}
		loadhtml(9,n1);
	})
	$("#btn_next").click(function(){
		n1++;
		if(n1<1)
		{n1=1;
			
		}
		loadhtml(9,n1);
	})
	
	
	//==================================导航
	var flag=0;
	var flag2=0;
	$(document).scroll(function(){
		if($(document).scrollTop()>60){
			$('#logo').slideUp(500);
			$('#ybc_mynav').css('background','#1b1b1b');
		}else{
			$('#logo').slideDown(500);
			$('#ybc_mynav').css('background','url(img/beijingJianbian.png)');
		}
	})
	$('#ybc_mynav').mouseenter(function(){
		$('#ybc_mynav').css('background','#1b1b1b')
	})
	$('#ybc_mynav').mouseleave(function(){
		if($(document).scrollTop()>60){
			return;
		}
		$('#ybc_mynav').css('background','url(img/beijingJianbian.png)');
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
	//=========跳转
	$("select").change(function(){
var a = parseInt($(this).val());
 loadhtml(9,a);
		
		
	})
	
	$(".a_top").hide();
	$("#sport_desc").hide();
	$("#bao_desc").hide();
	$(".a_top").click(function(){
		 $("html").animate({"scrollTop":0},1000);
	})
	$(document).scroll(function(){
		if($(this).scrollTop()>=300)
		{
			$(".a_top").fadeIn();
			$("#sport_desc").slideDown(800);
			$("bao_desc").slideDown(800);
		}
		else{
			$(".a_top").fadeOut();
		}
		if($(this).scrollTop()>=2100)
		{
			$("#bao_desc").slideDown(800);
		}
		
	})
	new WOW().init();
	
	/**$(".login").click(function(){
		$(location).attr("href","wkr-zhuce.jsp?gc=1");
	})
	$(".shop_cart").click(function(){
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
	
	})*/
	
	var content_cat="";
	loadnav();
	
	
	//==================读取
	read();
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
</script>
