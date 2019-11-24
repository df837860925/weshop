package dao;

import java.util.List;

import pojo.Goods;
import pojo.User;

public interface Opreate {
	
	/***
	 * 详细功能
	 */
    //分页查找商品信息
	public List<Goods> goodsShow(int page, int pagesize);
	
	//分页，按照分类名查找商品信息
	public List<Goods> cateShow(int cate_id, int page, int pagesize);
	
	//验证登录信息
	public boolean login(String name, String password);
	
	//验证注册账号是否存在
	public boolean register_compare(String name);
	
	//插入注册账号
	public boolean insertUser(User user) ;
	
	//插入购物车的商品的ID
	public boolean insert_shopid(int user_id, int shop_id);
	
	//查找用户的购物车的商品的id
	public int[] select_shopid(int user_id);
	
	//根据购物车的商品的id，查找商品
	public Goods selectGoods_shopid(int shop_id);
	
	//传递关键字，搜索。
	public List<Goods> search(String name);
	
	/***
	 * 传统增删改查 user 表
	 */
	public boolean insert_User(User user);
	public boolean delete_User(User user);
	public boolean update_User(User user);
	public User select_User(User user);
	public List<User> selectALL_User(User user);
	
	/***
	 * 传统增删改查 goods 表
	 */
	public boolean insert_Goods(Goods user);
	public boolean delete_Goods(Goods user);
	public boolean update_Goods(Goods user);
	public User select_Goods(Goods user);
	public List<User> selectALL_Goods(Goods user);
	
	
	
}
