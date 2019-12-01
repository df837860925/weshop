package dao;

import java.util.List;

import pojo.Material;

public interface Materialdao {
	public List<Material> selectAll()throws Exception;
}
