package com.hz.entity;

import java.io.Serializable;

public class Turn_lunbo  implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private int img_id;//轮播图编号
	private String img_url;//链接请求
	private String img_src;//存储路径
	public int getImg_id() {
		return img_id;
	}
	public void setImg_id(int img_id) {
		this.img_id = img_id;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getImg_src() {
		return img_src;
	}
	public void setImg_src(String img_src) {
		this.img_src = img_src;
	}
	@Override
	public String toString() {
		return "Turn_lunbo [img_id=" + img_id + ", img_url=" + img_url + ", img_src=" + img_src + "]";
	}
	
	
}
