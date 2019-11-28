package dto;

import java.io.Serializable;
import java.util.Date;
/**
 * 这是一个用户登陆时记录用户登陆信息的类
 * @author Administrator
 *
 */
public class UserLoginInfo implements  Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -9122617988549861001L;
	//用户id
	private int userid;
	//用户账号
	private String username;
	//用户登陆的ip地址
	private String ip;
	//用户登陆的时间
	private Date logindate;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Date getLogindate() {
		return logindate;
	}
	public void setLogindate(Date logindate) {
		this.logindate = logindate;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
