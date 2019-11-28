package JSON;

import java.util.ArrayList;
import java.util.List;



public class UsersDaoImpl {
	public boolean login(String uname,String password){
		if("zs".equals(uname) && "123".equals(password)){
			return true;
		}
		return false;
	}
	
	public boolean validateUname(String uname){
		if(!"ÕÅÈı".equals(uname)){
			return true;
		}
		return false;
	}
	
	public List<Users> selectAll(){
		List<Users> list = new ArrayList<Users>();
		list.add(new Users("zs", "111", 20));
		list.add(new Users("ls", "222", 30));
		list.add(new Users("ww", "333", 40));
		list.add(new Users("zl", "¶¡·æ", 50));
		return list;
	}
}
