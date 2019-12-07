<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'c_small_type.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<meta charset="utf-8" />
		<title></title>
		<meta name="viewport" content="witdh=device-witdh,initial-scale=1"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/daohang.css"/>
		<link rel="stylesheet" type="text/css" href="css/c_small_type.css" />
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
	</style>
	<body>
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
				       		 		<span class="glyphicon glyphicon-search" id="toserch" style="font-size:20px" >
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
								<h1>童装</h1>
							</div>
						</div>
			</div>
		</div>
		<section class="ybc_main" style="padding: 0px;">
			<div class="ybc_wristwatch">
				<div class="banner_wristwatch">
					<a href="javascript:;" id="goods_bigtype=3&goods_smalltype=15">
					<img class="imglimit" src="https://res.gucci.cn/resources/2019/6/19/15608923243776794_gs_470X470.jpg" />
					<div class="ps">
						<h2>男童</h2>
						<p>点击购买></p>
					</div>
				</a>
				</div>
			</div>
			<div class="ybc_jewel">
				<div class="banner_jewel">
					<a href="javascript:;" id="goods_bigtype=3&goods_smalltype=16">
					<img class="imglimit" src="https://res.gucci.cn/resources/2019/11/14/15737350956673721_gs_470X470.jpg" />
					<div class="ps">
						<h2>女童</h2>
						<p>点击购买 ></p>
					</div>
				</a>
				</div>
			</div>
			<div class="ybc_glasses">
				<div class="banner_glasses">
					<a href="javascript:;" id="goods_bigtype=3&goods_smalltype=17">
					<img class="imglimit"  src="https://res.gucci.cn/resources/2019/11/1/15725481288121873_gs_470X470.jpg" />
					<div class="ps">
						<h2>儿童礼品</h2>
						<p>点击购买 ></p>
					</div>
				</a>
				</div>
			</div>
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
	   				<img src="img/QQ截图20191025211758.png"/>
	   				
	   			</div>
	   		</div>
	   		<div class="row">
	   		    <div class="col-md-3">
	   		    	<p style="font-size: 11px;">©2019 古驰（中国）贸易有限公司 保留所有权利</p>
	   		    </div>
	   		    
	  
	   		</div>
	   	</div>
	   </section>
	</body>
</html>
<script src="js/jquery.singlePageNav.min.js">
</script>
<script src="js/bootstrap.min.js">
	
</script>
<script src="js/jquery.min.js">
	
</script>
<script src="js/DF_JS.js">
	
</script>
<script type="text/javascript">
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
	})
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
	//跳转到分类页面
		$('.ybc_main a').each(function(){
			var that=$(this)
			$(this).click(function(){
				var parm=that.attr('id');
				location.href="df_fenlei_type.jsp?"+parm;
			})
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
	loadnav();
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
</script>
