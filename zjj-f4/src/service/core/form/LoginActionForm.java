package service.core.form;

import service.core.ActionForm;

public class LoginActionForm extends ActionForm{
	private String loginShoujihao;
	private String loginPassword;
	

	public String getLoginShoujihao() {
		return loginShoujihao;
	}

	public void setLoginShoujihao(String loginShoujihao) {
		this.loginShoujihao = loginShoujihao;
	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}
	
	

	@Override
	public String toString() {
		return "LoginActionForm [loginShoujihao=" + loginShoujihao
				+ ", loginPassword=" + loginPassword + "]";
	}

	@Override
	public void flagfunction() {
		System.out.println("到了登录表单");
		
	}
}
