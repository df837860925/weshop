package dao;

import java.util.List;

import pojo.Order;

public interface Orderdao {
	public void insertOrder(Order ode)throws Exception;
	public void deleteOrderById(int id)throws Exception;
	public void updateOrder(Order ode)throws Exception;
	public Order selectOderByid(int id)throws Exception;
	public List<Order> selectOderByUserId(int id)throws Exception;
	public List<Order> selectAll()throws Exception;
}
