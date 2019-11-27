package dao.daoimpl;

public class DaoimplFactory {
	
	public static Adressdaoimpl getAdressdaoimpl(){
		return new Adressdaoimpl();
	}
	public static Goodsdaoimpl getGoodsdaoimpl(){
		return new Goodsdaoimpl();
	}
	public static Orderdaoimpl getOrderdaoimpl(){
		return new Orderdaoimpl();
	}
	public static Userdaoimpl getUserdaoimpl(){
		return new Userdaoimpl();
	}
	public static Userifdaoimpl getUserifdaoimpl(){
		return new Userifdaoimpl();
	}
}
