package dao;

import java.util.List;

import pojo.Goods;
import pojo.User;

public interface Opreate {
   
	public List<Goods> goodsShow(int page, int pagesize);
	
	public List<Goods> cateShow(int cate_id, int page, int pagesize);
	
	public boolean login(String name, String password);
	
	public boolean register_compare(String name);
	
	public boolean insertUser(User user) ;
	
	public boolean insert_shopid(int user_id, int shop_id);
	
	public int[] select_shopid(int user_id);
	
	public Goods selectGoods_shopid(int shop_id);
	
	public List<Goods> search(String name);
}
