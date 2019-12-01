
(function(){
  $('.img1').mouseenter(function(event){
    //console.log(event);
    $('.img1').mousemove(function(event){
      var x = event.clientX - $('.img1').offset().left - $('.slide').outerWidth()/2;
      var y = event.clientY - $('.img1').offset().top - $('.slide').outerHeight()/2 + $(document).scrollTop();
      
      if(x <= 0){x = 0};
      if(y <= 0){y = 0};
      if(x >= $('.img1').width() - $('.slide').outerWidth()){
        x = $('.img1').width() - $('.slide').outerWidth();
      }
      if(y >= $('.img1').height() - $('.slide').outerHeight()){
        y = $('.img1').height() - $('.slide').outerHeight();
      }
      
      $('.slide').css({
        left : x,
        top : y,
      });
//    $('title').html(x + ',' + y);
      var bili = (800 - $('.big').width()) / ($('.img1').width() - $('.slide').outerWidth());
      
      //console.log($('.big').css('backgroundSize'))
      var str = -x*bili + 'px ' + -y*bili + 'px';
      $('.big').css('backgroundPosition', str)
    });
  });
  
$('.img-small .clothes img').each(function(){
    $(this).mouseenter(function(){
      var imgSrc = $(this).attr('src');
      $('.img1').attr('background-image', imgSrc);
      $('.big').css({
        'background-image':'url('+imgSrc+')'
      });
    });
});
  
  $('.img1').hover(function(){
    $('.slide, .big').show();
  }, function(){
    $('.slide, .big').hide();   
  });
  
})();
(function(){
	addCart();
	Buy();
})()
//(function(){
//	var goodsId = getUrlVal('goods_id');
//  $.get('http://www.wjian.top/shop/api_goods.php', {
//    goods_id : goodsId,
//  }, function(result){
//    var obj = JSON.parse(result);
//    console.log(obj)
//    var goods = obj.data[0];
//    var str1=`${goods.goods_name}`;
//    var str2 =`${goods.price}`;
//    var str3 = `<span data-goods-id="${goods.goods_id}">加入购物�/span>`;
//    var str4 = `url(${goods.goods_thumb})`;
//    var str5 = `${goods.goods_desc}`
//    $('.product-name').html(str1);
//    $('.price').html(str2);
//    $('.original-price').html(""+parseInt(str2)*1.5);
//    $('.add-cart').html(str3);
//    $('.img1').css("background-image",str4);
//    $(".clothes").html(`<img src="${goods.goods_thumb}" class="clothes1"/>
//				<img src="${goods.goods_thumb}" class="clothes2"/>`);
//		$(".big").css('background-image',str4);
//		$('.brand-name').html(str5);
//    addCart();
//  });
//})();

function addCart(){
  $('.add-cart').click(function(){
	console.log(goods_id);
	console.log(typeof(goods_id));
    var token = localStorage.getItem('token');
    var goodsId = $('.add-cart span').attr('data-goods-id');
    console.log(goodsId);
    console.log(typeof(goodsId));
    if(token){
    	alert("添加成功！");
    }else{
      if(confirm('未登录，即将跳转到登录界面')){
        location.href = 'wkr-zhuce.jsp?goods_id='+ goodsId+'&gc=2';
      };
    };
  });
};

function Buy(){
	  $('.buy').click(function(){
	  
	  });
	};