package pojo;

public class User {  // 用户的购物信息
   private int userid;
   private String userpass;
   private String username;
    private String useradress;
    private String usershopping;
    private String userorder;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUserpass() {
		return userpass;
	}
	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUseradress() {
		return useradress;
	}
	public void setUseradress(String useradress) {
		this.useradress = useradress;
	}
	public String getShopping() {
		return usershopping;
	}
	public void setShopping(String shopping) {
		this.usershopping = shopping;
	}
	public String getUserorder() {
		return userorder;
	}
	public void setUserorder(String userorder) {
		this.userorder = userorder;
	}
    
}
