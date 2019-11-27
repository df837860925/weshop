package dao;

import java.util.List;

import pojo.User;

public interface Userdao {
	public void insertUser(User us) throws Exception;
	public void deleteUser(User us) throws Exception;
	public void updateUser(User us) throws Exception;
	public User selectByUserId(int id) throws Exception ;
	public User selectByUsername(String username) throws Exception ;
	public List<User> selectAll() throws Exception;
}
