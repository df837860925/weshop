package service.wkr.form;

import service.core.ActionForm;

public class LoginActionForm extends ActionForm {
	private String loginShoujihao;
	private String loginPassword;
	private String goods_id = "";

	public String getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}

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
		System.out.println("���˵�¼����");

	}
}
