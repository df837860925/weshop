package dao;

import java.util.List;

import pojo.Goods;

public interface Goodsdao {
	public void insert(Goods good)throws Exception;
	public void delete(Goods good)throws Exception;
	public void update(Goods good)throws Exception;
	public Goods selectByGoodsId(int id)throws Exception;
	public List<Goods> selectByGoodsBigtype(int type)throws Exception;
	public List<Goods> selectByGoodsSmalltype(int type)throws Exception;
	public List<Goods> selectAll(int num)throws Exception;
	public List<Goods> selectAll()throws Exception;
}