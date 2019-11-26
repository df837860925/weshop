
//放大镜
(function(){
  //事件:鼠标移入到up再移动，再移出
  $('.img1').mouseenter(function(event){
    //console.log(event);
    //在移入里面移动,滑块跟随
    $('.img1').mousemove(function(event){
      var x = event.clientX - $('.img1').offset().left - $('.slide').outerWidth()/2;
      var y = event.clientY - $('.img1').offset().top - $('.slide').outerHeight()/2 + $(document).scrollTop();
      
      //验证控制范围
      if(x <= 0){x = 0};
      if(y <= 0){y = 0};
      if(x >= $('.img1').width() - $('.slide').outerWidth()){
        x = $('.img1').width() - $('.slide').outerWidth();
      }
      if(y >= $('.img1').height() - $('.slide').outerHeight()){
        y = $('.img1').height() - $('.slide').outerHeight();
      }
      
      //设置滑块
      $('.slide').css({
        left : x,
        top : y,
      });
//    $('title').html(x + ',' + y);
      //设置大图背景
      var bili = (800 - $('.big').width()) / ($('.img1').width() - $('.slide').outerWidth());
      
      //console.log($('.big').css('backgroundSize'))
      var str = -x*bili + 'px ' + -y*bili + 'px';
      $('.big').css('backgroundPosition', str)
    });
  });
  
//点击下面小图切换
$('.img-small .clothes img').each(function(){
    $(this).mouseenter(function(){
      //拿到当前移入的图片src
      var imgSrc = $(this).attr('src');
      //改结构图
      $('.img1').attr('background-image', imgSrc);
      $('.big').css({
        'background-image':'url('+ imgSrc +')'
      });
    });
});
  
  //鼠标移入移出
  $('.img1').hover(function(){
    $('.slide, .big').show();
  }, function(){
    $('.slide, .big').hide();   
  });
  
})();

(function(){
	var goodsId = getUrlVal('goods_id');
  //发起请求
  $.get('http://www.wjian.top/shop/api_goods.php', {
    goods_id : goodsId,
  }, function(result){
    var obj = JSON.parse(result);
    console.log(obj)
    var goods = obj.data[0];
    var str1=`${goods.goods_name}`;
    var str2 =`${goods.price}`;
    var str3 = `<span data-goods-id="${goods.goods_id}">加入购物车</span>`;
    var str4 = `url(${goods.goods_thumb})`;
    var str5 = `${goods.goods_desc}`
    $('.product-name').html(str1);
    $('.price').html(str2);
    $('.original-price').html("¥"+parseInt(str2)*1.5);
    $('.add-cart').html(str3);
    $('.img1').css("background-image",str4);
    $(".clothes").html(`<img src="${goods.goods_thumb}" class="clothes1"/>
				<img src="${goods.goods_thumb}" class="clothes2"/>`);
		$(".big").css('background-image',str4);
		$('.brand-name').html(str5);
    //页面有数据按钮才能点击
    addCart();
  });
})();

//封装加入购物车
function addCart(){
  $('.add-cart').click(function(){
    //用户是否登录
    var token = localStorage.getItem('token');
    var goodsId = $('.add-cart span').attr('data-goods-id');
    console.log(goodsId)
    //验证
    if(token){
    	alert("添加成功！");
    }else{
      //用户没有登录    confirm  返回boolean   
      if(confirm('未登录，点击确定跳转登录页面')){
        //跳到登录
        location.href = '王凯睿-注册.html?goods_id='+ goodsId+'&gc=2';
      };
    };
  });
};
