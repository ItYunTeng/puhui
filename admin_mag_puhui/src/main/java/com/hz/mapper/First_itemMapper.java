package com.hz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hz.entity.ActivityContent;
import com.hz.entity.First_item;
import com.hz.entity.Page;

public interface First_itemMapper {
	//添加一级分类列表
	public int insertItem(First_item item);
	//删除一级分类
	public int deleteItem(@Param("item_id") int item_id);
	//查询一级分类的全部	
    public List<First_item> selectAllItem(Page page);//查询分类列表
    
    public List<First_item> getInvBycondtion(Page page);//根据编码查询分类列表
    
    public Integer searchTotalCount(Page page);//搜索总数量
    public List<First_item> selectall();
   
}
