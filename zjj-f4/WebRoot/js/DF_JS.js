// ���г�ʼ����
var obj_ar=[];  //�۸�
var content_cat=''; //����
var fenlei_data='';  //��Ʒshow
var tiaojianpage=0;  //������ѯҳ����
// ��������
var  page=0;  //��ʾ����ҳ����

//�������������ʾ�������Ϣ��
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

//���ص���������Ϣ

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
		console.log("��ȡ����ʧ��");
		return
	}
	else{

	console.log(obj);
	for (var i=0;i<obj.list.length;i++) {
		
		content_cat+='<li><a href="'+obj.list[i].goods_bigtype+'">'+obj.list[i].typename+'<p class="clearblock"><span  class="caret"></span></p></a></li>'
					;
					

	}
	
}
			$("#nav_a").html(content_cat);
			
			$("#nav_a>li>a").each(function(){
				

				if($(this).attr("href")=="1")
			    { 
					$(this).attr("href","w_small_type.jsp");
			    }
				if($(this).attr("href")=="2")
				{
						$(this).attr("href","m_small_type.jsp");
				}
				if($(this).attr("href")=="3")
				{
						$(this).attr("href","c_small_type.jsp");
				}
				if($(this).attr("href")=="0")
				{
						$(this).attr("href","main_frame.jsp");
				}
				
			})
			navshow();
}
})
}



//��ȡ��ʼ��Ʒ����




//���۸�������� �ߵ���

function paixu_height_low(){
	
	 $(".ybc_jewel>.banner_glasses>a>.ps>#price").each(function(i){
	
var txt= 	$(this).text();
 var heat= txt.indexOf("��");
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


// ���۸�������� �ӵ͵���


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


//���������ʾ�¼�
function fenlei_mouseShow(){
	
	 $(".ybc_jewel").mouseenter(function(){
			$(this).children(".banner_glasses").children().children(".ps").fadeIn(500);		
		})

		$(".ybc_jewel").mouseleave(function(){
			$(this).children(".banner_glasses").children().children(".ps").fadeOut(500);		
		})

}


//����input
function jinyong(objs) {
$(".shaixuan>ul>li>input").each(function(){
	 	
	 	$(this).attr("onclick","return false;");
	         $(this).css("background-color","gainsboro");
	 	
	 	
	 	
	 })
	 for (var i=0;i<objs.obj.cm.length;i++) {
		
		   	if(objs.obj.cm[i]=="c-1")
		   	{  
		     $(".shaixuan>#c_flag>li").eq(0).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(0).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="c-2")
		   	{$(".shaixuan>#c_flag>li").eq(1).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(1).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="c-3")
		   	{$(".shaixuan>#c_flag>li").eq(2).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(2).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="c-4")
		   	{$(".shaixuan>#c_flag>li").eq(3).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(3).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="c-5")
		   	{$(".shaixuan>#c_flag>li").eq(4).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(4).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="c-6")
		   	{$(".shaixuan>#c_flag>li").eq(5).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(5).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="c-7")
		   	{$(".shaixuan>#c_flag>li").eq(6).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(6).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="c-8")
		   	{$(".shaixuan>#c_flag>li").eq(7).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(7).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="c-9")
		   	{$(".shaixuan>#c_flag>li").eq(8).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(8).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="c-10")
		   	{$(".shaixuan>#c_flag>li").eq(9).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(9).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="c-11")
		   	{$(".shaixuan>#c_flag>li").eq(10).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(10).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="c-12")
		   	{$(".shaixuan>#c_flag>li").eq(11).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(11).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="c-13")
		   	{$(".shaixuan>#c_flag>li").eq(12).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(12).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="c-14")
		   	{$(".shaixuan>#c_flag>li").eq(13).children("input").attr("onclick","");
	         $(".shaixuan>#c_flag>li").eq(13).children("input").css("background-color","white");}
		   	
		   	if(objs.obj.cm[i]=="m-1")
		   	{$(".shaixuan>#m_flag>li").eq(0).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(0).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="m-2")
		   	{$(".shaixuan>#m_flag>li").eq(1).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(1).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="m-3")
		   	{$(".shaixuan>#m_flag>li").eq(2).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(2).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="m-4")
		   	{$(".shaixuan>#m_flag>li").eq(3).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(3).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="m-5")
		   	{$(".shaixuan>#m_flag>li").eq(4).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(4).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="m-6")
		   	{$(".shaixuan>#m_flag>li").eq(5).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(5).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="m-7")
		   	{$(".shaixuan>#m_flag>li").eq(6).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(6).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="m-8")
		   	{$(".shaixuan>#m_flag>li").eq(7).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(7).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="m-9")
		   	{$(".shaixuan>#m_flag>li").eq(8).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(8).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="m-10")
		   	{$(".shaixuan>#m_flag>li").eq(9).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(9).children("input").css("background-color","white");}
		   	if(objs.obj.cm[i]=="m-11")
		   	{$(".shaixuan>#m_flag>li").eq(10).children("input").attr("onclick","");
	         $(".shaixuan>#m_flag>li").eq(10).children("input").css("background-color","white");}
		   	
		   }
		   
}

function daohang_name(x,y) { 
 if(y==1)
 { $(".ul_big").prepend($("<span>����</span>"))}
 if(y==2)
 { $(".ul_big").prepend($("<span>����</span>"))}
 if(y==3)
 { $(".ul_big").prepend($("<span>Ůѥ</span>"))}
 if(y==4)
 { $(".ul_big").prepend($("<span>����</span>"))}
 if(y==5)
 { $(".ul_big").prepend($("<span>����</span>"))}
 if(y==6)
 { $(".ul_big").prepend($("<span>���</span>"))}
 if(y==7)
 { $(".ul_big").prepend($("<span>����</span>"))}
 if(y==8)
 { $(".ul_big").prepend($("<span>�۾�</span>"))}
 if(y==9)
 { $(".ul_big").prepend($("<span>���</span>"))}
 if(y==10)
 { $(".ul_big").prepend($("<span>��Ь</span>"))}
 if(y==11)
 { $(".ul_big").prepend($("<span>����</span>"))}
 if(y==12)
 { $(".ul_big").prepend($("<span>�۾�</span>"))}
 if(y==13)
 { $(".ul_big").prepend($("<span>���</span>"))}
 if(y==14)
 { $(".ul_big").prepend($("<span>ñ��</span>"))}
 if(y==15)
 { $(".ul_big").prepend($("<span>��ͯ����</span>"))}
 if(y==16)
 { $(".ul_big").prepend($("<span>��ͯ����</span>"))}
 
 if(x==1)
	{
	 $(".ul_big").prepend($("<a href='w_small_type'>Ůװ</a>"))
	}
if(x==2)
	{
	  $(".ul_big").prepend($("<a href='m_small_type'>��װ</a>"))
	}
if(x==3)
{
  $(".ul_big").prepend($("<a href='c_small_type'>��װ</a>"))
}
 }

