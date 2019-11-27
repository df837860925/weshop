package dao;

import pojo.Adress;

public interface Adressdao {
	public void insertAdress(Adress adr)throws Exception;
	public void deleteAdressById(int id)throws Exception;
	public void updateAdress(Adress adr)throws Exception;
	public Adress selectAdressById(int id)throws Exception;
	public void selectAll()throws Exception;
}
