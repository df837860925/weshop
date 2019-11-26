  //请求用户的购物车数据
  function goodsList(page, callback){
    var page = page ? page : 1;
    //页面打开就可以看到商品
    $.get('http://www.wjian.top/shop/api_goods.php',{
      'pagesize':6,
      'page':page,
    }, function(result){
      var result = JSON.parse(result);
      //验证
      if(result.code != 0){
        console.log('数据请求失败');
        return;
      };
      //调用
      callback(result);
    }); 
  };
  
  goodsList(1, function(result){
    var goodsList = result.data;
    console.log(goodsList)
    //得到数据了之后，在这里操作数据
    //组装DOM结构
    for(var i = 0; i < goodsList.length; i++){
      //拿到每一项  goodsList[i].goodsName
      var str = `
        <tr>
          <td class="left">
            <input type="checkbox" />
            <img src="${goodsList[i].goods_thumb}"/>
          </td>
          <td class="desc">${goodsList[i].goods_desc}</td>
          <td>
            <span class="add">+</span>
            <span class="count">1</span>
            <span class="reduce">-</span>
          </td>
          <td>${goodsList[i].price}</td>
          <td>${goodsList[i].price}</td>
          <td><a href="javascript:;">删除</a></td>
        </tr>
      `;
      //把每次组装好的添加进table
      $('table').append(str);
    };
    
  });
  
  
  
  //点击加减数量变   小计变  总价变
  //点击全选        总价变
  //点击单选        总价变
  //点击删除        当前元素tr删除
  
  //点击整个表格
  $('table').click(function(event){
    console.log(event)
  });
  
  