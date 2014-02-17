package models;

public class MemberModel {
	private int member_id;
	private String member_email;
	private String member_password;
	private double member_money;
	private String member_role;
	
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}
	public double getMember_money() {
		return member_money;
	}
	public void setMember_money(double member_money) {
		this.member_money = member_money;
	}
	public String getMember_role() {
		return member_role;
	}
	public void setMember_role(String member_role) {
		this.member_role = member_role;
	}
}
