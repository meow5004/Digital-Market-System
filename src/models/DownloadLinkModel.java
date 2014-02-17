package models;

public class DownloadLinkModel {
	private String dl_id;
	private int member_id;
	private int product_id;

	public MemberModel getMember() {
		// TODO: Implement this method?
		throw new UnsupportedOperationException();
	}

	public ProductModel getProduct() {
		// TODO: Implement this method?
		throw new UnsupportedOperationException();
	}

	public String getDl_id() {
		return dl_id;
	}

	public void setDl_id(String dl_id) {
		this.dl_id = dl_id;
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
