<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.01Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
       
    <title>My JSP 'kqx-xiangqing.jsp' starting page</title>
    
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
		<link href="css/myCss.css" rel="stylesheet" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/daohang.css"/>
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
		#ybc_shoping a {
			cursor: pointer;
		}
		</style>
	</head>
	<body>
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
									<div class="ziti">
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
								<h1>商品信息</h1>
							</div>
						</div>
			</div>
		</div>
		
		<section class="main-xiangqing">
		<div class="header">
			<p>古驰首页 > 商品>商品详情</p>
			<div class="img1">
				<div class="slide"></div>
			</div>
			<!--显示-->
	      <div class="big">
	        
	      </div>
				<div class="product-info">
					<div class="product-name"></div>
					<div class="brand-name">
						<!--<span>品牌：Armani Jeans</span>
						<div>商品编号：939210776841865</div>-->
					</div>
					<div class="product-price">
						<span class="symbol">¥</span>
						<span class="price"></span>
						<span class="original-price"></span>
					</div>
					<div class="product-region">
						发货地: 
						<span>预计5-7个工作日送达</span>
					</div>
					<div class="product-tariff">
						税　费: 
						<span>额外税费需用户承担</span>
					</div>
					
					<div class="color-wrap">
						<div class="product-color">
						<div class="condition-title">颜　色:</div>
							<ul>
								<li>白色</li>
								<li>黑色</li>
							</ul>
						</div>
					</div>
					
					<div class="size-wrap">
						<div class="product-size">
						<div class="condition-title">尺　码:</div>
							<ul>
								<li>XXL</li>
								<li>XL</li>
							</ul>
						</div>
					</div>
					
					<div class="number-wrap">
						<div class="condition-title">
							购买数量：
						</div>
						<div class="input-number">
							<span class="minus">-</span>
							<input type="text" value="1"  oninput="value=value.replace(/[^\d]/g,'')" >
							<span class="add">+</span>
						</div>
					</div>
					
					<div class="button-wrap">
						<button  type="button" class="buy"><span>立即购买</span></button> 
						<button  type="button" class="add-cart" ><span>加入购物车</span></button>
					</div>
				</div>
			
			<div class="img-small">
				<input type="button" value="<" class="prev"/>
				<div class="clothes">
				
				</div>
				<input type="button" value=">" class="next" />
			</div>
		</div>
		
		<div class="content">
			<div class="product-detail">
				<ul class="tab-list">
					<li class="title1">商品详情</li>
					<li class="title2">商品评价</li>
				</ul>
			</div>
			<div class="details-title">
				<p>商品参数</p>
				<hr>
				<ul class="specification-list">
					<li class="specification">领型: 圆领</li>
					<li class="specification">衣门襟: 套头</li>
					<li class="specification">衣长: 标准</li>
					<li class="specification">服装工艺: 印花</li>
				</ul>
				<ul class="specification-list">
					<li class="specification">服装风格: 商务休闲</li>
					<li class="specification">服装流行元素: logo、字符</li>
					<li class="specification">服装厚薄: 普通</li>
					<li class="specification">服装版型: 常规型</li>
				</ul>
				<ul class="specification-list">
					<li class="specification">袖长: 长袖</li>
					<li class="specification">服装服饰图案样式: 字母</li>
					<li class="specification">材质（主面料）: 棉</li>
					<li class="specification">里料材质: 棉</li>
				</ul>
				<ul class="specification-list">
					<li class="specification">规范颜色: 黑色</li>
				</ul>
			</div>
			<div class="tip">
				<p>消费者购前须知：</p>
				<ul>
					<li>尊敬的顾客，您在走秀网购买的境外发货商品，等同于您在境外购买，请在购买前仔细阅读全部内容，并对自身风险承担作出客观判断。 </li>
					<li>1.海外商品无中文简体标签，如需了解中文信息，请联系客服。 </li>
					<li>2. 海外商品适用的关于品质、安全、健康、卫生、环保、标识等标准与我国大陆相关标准可能有所不同，在使用过程中由此可能产生的危害、损失或其他风险，走秀网不承担责任。 </li>
					<li>3.进口税海关收取，抽税告知：</li>
					<li>"根据跨境电子商务零售进口税收政策，个人单笔交易限值人民币5000元，个人年度交易限值人民币26000元。在限值以内进口的跨境电子商务零售进口商品，关税税率暂设为0%；进口环节增值</li>
					<li>税、消费税按法定应纳税额的70%征收。</li>
					<li>计算规则：税费 = 购买单价 × 件数 × 跨境电商综合税率 </li>
					<li>跨境电商综合税率 =（消费税率 + 增值税率）/（1 - 消费税率）× 70%” </li>
					<li>4.	海外购买商品仅限个人自用，不得再次销售。 </li>
					<li>5.	海外商家不定期更换包装，走秀网尽力准确展示商品最新包装，如有不符，以收到实物为主。 </li>
					<li>6.	所有的商品图片均为专业摄影师拍摄，经后期修制与色彩调整，尽量与实际商品保持一致，但由于灯光、显示器色彩偏差，个人对颜色理解不同等因素，实物与图片出现一定程度色差实属难</li>
					<li>免，商品颜色请以实际商品为准 ，此类问题不属于商品质量问题。 </li>
					<li>7.	在您收到货时有任何问题请第一时间联系客服解决，对支持七天无理由退货且未拆封、未使用、不影响二次销售的商品，可享受7天无理由退换货。 </li>
					<li>8.	确认收货之日7天（含）内，如有质量问题、实物与图文描述不符或缺发，可申请退货。</li>
				</ul>
			</div>
			<div class="detail-img">
				<img src="img/img-1.webp" />
				<img src="img/img-2 .webp" alt="" />
				<img src="img/img-3.webp" alt="" />
				<img src="img/img-4.webp" alt="" />
				<img src="img/img-5.webp" alt="" />
				<img src="img/img-6.webp" alt="" />
				<img src="img/img-7.webp" alt="" />
				<img src="img/img-8.webp" alt="" />
			</div>
			<div class="tip">
				<p>发票说明:</p>
				<ul>
					<li>1. 若您购买的是【国内发货】商品，商家有义务按照买家实际支付现金，开具正规发票，相关税收应按国家相关规定由商家自行承担。 </li>
					<li>2. 若您购买的是【海外直邮】、【海外发货】或【国内保税仓发货】商品，商家均为海外商家，暂时无法按照国内法律规定提供购物发票。</li>
				</ul>
			</div>
			<div class="tip">
				<p>价格说明:</p>
				<ul>
					<li>走秀价：指商家在走秀网开放平台销售商品时的售价。 </li>
					<li>限时抢购价、特卖价：指商家在促销活动中的售价。 </li>
					<li>划线价：商品的参考价,并非原价,该价格可能是品牌专柜价、商品吊牌价或由品牌供应商提供的零售价或商品在走秀网平台曾经展示的走秀价。</li>
				</ul>
			</div>
		</div>
		
		<div class="label-layout">
			<ul class="label-list">
				<li class="label"><img src="img/xiazai (1).png">海外直邮</li>
				<li class="label"><img src="img/xiazai (2).png">品质保证</li>
				<li class="label"><img src="img/xiazai.png">售后保障</li>
			</ul>
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
	</body>
