package models;

import java.sql.Date;

public class ProductModel {
	private int product_id;
	private String product_name;
	private double product_price;
	private String product_img;
	private String product_desc;
	private String product_realpath;
	private Date product_addtime;
	private Date product_updatetime;
	private int member_id;
	
	public TagModel[] getTags(){
		//TODO: Implement this method
		throw new UnsupportedOperationException();
	}
	
	public MemberModel getCreator(){
		//TODO: Implement this method
		throw new UnsupportedOperationException();
	}
	
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public double getProduct_price() {
		return product_price;
	}
	public void setProduct_price(double product_price) {
		this.product_price = product_price;
	}
	public String getProduct_img() {
		return product_img;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public String getProduct_desc() {
		return product_desc;
	}
	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}
	public String getProduct_realpath() {
		return product_realpath;
	}
	public void setProduct_realpath(String product_realpath) {
		this.product_realpath = product_realpath;
	}
	public Date getProduct_addtime() {
		return product_addtime;
	}
	public void setProduct_addtime(Date product_addtime) {
		this.product_addtime = product_addtime;
	}
	public Date getProduct_updatetime() {
		return product_updatetime;
	}
	public void setProduct_updatetime(Date product_updatetime) {
		this.product_updatetime = product_updatetime;
	}
}
