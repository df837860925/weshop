package service.kqx.form;

import service.core.ActionForm;

public class tijiaoForm extends ActionForm {
	public String adress;
	public String map;
	public String Order_mes;

	public String getOrder_mes() {
		return Order_mes;
	}

	public void setOrder_mes(String order_mes) {
		Order_mes = order_mes;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public String getMap() {
		return map;
	}

	public void setMap(String map) {
		this.map = map;
	}

	@Override
	public void flagfunction() {

	}

}
