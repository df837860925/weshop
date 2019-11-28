package service.core.form;

import service.core.ActionForm;

public class ZhuceActionForm extends ActionForm{
	private String zhucePhone;
	private String yanZhengma;
	private String shoujiYanzhengma;
	private String zhucePassword;
	private String zhuceEmail;
	public String getZhucePhone() {
		return zhucePhone;
	}
	public void setZhucePhone(String zhucePhone) {
		this.zhucePhone = zhucePhone;
	}
	public String getYanZhengma() {
		return yanZhengma;
	}
	public void setYanZhengma(String yanZhengma) {
		this.yanZhengma = yanZhengma;
	}
	public String getShoujiYanzhengma() {
		return shoujiYanzhengma;
	}
	public void setShoujiYanzhengma(String shoujiYanzhengma) {
		this.shoujiYanzhengma = shoujiYanzhengma;
	}
	public String getZhucePassword() {
		return zhucePassword;
	}
	public void setZhucePassword(String zhucePassword) {
		this.zhucePassword = zhucePassword;
	}
	public String getZhuceEmail() {
		return zhuceEmail;
	}
	public void setZhuceEmail(String zhuceEmail) {
		this.zhuceEmail = zhuceEmail;
	}
	@Override
	public String toString() {
		return "ZhuceActionForm [zhucePhone=" + zhucePhone + ", yanZhengma="
				+ yanZhengma + ", shoujiYanzhengma=" + shoujiYanzhengma
				+ ", zhucePassword=" + zhucePassword + ", zhuceEmail="
				+ zhuceEmail + "]";
	}
	@Override
	public void flagfunction() {
		// TODO Auto-generated method stub
		
	}
}
