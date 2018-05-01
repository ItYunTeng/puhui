package com.hz.entity;

import java.io.Serializable;

public class Customer  implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private int c_id;
	private String c_name;
	private Integer c_code;
	private String c_phone;
	private String C_address;
	private String c_pass;
	
	public int getC_id() {
		return c_id;
	}

	public void setC_id(int c_id) {
		this.c_id = c_id;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public Integer getC_code() {
		return c_code;
	}

	public void setC_code(Integer c_code) {
		this.c_code = c_code;
	}

	public String getC_phone() {
		return c_phone;
	}

	public void setC_phone(String c_uphone) {
		this.c_phone = c_uphone;
	}

	public String getC_address() {
		return C_address;
	}

	public void setC_address(String c_address) {
		C_address = c_address;
	}

	public String getC_pass() {
		return c_pass;
	}

	public void setC_pass(String c_pass) {
		this.c_pass = c_pass;
	}

	@Override
	public String toString() {
		return "Customer [c_id=" + c_id + ", c_name=" + c_name + ", c_code=" + c_code + ", c_phone=" + c_phone
				+ ", C_address=" + C_address + ", c_pass=" + c_pass + "]";
	}
	
}
