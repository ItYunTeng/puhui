package com.hz.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hz.entity.ActivityContent;
import com.hz.entity.First_item;
import com.hz.entity.Page;
import com.hz.mapper.First_itemMapper;
import com.hz.service.First_itemService;
import com.hz.util.PageBean;

@Service
public class First_itemSericeImpl implements First_itemService{
    @Autowired
	private First_itemMapper itemMapper;
    //添加分类
	@Override
	public int insertItem(First_item firstitem) {
		if(itemMapper.insertItem(firstitem) == 1) {
			return 1;
		}
		return 0;
	}
	
	//查询所有	
	@Override
	public List<First_item> selectAll(Page page) {
		List<First_item> item= itemMapper.selectAllItem(page);
		return item;
	}
	//搜索总数
	@Override
	public Integer searchTotalCount(Page page) {
		 return itemMapper.searchTotalCount(page);
	}
	//条件查询
	@Override
	public List<First_item> getInvBycondtion(Page page) {
		return itemMapper.getInvBycondtion(page);
	}
	//删除
	@Override
	public Integer deleteItem(Integer id) {
		return itemMapper.deleteItem(id);
	}

	@Override
	public List<First_item> selectService() {
		return itemMapper.selectall();
	}


}
