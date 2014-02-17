package models;

import java.sql.Date;

public class ReviewModel {
	private int review_id;
	private short review_star;
	private Date review_addtime;
	private String review_content;
	private int member_id;
	private int product_id;
	
	public MemberModel getUser(){
		//TODO: Implement this method
		throw new UnsupportedOperationException();
	}
	
	public ProductModel getProduct(){
		//TODO: Implement this method?
		throw new UnsupportedOperationException();
	}
	
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public short getReview_star() {
		return review_star;
	}
	public void setReview_star(short review_star) {
		this.review_star = review_star;
	}
	public Date getReview_addtime() {
		return review_addtime;
	}
	public void setReview_addtime(Date review_addtime) {
		this.review_addtime = review_addtime;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
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
	
	
}
