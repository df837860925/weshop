package dao;

import java.util.List;
import dto.Goodslist;
import JSON.paixuOBJ;
import pojo.Goods;
import pojo.Liebie;

public interface Goodsdao {
	public void insert(Goods good) throws Exception;
	public void delete(Goods good) throws Exception;
	public void update(Goods good) throws Exception;
	public Goods selectByGoodsId(int id) throws Exception ;
	public List<Goods> selectByGoodsBigtype(int type) throws Exception ;
	public List<Goods> selectByGoodsSmalltype(int type) throws Exception; 
	
    //查询出筛选的名字
	public List<Liebie> selectByGoodsSmalltype(int bigtype,int smalltype) throws Exception;
	
	//根据 大分类传递的值，一开始显示的数据
	public paixuOBJ selectByGoodsSmalltype(int bigtype,int smalltype,int page,int pagesize) throws Exception; 

	//通过筛选颜色和材质查出来的结果
	public paixuOBJ selectByGoodsSmalltype(int bigtype,int smalltype,int page,int pagesize,String[] list) throws Exception; 
	public List<Goods> selectAll(int num) throws Exception;
	public List<Goods> selectAll() throws Exception;
	public Goodslist selectGoodsByDesc(String desc, int pagenum,int pagesize)throws Exception;
	public List<Goods> selectByGoodsDesc(String desc,int num,String[] list)throws Exception;
	
	}
