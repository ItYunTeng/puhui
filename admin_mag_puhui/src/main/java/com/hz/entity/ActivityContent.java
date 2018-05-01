package com.hz.entity;

import java.io.Serializable;
import java.util.Date;

public class ActivityContent implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private int active_id;
	private String activeName;
	private String activeContent;
	private Date startTime;
	private Date endTime;
	private String url;
	private String imgFile;
	private int item_id;
	private int judgehot;
	private First_item item;
	
	public int getActive_id() {
		return active_id;
	}
	public void setActive_id(int active_id) {
		this.active_id = active_id;
	}
	public String getActiveName() {
		return activeName;
	}
	public void setActiveName(String activeName) {
		this.activeName = activeName;
	}
	public String getActiveContent() {
		return activeContent;
	}
	public void setActiveContent(String activeContent) {
		this.activeContent = activeContent;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getImgFile() {
		return imgFile;
	}
	public void setImgFile(String imgFile) {
		this.imgFile = imgFile;
	}
	public int getItem_id() {
		return item_id;
	}
	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}
	public int getJudgehot() {
		return judgehot;
	}
	public void setJudgehot(int judgehot) {
		this.judgehot = judgehot;
	}
	public First_item getItem() {
		return item;
	}
	public void setItem(First_item item) {
		this.item = item;
	}
	@Override
	public String toString() {
		return "ActivityContent [active_id=" + active_id + ", activeName=" + activeName + ", activeContent="
				+ activeContent + ", startTime=" + startTime + ", endTime=" + endTime + ", url=" + url + ", imgFile="
				+ imgFile + ", item_id=" + item_id + ", judgehot=" + judgehot + ", item=" + item + "]";
	}
	
	
}
