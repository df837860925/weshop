<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
				height: 250px;
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
	</style>
  <body>
  <% System.out.print("@@@@@"+request.getAttribute("list")); %>
    	<div class="ybc_nav">
			<div class="container " id="ybc_mynav">
				<div class="row" >
					<div class="col-lg-4 col-lg-offset-4 text-center">
						<h1 id="logo" style="margin-bottom: 0px;">G U C C I</h1>
					</div>
					<div class="col-lg-4  text-right " id="ybc_shoping">
						<a  class="login" id="login"><span>登陆 </span></a>
						<a href="#"><span class="glyphicon glyphicon-user "style="display: none;" id="welcome">欢迎..</span></a>
					<a href="#"><span class="glyphicon glyphicon-log-out " style="display: none;" id="exit">退出</span></a>
						<span class="glyphicon glyphicon-heart"></span>
						<a  class="shop_cart" id="shop_cart"><span >购物袋 </span></a>
						<span class="glyphicon glyphicon-shopping-cart"></span>
					</div>
				</div>
				<div class="row " >
					<div class="col-md-6 col-md-offset-3  navbar" id="ybc_main_nav">
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
				 	<li id="li_leibie"><a href="">类别 </a><span class="caret"></span>
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
				 			<ul  style="display: inline-block; float: left;">
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-1" /><span id="color">　蓝色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-2" /><span id="color">　粉色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-3" /><span id="color">　绿色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-4" /><span id="color">　红色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-5" /><span id="color">　酒红色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-6" /><span id="color">　白色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-7" /><span id="color">　棕色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-8" /><span id="color">　黄色</span></li>
				 			
				 			</ul>
				 			<ul style="display: inline-block;float: left;" >
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-9" /><span id="color">　灰色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-10" /><span id="color">　紫色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-11" /><span id="color">　橙色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-12" /><span id="color">　米色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-13" /><span id="color">　黑色</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="15-14" /><span id="color">　金色</span></li>
				 			
				 			
				 			</ul>
				 			<p style="color: #A6A5A6; font-size: 14px; float: left;margin-left:100px; ">材质</p>
				 			<ul  style="display: inline-block; float: left; margin-left:70px ;">
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-1"  /><span id="color">　织物</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-2" /><span id="color">　真皮</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-3" /><span id="color">　GG帆布</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-4" /><span id="color">　天鹅绒</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-5" /><span id="color">　绒面真皮</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-6" /><span id="color">　稀有皮</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-7" /><span id="color">　帆布</span></li>
				 			<li class="leibie2"><input type="checkbox" name="" id="" value="12-8" /><span id="color">　橡胶</span></li>
				 			
				 			</ul>
				 			<ul style="display: inline-block;float: left;" >
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
				 	<li id="li_paixu">排序<span class="caret"></span>
				 		<div class="paixu">
				 			<ul>
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
			<c:forEach items="${list}" var="user" varStatus="i" >
			<div class="ybc_jewel">
				<div class="banner_glasses">
					<a class="jihe" href="xiangqing.do?goods_id=${user.goodsid}">
				
					<img class="imglimit" src="${user.goodsimg}" />
					<div class="ps">
						<h2 >${user.goodsname}</h2>
						<p id="price">￥${user.goodsprice}</p>
						<p id="">点击购买></p>
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
	
	
	<input type="text" style="display: none;"  name="data" id="" value="${goods_bigtype}+','+${goods_smalltype}" />
  </body>
</html>

<script src="js/jquery.min.js">
	<script src="js/bootstrap.js"></script>
	
</script>
 <script src="js/DF_JS.js" type="text/javascript"></script>
<script type="text/javascript">
loadnav();
var data=$("#data").val();
if(data)
{ var x=data.split(",")[0];
var y=data.split(",")[1];
}
else{
var x=1;
var y=2;
}
	if($("#prive").text()==null)
	{
	fenleidata(x,y,page);}
	function fenleidata(x,y,i){

$.get({
	 type:"POST",
	 url:"DF_fenlei_datashow.do",
	 data:{"bigtype":x,"smalltype":y,"page":i,"pagesize":24},
	 success:function(result){
	   var obj=result;
	 
console.log(result);
	   
   for (var i=0;i<obj.list.length;i++) {
   	fenlei_data+='<div class="ybc_jewel"><div class="banner_glasses"><a href="xiangqing.do?goods_id='+obj.list[i].goodsid+'" class="jihe"><img class="imglimit" src="'+obj.list[i].goodsimg+'" /><div class="ps"><h2>'+obj.list[i].goodsname+'</h2><p id="price">￥'+obj.list[i].goodsprice+'</p><p id="">点击购买></p></div></a></div></div>'
	   }
   $(".ybc_main").html(fenlei_data);
   $(".ybc_main").append($("<center class='cc'><button id='moregoods'>加载更多</button></center>"));
	$("#moregoods").click(function(){
	
	page++;
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
	   
	$("html,body").animate({"scrollTop":0},1000);
	  
	tiaojian(x,y,tiaojianpage);
		   

	

	console.log(colorarray);
	colorarray=[];
})
	
	function tiaojian(x,y,i){
	
		$.get({
	type:"POST",
		 url:"DF_fenlei_shaixuan.do",
		 data:{"bigtype":x,"smalltype":y,"page":i,"pagesize":24,"list":colorarray},
		 success:function(result){
		   var obj=result;
		   console.log(result);
		  
		   if(obj.list.length!=0){
		   
		    for (var i=0;i<obj.list.length;i++) {
	   	fenlei_data+='<div class="ybc_jewel"><div class="banner_glasses"><a href="xiangqing.do?goods_id='+obj.list[i].goodsid+'" class="jihe"><img class="imglimit" src="'+obj.list[i].goodsimg+'" /><div class="ps"><h2>'+obj.list[i].goodsname+'</h2><p id="price">￥'+obj.list[i].goodsprice+'</p><p >点击购买></p></div></a></div></div>'
		   }
		   }
		   else{
		     fenlei_data='<h1>没有相关的物品<h1>';
		   }
	   $(".ybc_main").html(fenlei_data);
	   if(obj.list.length>=24){
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
	tiaojian(x,y,tiaojianpage);
		   
		

	

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
	
	 
		
		
		   $(".ybc_jewel").mouseenter(function(){
		   console.log("!!!!!!!!!!!!!!!!!!!!");
		$(this).children(".banner_glasses").children(".jihe").children(".ps").fadeIn(500);	
	})
	
	
	$(".ybc_jewel").mouseleave(function(){
		$(this).children(".banner_glasses").children(".jihe").children(".ps").fadeOut(500);		
	}) 
	
	
		
	
</script>
