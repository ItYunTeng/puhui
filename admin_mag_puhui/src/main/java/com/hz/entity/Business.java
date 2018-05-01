package com.hz.entity;

public class Business {
	private int id;
	private String bus_name;
	private Integer bus_code;
	private String bus_url;
	private String bus_img;
	private String bus_content;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBus_name() {
		return bus_name;
	}
	public void setBus_name(String bus_name) {
		this.bus_name = bus_name;
	}
	public Integer getBus_code() {
		return bus_code;
	}
	public void setBus_code(Integer bus_code) {
		this.bus_code = bus_code;
	}
	public String getBus_url() {
		return bus_url;
	}
	public void setBus_url(String bus_url) {
		this.bus_url = bus_url;
	}
	public String getBus_img() {
		return bus_img;
	}
	public void setBus_img(String bus_img) {
		this.bus_img = bus_img;
	}
	public String getBus_content() {
		return bus_content;
	}
	public void setBus_content(String bus_content) {
		this.bus_content = bus_content;
	}
	@Override
	public String toString() {
		return "Business [id=" + id + ", bus_name=" + bus_name + ", bus_code=" + bus_code + ", bus_url=" + bus_url
				+ ", bus_img=" + bus_img + ", bus_content=" + bus_content + "]";
	}
	
	
}
