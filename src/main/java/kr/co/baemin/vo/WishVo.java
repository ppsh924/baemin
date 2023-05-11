package kr.co.baemin.vo;

public class WishVo {
	private int id;
	private String fcode,userid,writeday;
	
	private int star,minorder,baeprice;
	private String fimg,shop,baetime;
	
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public int getMinorder() {
		return minorder;
	}
	public void setMinorder(int minorder) {
		this.minorder = minorder;
	}
	public int getBaeprice() {
		return baeprice;
	}
	public void setBaeprice(int baeprice) {
		this.baeprice = baeprice;
	}
	public String getFimg() {
		return fimg;
	}
	public void setFimg(String fimg) {
		this.fimg = fimg;
	}
	public String getShop() {
		return shop;
	}
	public void setShop(String shop) {
		this.shop = shop;
	}
	public String getBaetime() {
		return baetime;
	}
	public void setBaetime(String baetime) {
		this.baetime = baetime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFcode() {
		return fcode;
	}
	public void setFcode(String fcode) {
		this.fcode = fcode;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getWriteday() {
		return writeday;
	}
	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}
}
