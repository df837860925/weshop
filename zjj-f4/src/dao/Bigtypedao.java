package dao;

import java.util.List;

import pojo.Bigtype;
import pojo.Goods;
import dao.daoimpl.Bigtypeimpl;

public interface Bigtypedao {
   
	public List<Bigtype> selectALL_bigtype(); 
	public List<Goods> nameSelect(String name);
}
