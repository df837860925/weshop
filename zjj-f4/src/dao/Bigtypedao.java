package dao;

import java.util.List;

import JSON.paixuOBJ;
import pojo.Bigtype;
import pojo.Goods;
import dao.daoimpl.Bigtypeimpl;

public interface Bigtypedao {
   
	public List<Bigtype> selectALL_bigtype(); 
	public paixuOBJ nameSelect(String name);
	public paixuOBJ nameSelect(String name,String[] list);
}
