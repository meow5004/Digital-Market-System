package models;

import java.sql.Date;

public class OrderModel {
	private int order_id;
	private int member_id;
	private Date order_time;
	private double order_total;
	private short order_status;
	
	public MemberModel getMember(){
		//TODO: Implement this method?
		throw new UnsupportedOperationException();
	}
	
	public ProductModel[] getProducts(){
		//TODO: Implement this method?
		throw new UnsupportedOperationException();
	}
	
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public Date getOrder_time() {
		return order_time;
	}
	public void setOrder_time(Date order_time) {
		this.order_time = order_time;
	}
	public double getOrder_total() {
		return order_total;
	}
	public void setOrder_total(double order_total) {
		this.order_total = order_total;
	}
	public short getOrder_status() {
		return order_status;
	}
	public void setOrder_status(short order_status) {
		this.order_status = order_status;
	}
	
	
}
