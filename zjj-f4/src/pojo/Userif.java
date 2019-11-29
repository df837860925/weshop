package pojo;

public class Userif {  //用户的个人信息
	private int  userifid;
	private String userifsex;
	private String userifphone;
	private String userifname;//真实姓名
	private int userifadress;//自己的地址 对应一条地址信息表的记录
	public int getUserifid() {
		return userifid;
	}
	public void setUserifid(int userifid) {
		this.userifid = userifid;
	}
	public String getUserifsex() {
		return userifsex;
	}
	public void setUserifsex(String userifsex) {
		this.userifsex = userifsex;
	}
	public String getUserifphone() {
		return userifphone;
	}
	public void setUserifphone(String userifphone) {
		this.userifphone = userifphone;
	}
	public String getUserifname() {
		return userifname;
	}
	public void setUserifname(String userifname) {
		this.userifname = userifname;
	}
	public int getUserifadress() {
		return userifadress;
	}
	public void setUserifadress(int userifadress) {
		this.userifadress = userifadress;
	}
	
	
}
