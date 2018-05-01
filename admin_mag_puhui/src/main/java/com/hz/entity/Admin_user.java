package com.hz.entity;

public class Admin_user {
	private int admin_id;
	private String admin_name;
	private String admin_pwd;
	private String admin_telephone;
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name == null ? null:admin_name.trim();
	}
	public String getAdmin_telephone() {
		return admin_telephone;
	}
	public void setAdmin_telephone(String admin_telephone) {
		this.admin_telephone = admin_telephone;
	}
	public String getAmdin_pwd() {
		return admin_pwd;
	}
	public void setAmdin_pwd(String amdin_pwd) {
		this.admin_pwd = amdin_pwd == null ? null:admin_pwd.trim();
	}
	@Override
	public String toString() {
		return "Admin_user [admin_id=" + admin_id + ", admin_name=" + admin_name + ", admin_pwd=" + admin_pwd
				+ ", admin_telephone=" + admin_telephone + "]";
	}
	
	
	
}
