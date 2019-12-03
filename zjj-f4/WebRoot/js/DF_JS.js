// 所有初始变量
var obj_ar=[];  //价格
var content_cat=''; //导航
var fenlei_data='';  //商品show
var tiaojianpage=0;  //条件查询页面数
// 请求数据
var  page=0;  //显示数据页面数

//导航重新鼠标显示下面的信息；
function navshow(){
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
	}

//加载导航分类信息

function loadnav(){
	$.ajax({
	type:"POST",
	url:"DF_loadnav.do",
	data:{},
	success:function(result)
	{
	var obj=result;
	 console.log("1111111");
	if(obj.code!=0)
	{
		console.log("获取数据失败");
		return
	}
	else{

	console.log(obj);
	for (var i=0;i<obj.list.length;i++) {
		content_cat+='<li><a href="fenlei.jsp?goods_bigtype='+obj.list[i].goods_bigtype+'">'+obj.list[i].typename+'<p class="clearblock"><span  class="caret"></span></p></a></li>'
					;
					

	}
	
}
			$("#nav_a").html(content_cat);
			navshow();
}
})
}



//获取初始商品数据




//按价格进行排序 高到底

function paixu_height_low(){
	
	 $(".ybc_jewel>.banner_glasses>a>.ps>#price").each(function(i){
	
var txt= 	$(this).text();
 var heat= txt.indexOf("￥");
 var tail=txt.indexOf(",");
 var txt_array=txt.split(",");
 txt=txt_array[0].substring(1)+txt_array[1];

var price=  txt;
console.log(price);
obj_ar.push({"price":parseInt(price),"obj":$(this).parent().parent().parent().parent()});
//$(this).parent().parent().parent().parent()
// console.log($(this).parent().parent().parent().parent().html());
	
	
})
  
for (var i=0;i<obj_ar.length;i++) {
	for (var j=0;j<obj_ar.length-i-1;j++) {
		if(obj_ar[j].price<obj_ar[j+1].price)
		{
			var guodu=obj_ar[j];
			obj_ar[j]=obj_ar[j+1];
			obj_ar[j+1]=guodu;
		}
		
	}
}
//  console.log(obj_ar[0].obj);
var htmltext='';
$(".ybc_main").html("");
for (var i=0;i<obj_ar.length;i++) {
	$(".ybc_main").append($(obj_ar[i].obj));
}
 
fenlei_mouseShow();
 
	
	obj_ar=[];
	
	
	
}


// 按价格进行排序 从低到高


function paixu_low_height(){
 $(".ybc_jewel>.banner_glasses>a>.ps>#price").each(function(i){
 	
var txt= 	$(this).text();
  
  var txt_array=txt.split(",");
  txt=txt_array[0].substring(1)+txt_array[1];

 var price= txt;
 console.log(price);
 obj_ar.push({"price":parseInt(price),"obj":$(this).parent().parent().parent().parent()});
 //$(this).parent().parent().parent().parent()
// console.log($(this).parent().parent().parent().parent().html());
 	
 	
 })
   
for (var i=0;i<obj_ar.length;i++) {
	for (var j=0;j<obj_ar.length-i-1;j++) {
		if(obj_ar[j].price>obj_ar[j+1].price)
		{
			var guodu=obj_ar[j];
			obj_ar[j]=obj_ar[j+1];
			obj_ar[j+1]=guodu;
		}
		
	}
}
//  console.log(obj_ar[0].obj);
var htmltext='';
$(".ybc_main").html("");
for (var i=0;i<obj_ar.length;i++) {
	$(".ybc_main").append($(obj_ar[i].obj));
}
  
fenlei_mouseShow();
  
	
	obj_ar=[];
	
}


//分类鼠标显示事件
function fenlei_mouseShow(){
	
	 $(".ybc_jewel").mouseenter(function(){
			$(this).children(".banner_glasses").children().children(".ps").fadeIn(500);		
		})

		$(".ybc_jewel").mouseleave(function(){
			$(this).children(".banner_glasses").children().children(".ps").fadeOut(500);		
		})
}


