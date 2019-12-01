<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC"-//W3C//DTD HTML 4.01Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '??.jsp' starting page</title>
    
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
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<meta name="viewport" content="width=device-width,initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/daohang.css"/>
		<style type="text/css">
			#ybc_shoping a{
			  cursor: pointer;
			}
		</style>
	</head>
	<body>
			<section>
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
	 
		<div class="container">
			<div class="row" id="jiashuju">
				<div class="col-md-4">
					<div class="thumbnail">
			      <img src="images/0.png"/>
			        <caption>
				    <p>宝贝正在上架中....</p>
				    <p>客观您可以看看别的地方</p>
				    <span class="glyphicon glyphicon-eye-open"></span>
			        </caption>
		        </div>
				</div>
				
			</div>
		</div>
		
	</body>
</html>
<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	var string='cat_id';
var result= geturlval(string);
var content='';
var x=1;
var y=9;
  loadcontent(x,y);
function loadcontent(x,y){
$.get("http://wjian.top/shop/api_goods.php",{
	cat_id:result,
	page:x,
	pagesize:y
} ,function(event){
	var obj=JSON.parse(event);
	console.log(obj);
	if(obj.code!=0)
	{
		console.log("获取数据失败");
		return;
	}
	else{
		for (var i=0;i<obj.data.length;i++) {
			content+='<div class="col-md-4"><div class="thumbnail"><a href="kqx-xiangqing.jsp?goods_id='+obj.data[i].goods_id+'"><img src="'+obj.data[i].goods_thumb+'"/><caption><p>'+obj.data[i].goods_name+'</p><p>'+obj.data[i].price+'</p><span class="glyphicon glyphicon-eye-open">'+obj.data[i].star_number+'</span></caption></a></div></div>'
		    }
	    }
	
	$("#jiashuju").html(content);
	$("#jiazhai").remove();
})
}
	
	
	function  geturlval(content){
//	var content=null;
	var jieshou= window.location.search.substring(1);
	var shuju=new RegExp("(^|&)"+content+"=([^&]*)(&|$)");
	var result=jieshou.match(shuju);
	if(result==null)
	{return;}
	else return result[2];
	}
	
	
	
//====================导航
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
		$(location).attr("href","wkr-zhuce.jsp?gc=2");
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
				$(location).attr("href","wkr-zhuce.jsp?gc=2");
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
	
	//============加载更多
	var page=1;
	$(document).scroll(function(){
		if($(document).height()==$(document).scrollTop()+$(window).height())
		{    
			page++;
			$("body").append($("<div id='jiazhai'><p class='text-center' style='font-size: 40px; color: gold;'>正在加载...<p></div>"))
			loadcontent(page,y);
		}
	})
</script>
