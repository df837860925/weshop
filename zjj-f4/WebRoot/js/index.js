//商品分类
(function(){
  //发起请求
  $.get('http://www.wjian.top/shop/api_cat.php',{}, function(result){
    var obj = JSON.parse(result);
//    console.log(obj);
    //验证
    if(obj.code != 0){
//      console.log(obj.message);
      return;
    };
    //遍历数据
    var str = '';
    for(var i = 0; i < obj.data.length; i++){
      str += `<li><a target="_blank" href="classfiy.html?cat_id=${obj.data[i].cat_id}">${obj.data[i].cat_name}</a></li>`;
    };
    $('#classfiy').append(str);
  });
})();

//默认要请求热门商品
(function(){
  var page = 1;
  var pagesize = 8;
  
  //封装热门商品数据
  function getGoodsList(){   
    //请求数据
    $.get('http://www.wjian.top/shop/api_goods.php',{
      page:page,
      pagesize:pagesize,
    }, function(result){
      var obj = JSON.parse(result);
      console.log(obj);
      //验证
      if(obj.code != 0){
        console.log(obj.message);
        return;
      };
      //渲染
      for(var i = 0; i < obj.data.length; i++){
        var str = `
        <div class="col-md-3">
          <div class="thumbnail">
            <img src="${obj.data[i].goods_thumb}"/>
            <caption>
              <p class="goods-name">${obj.data[i].goods_name}</p>
              <p class="goods-desc">${obj.data[i].goods_desc}</p>
              <p>${obj.data[i].price}</p>
              <p><span class="glyphicon  glyphicon-star"></span>${obj.data[i].star_number}</p>
              <button class="btn btn-info">加入购物车</button>
            </caption>
          </div>
        </div>
        `;
        //每遍历一次就要去添加一次
        $('#goodsList').append(str); 
      };
      //隐藏加载元素
      $('#loading').fadeOut();
      //放开锁
      lock = false;
    });
  };
  //刷新就要有商品
  getGoodsList();
  
  var lock = false;
  //滚动到底部加载更多
  //核心：怎么判断到了底部
  $(window).scroll(function(){
    var scrollTop = $(window).scrollTop();
    var windowH = $(window).height();
    var documentH = $(document).height();
//    console.log(scrollTop, windowH, documentH);
    
    if((scrollTop + windowH) / documentH == 1){
      if(lock){return};
      lock = true;
      //加载下一页
      page++;
      //加载中
      $('#loading').css('display','block').html('加载中...');
      getGoodsList();
    };   
  });
  
})();