</html>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.singlePageNav.min.js"></script>
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/base.js"></script>
<script src="js/product.js"></script>

<script>
    $('.color-wrap ul li').each(function(i)
    {
    	$(this).click(function()
    	{
    		$('.color-wrap ul li').each(function(i)
    		{
    			$(this).css('border','1px solid #cdcdcd');
    		});
    	$(this).css('border','black solid 1px');
  		});
  	});
  	
  	$('.size-wrap ul li').each(function(i)
    {
    	$(this).click(function()
    	{
    		$('.size-wrap ul li').each(function(i)
    		{
    			$(this).css('border','1px solid #cdcdcd');
    		});
    	$(this).css('border','black solid 1px');
  		});
  	});
//	方法一
//	$('.input-number .add').click(function(){
//		var flag=true;
//		var number = $('.input-number input').attr('value')
//		if(number==''){
//			$('.input-number input').attr('value',1);
//			flag = false;
//		}
//		if(flag){number = parseInt($('.input-number input').attr('value'));
//		$('.input-number input').attr('value',number+1);}
//	});

//方法二
//	$('.input-number .add').click(function(){
//		var number =$('.input-number input').attr('value');
//		if(number==''){
//			$('.input-number input').attr('value',1);
//			return;
//		}
//		$('.input-number input').attr('value',parseInt(number)+1);
//	});
//方法三
	$('.input-number .add').click(function(){
	  		var number =parseInt($('.input-number input').attr('value'));
	  		if(isNaN(number)){
	  			console.log(NaN);
	  			$('.input-number input').attr('value',1);
	  			return;
	  		}
	  		$('.input-number input').attr('value',number+1);
	  	});
	  	
  	$('.input-number .minus').click(function(){
  		var number =parseInt($('.input-number input').attr('value'));
  		if(isNaN(number) || number<=1){
  			$('.input-number input').attr('value',1);
  			return;
  		}
  		$('.input-number input').attr('value',number-1);
  	});
  	
  	$('.input-number input').focusout(function(){
  		var number =$('.input-number input').attr('value');
  		var reg=/^[1-9][\d]*/;
  		if(reg.test(number)){
  			$('.input-number input').attr('value',parseInt(number));
  		}else{
  			$('.input-number input').attr('value',1);
  		}
  	})
</script>
<script type="text/javascript">
	//头部JS
	var flag=0;
	var flag2=0;
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
	
	$("#login").click(function(){
		var id=geturlval("goods_id")
		$(location).attr("href","wkr-zhuce.jsp?goods_id="+id);
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
	function  geturlval(content){
//	var content=null;
	var jieshou= window.location.search.substring(1);
	var shuju=new RegExp("(^|&)"+content+"=([^&]*)(&|$)");
	var result=jieshou.match(shuju);
	if(result==null)
	{return;}
	else return result[2];
	}
</script>
