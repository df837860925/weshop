package pojo;

public class Adress {
	@Override
	public String toString() {
		return "Adress [adressid=" + adressid + ", adressname=" + adressname
				+ ", adresstel=" + adresstel + ", adresssheng=" + adresssheng
				+ ", adressshi=" + adressshi + ", adressxian=" + adressxian
				+ ", adresszipcode=" + adresszipcode + ", adressdetail="
				+ adressdetail + "]";
	}

	private int adressid;
	private String adressname;
	private String adresstel;
	private String adresssheng;
	private String adressshi;
	private String adressxian;
	private String adresszipcode;// ÓÊÕş±àÂë
	private String adressdetail;// ÏêÏ¸µØÖ·

	public String getAdressname() {
		return adressname;
	}

	public void setAdressname(String adressname) {
		this.adressname = adressname;
	}

	public int getAdressid() {
		return adressid;
	}

	public void setAdressid(int adressid) {
		this.adressid = adressid;
	}

	public String getAdresstel() {
		return adresstel;
	}

	public void setAdresstel(String adresstel) {
		this.adresstel = adresstel;
	}

	public String getAdresssheng() {
		return adresssheng;
	}

	public void setAdresssheng(String adresssheng) {
		this.adresssheng = adresssheng;
	}

	public String getAdressshi() {
		return adressshi;
	}

	public void setAdressshi(String adressshi) {
		this.adressshi = adressshi;
	}

	public String getAdressxian() {
		return adressxian;
	}

	public void setAdressxian(String adressxian) {
		this.adressxian = adressxian;
	}

	public String getAdresszipcode() {
		return adresszipcode;
	}

	public void setAdresszipcode(String adresszipcode) {
		this.adresszipcode = adresszipcode;
	}

	public String getAdressdetail() {
		return adressdetail;
	}

	public void setAdressdetail(String adressdetail) {
		this.adressdetail = adressdetail;
	}

}
