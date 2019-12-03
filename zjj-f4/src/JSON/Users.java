package JSON;

import java.io.Serializable;

public class Users implements Serializable{
	private String uname;
	private String password;
	private int age;
	
	public Users() {
	}
	public Users(String uname, String password, int age) {
		super();
		this.uname = uname;
		this.password = password;
		this.age = age;
	}
	@Override
	public String toString() {
		return "Users [uname=" + uname + ", password=" + password + ", age="
				+ age + "]";
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
}
