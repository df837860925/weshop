package pojo;

public class User {
	private int userid;
	private String userpass;
	private String username;
	private String userphone;
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

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getUsershopping() {
		return usershopping;
	}

	public void setUsershopping(String usershopping) {
		this.usershopping = usershopping;
	}

	public String getUseradress() {
		return useradress;
	}

	public void setUseradress(String useradress) {
		this.useradress = useradress;
	}

	public String getUserorder() {
		return userorder;
	}

	public void setUserorder(String userorder) {
		this.userorder = userorder;
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", userpass=" + userpass
				+ ", username=" + username + ", userphone=" + userphone
				+ ", useradress=" + useradress + ", usershopping="
				+ usershopping + ", userorder=" + userorder + "]";
	}

}
