package pojo;

public class User {
	private int userid;
	private String userpass;
	private String username;
	private String usershoping;//购物车信息是多个 id-id-id 这样连接
	private String userorder;//订单信息是多个
	private String useradress;//地址是多个
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
	public String getUsershoping() {
		return usershoping;
	}
	public void setUsershoping(String usershoping) {
		this.usershoping = usershoping;
	}
	public String getUserorder() {
		return userorder;
	}
	public void setUserorder(String userorder) {
		this.userorder = userorder;
	}
	public String getUseradress() {
		return useradress;
	}
	public void setUseradress(String useradress) {
		this.useradress = useradress;
	}
	
}
