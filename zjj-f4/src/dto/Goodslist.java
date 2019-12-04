package dto;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import pojo.Goods;

public class Goodslist {
	private List<Goods> list=new ArrayList<Goods>();
	private String desc;
	private Set<String> set;
	public List<Goods> getList() {
		return list;
	}
	public void setList(List<Goods> list) {
		this.list = list;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public void addgoods(Goods goods){
		this.list.add(goods);
	}
	public Set<String> getSet() {
		return set;
	}
	public void setSet(Set<String> set) {
		this.set = set;
	}
	
}
