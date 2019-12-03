var string='cat_id';
var result= geturlval(string);
var content=``;

  loadcontent(content);
function loadcontent(){
$.get("http://wjian.top/shop/api_goods.php",{
	cat_id:result,
	page:1,
	pagesize:9
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
			content+=`<div class="col-md-4">
			<div class="thumbnail">
			      <img src="${obj.data[i].goods_thumb}"/>
			        <caption>
				    <p>${obj.data[i].goods_name}</p>
				    <p>${obj.data[i].price}</p>
				    <span class="glyphicon glyphicon-eye-open">${obj.data[i].star_number}</span>
			        </caption>
		        </div>
		        </div>`
		    }
	    }
	
	$("#jiashuju").html(content);
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