package dao;

import java.util.List;

import pojo.Userif;

public interface Userifdao {
	public void insertUserif(Userif usif)throws Exception;
	public void deleteUserif(Userif usif)throws Exception;
	public void updateUserif(Userif usif)throws Exception;
	public Userif selectUserifById(int id)throws Exception;
	public List<Userif> selectAll()throws Exception;
}
