package com.hz.service;

import java.util.List;

import com.hz.entity.ActivityContent;
import com.hz.entity.First_item;
import com.hz.entity.Page;
import com.hz.util.PageBean;

public interface First_itemService {
	public int insertItem(First_item firstitem);
    public List<First_item> selectAll(Page page);
    public Integer searchTotalCount(Page page);
    public Integer deleteItem(Integer id);
    public List<First_item> getInvBycondtion(Page page);
    public List<First_item> selectService();
}
