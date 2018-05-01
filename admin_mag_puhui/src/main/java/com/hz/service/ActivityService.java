package com.hz.service;

import java.util.List;

import com.hz.entity.ActivityContent;
import com.hz.util.PageBean;

public interface ActivityService {
	//插入活动
	public int insertActive(ActivityContent active);
	//分页查询所有的活动
	public List<ActivityContent> selectAllActive();
	//按条件查询
	public List<ActivityContent> SelectCondditonActive(int condtion);
	//查询单例
	public ActivityContent selectActiveService(int id);
	//删除活动
	public int deleteactive(Integer id);
	public int updateActive(int id,ActivityContent active);
	//查询总记录数
	public int selectCount();
	//分页操作
	public PageBean<ActivityContent> findByPage(int current,int pageSize);
	
	public List<ActivityContent> selectAllActiveById( int item_id);
	public int selectCountById( int item_id);//查询总数
	public  PageBean<ActivityContent> findByPageByid(int currPage, int pageSize, int item_id);
	
}
