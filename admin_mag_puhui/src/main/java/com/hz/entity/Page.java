package com.hz.entity;

import java.io.Serializable;

@SuppressWarnings("all")
public class Page implements Serializable{
	private static final long serialVersionUID = 1L;
	/**
	 * 查询页属性
	 */
   private int startRow;//起始行号
   private int pageSize;//每页显示数量
   private int pageNum;//当前页码
   private int pages;//总页数
   private int total;//总条数
   private boolean hasFirst;// 是否有首页 
   private boolean hasPreviousPage;// 是否有前一页 
   private boolean hasNextPage;// 是否有下一页 
   private boolean hasLast;// 是否有最后一页
   private int queryCondition;
   
   /** 
    * 通过构造函数 传入 总记录数 和 当前页 
    * @param totalCount 
    * @param pageNow 
    */
   public Page(int totalCount, int pageNow) { 
    this.total = totalCount; 
    this.pageNum = pageNow; 
   }
   public Page() {}
   /** 
    * 取得选择记录的初始位置 
    * @return 
    */
	public int getStartRow() {
		return (pageNum - 1) * pageSize; 
	}
	
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	
	public int getPageSize() {
		return pageSize;
	}
	
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public int getPageNum() {
		return pageNum;
	}
	
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	
	/** 
    * 取得总页数，总页数=总记录数/总页数 
    * @return 
    */
	
	public int getPages() {
		 pages = getTotal() / getPageSize(); 
		 return (total % pageSize == 0) ? pages : pages + 1; 
	}
	
	public void setPages(int pages) {
		this.pages = pages;
	}
	
	public int getTotal() {
		return total;
	}
	
	public void setTotal(int total) {
		this.total = total;
	}
	/** 
	  * 是否是第一页 
	  * @return 
	  */
	public boolean isHasFirst() {
		return (pageNum == 1) ? false : true; 
	}
	
	public void setHasFirst(boolean hasFirst) {
		this.hasFirst = hasFirst;
	}
	
	/** 
	  * 是否有首页 
	  * @return 
	  */
	public boolean isHasPreviousPage() {
		// 如果有首页就有前一页，因为有首页就不是第一页 
		return isHasFirst() ? true : false; 
	}
	
	public void setHasPreviousPage(boolean hasPreviousPage) {
		this.hasPreviousPage = hasPreviousPage;
	}
	
	/** 
	  * 是否有下一页 
	  * @return 
	  */
	public boolean isHasNextPage() {
		// 如果有尾页就有下一页，因为有尾页表明不是最后一页 
		return isHasLast() ? true : false; 
	}
	
	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}
	
	/** 
	  * 是否有尾页 
	  * @return 
	  */
	
	public boolean isHasLast() {
		// 如果不是最后一页就有尾页 
		return (pageNum == getTotal()) ? false : true; 
	}
	
	public void setHasLast(boolean hasLast) {
		this.hasLast = hasLast;
	}
	
	public int getQueryCondition() {
		return queryCondition;
	}
	
	public void setQueryCondition(int queryCondition) {
		this.queryCondition = queryCondition;
	} 
   
}
