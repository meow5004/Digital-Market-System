package models;

public class TagModel {
	private int tag_id;
	private String tag_name;
	private int tag_count;
	
	public ProductModel[] getProducts(int start,int numberOfProducts){
		//TODO: Implement this method
		throw new UnsupportedOperationException();
	}
	
	public int getTag_id() {
		return tag_id;
	}
	public void setTag_id(int tag_id) {
		this.tag_id = tag_id;
	}
	public String getTag_name() {
		return tag_name;
	}
	public void setTag_name(String tag_name) {
		this.tag_name = tag_name;
	}
	public int getTag_count() {
		return tag_count;
	}
	public void setTag_count(int tag_count) {
		this.tag_count = tag_count;
	}
	
	
}
