package com.hz.entity;

import java.io.Serializable;

public class First_item implements Serializable{
	/**
	 * 产品的一级分类
	 */
	private static final long serialVersionUID = 1L;
	private int item_id;
	private String item_name;
	private String item_code;
	
	public int getItem_id() {
		return item_id;
	}
	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_code() {
		return item_code;
	}
	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}
	@Override
	public String toString() {
		return "First_item [item_id=" + item_id + ", item_name=" + item_name + ", item_code=" + item_code + "]";
	}
	
	
	
}
