package com.hz.util;

import java.io.Serializable;
import java.util.List;

import com.hz.entity.First_item;

@SuppressWarnings("all")
public class PageBean<T> implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private int currPage;//当前页数
	private int pageSize;//每页显示的记录数
	private int totalCount;//总记录数
	private int totalPage;//总页数
	private List<T> lists;//每页显示的数据
	private int startRow;//起始行号
	private boolean hasFirst;// 是否有首页 
	private boolean hasPreviousPage;// 是否有前一页 
	private boolean hasNextPage;// 是否有下一页 
	private boolean hasLast;// 是否有最后一页
	private String queryCondition;//查询条件
	
	public String getQueryCondition() {
		return queryCondition;
	}

	public void setQueryCondition(String queryCondition) {
		this.queryCondition = queryCondition;
	}

	public PageBean() {
		super();
	}

	/** 
    * 取得选择记录的初始位置 
    * @return 
    */
	public int getStartRow() {
		int startRow= (currPage-1) * pageSize;
		System.out.println(startRow);
		return startRow; 
	}
	
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	
	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	/** 
    * 取得总页数，总页数=总记录数/总页数 
    * @return 
    */
	public int getTotalPage() {
		 if(totalCount % pageSize == 0 ) {
			 return totalPage = totalCount/pageSize;
		 }else {
			 return totalPage = (totalCount/pageSize)+1;
		 } 
	}
	
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	/** 
	  * 是否是第一页 
	  * @return 
	  */
	public boolean isHasFirst() {
		return (currPage == 1) ? false : true; 
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
		return (currPage == getTotalPage()) ? false : true; 
	}
	
	public void setHasLast(boolean hasLast) {
		this.hasLast = hasLast;
	}

	public List<T> getLists() {
		return lists;
	}
	public void setLists(List<T> lists) {
		this.lists = lists;
	}

	@Override
	public String toString() {
		return "PageBean [currPage=" + currPage + ", pageSize=" + pageSize + ", totalCount=" + totalCount
				+ ", totalPage=" + totalPage + ", lists=" + lists + ", startRow=" + startRow + ", hasFirst=" + hasFirst
				+ ", hasPreviousPage=" + hasPreviousPage + ", hasNextPage=" + hasNextPage + ", hasLast=" + hasLast
				+ ", queryCondition=" + queryCondition + "]";
	}
	
	
	
}