//禁用input
 function jinyong(objs) {
	 for (var i=0;i<objs.obj.cm.length;i++) {
		   	if(objs.obj.cm[i]=="c-1")
		   	{$(".shaixuan>#c_flag>li").eq(0).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(0).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="c-2")
		   	{$(".shaixuan>#c_flag>li").eq(1).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(1).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="c-3")
		   	{$(".shaixuan>#c_flag>li").eq(2).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(2).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="c-4")
		   	{$(".shaixuan>#c_flag>li").eq(3).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(3).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="c-5")
		   	{$(".shaixuan>#c_flag>li").eq(4).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(4).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="c-6")
		   	{$(".shaixuan>#c_flag>li").eq(5).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(5).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="c-7")
		   	{$(".shaixuan>#c_flag>li").eq(6).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(6).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="c-8")
		   	{$(".shaixuan>#c_flag>li").eq(7).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(7).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="c-9")
		   	{$(".shaixuan>#c_flag>li").eq(8).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(8).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="c-10")
		   	{$(".shaixuan>#c_flag>li").eq(9).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(9).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="c-11")
		   	{$(".shaixuan>#c_flag>li").eq(10).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(10).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="c-12")
		   	{$(".shaixuan>#c_flag>li").eq(11).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(11).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="c-13")
		   	{$(".shaixuan>#c_flag>li").eq(12).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(12).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="c-14")
		   	{$(".shaixuan>#c_flag>li").eq(13).children("input").attr("onclick","return false;");
	         $(".shaixuan>#c_flag>li").eq(13).children("input").css("background-color","gainsboro");}
		   	
		   	if(objs.obj.cm[i]=="m-1")
		   	{$(".shaixuan>#m_flag>li").eq(0).children("input").attr("onclick","return false;");
	         $(".shaixuan>#m_flag>li").eq(0).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="m-2")
		   	{$(".shaixuan>#m_flag>li").eq(1).children("input").attr("onclick","return false;");
	         $(".shaixuan>#m_flag>li").eq(1).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="m-3")
		   	{$(".shaixuan>#m_flag>li").eq(2).children("input").attr("onclick","return false;");
	         $(".shaixuan>#m_flag>li").eq(2).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="m-4")
		   	{$(".shaixuan>#m_flag>li").eq(3).children("input").attr("onclick","return false;");
	         $(".shaixuan>#m_flag>li").eq(3).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="m-5")
		   	{$(".shaixuan>#m_flag>li").eq(4).children("input").attr("onclick","return false;");
	         $(".shaixuan>#m_flag>li").eq(4).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="m-6")
		   	{$(".shaixuan>#m_flag>li").eq(5).children("input").attr("onclick","return false;");
	         $(".shaixuan>#m_flag>li").eq(5).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="m-7")
		   	{$(".shaixuan>#m_flag>li").eq(6).children("input").attr("onclick","return false;");
	         $(".shaixuan>#m_flag>li").eq(6).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="m-8")
		   	{$(".shaixuan>#m_flag>li").eq(7).children("input").attr("onclick","return false;");
	         $(".shaixuan>#m_flag>li").eq(7).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="m-9")
		   	{$(".shaixuan>#m_flag>li").eq(8).children("input").attr("onclick","return false;");
	         $(".shaixuan>#m_flag>li").eq(8).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="m-10")
		   	{$(".shaixuan>#m_flag>li").eq(9).children("input").attr("onclick","return false;");
	         $(".shaixuan>#m_flag>li").eq(9).children("input").css("background-color","gainsboro");}
		   	if(objs.obj.cm[i]=="m-11")
		   	{$(".shaixuan>#m_flag>li").eq(10).children("input").attr("onclick","return false;");
	         $(".shaixuan>#m_flag>li").eq(10).children("input").css("background-color","gainsboro");}
		   	
		   }
		   
}
