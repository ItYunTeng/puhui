package com.hz.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hz.entity.ActivityContent;
import com.hz.mapper.ActivityContentMapper;
import com.hz.service.ActivityService;
import com.hz.util.PageBean;
@Service
public class active implements ActivityService{
	@Autowired
	private ActivityContentMapper activeMapper;
	//插入活动
	@Override
	public int insertActive(ActivityContent active) {
		return activeMapper.insertActive(active);
	}
	//查询所有
	@Override
	public List<ActivityContent> selectAllActive() {
		return activeMapper.selectAllActive();
	}
	@Override
	public List<ActivityContent> SelectCondditonActive(int condtion) {
		return activeMapper.getActBycondtion(condtion);
	}
	@Override
	public int deleteactive(Integer id) {
		return activeMapper.deleteActivd(id);
	}
	@Override
	public ActivityContent selectActiveService(int id) {
		return activeMapper.selectActive(id);
	}
	@Override
	public int updateActive(int active_id,ActivityContent active) {
		if(active_id != active.getActive_id()) {
			active.setActive_id(active_id);
		}
		return activeMapper.updateActive(active);
	}
	@Override
	public int selectCount() {
		int count = activeMapper.selectCount();
		return count;
	}
	@Override
	public PageBean<ActivityContent> findByPage(int currPage, int pageSize) {
		HashMap<String,Object> map = new HashMap<String,Object>();
		PageBean<ActivityContent> pageBean = new PageBean<ActivityContent>();
		//每页显示的数据
		System.out.println(currPage);
		
		pageBean.setPageSize(pageSize);
		//总记录数
		int totalCount = activeMapper.selectCount();
		pageBean.setTotalCount(totalCount);
		//分装当前页数
		pageBean.setCurrPage(currPage);;
		
		map.put("startRow",pageBean.getStartRow());
		map.put("pageSize",pageBean.getPageSize());
		
		//分装每页显示的数据
		List<ActivityContent> lists = activeMapper.findByPage(map);
		pageBean.setLists(lists);
		return pageBean;
	}
	@Override
	public List<ActivityContent> selectAllActiveById(int item_id) {
		return activeMapper.selectAllActiveById(item_id);
	}
	@Override
	public int selectCountById(int item_id) {
		return activeMapper.selectCountById(item_id);
	}
	@Override
	public  PageBean<ActivityContent> findByPageByid(int currPage, int pageSize, int item_id) {
		HashMap<String,Object> map = new HashMap<String,Object>();
		PageBean<ActivityContent> pageBean = new PageBean<ActivityContent>();
		//每页显示的数据
		System.out.println(currPage);
		
		pageBean.setPageSize(pageSize);
		System.out.println("------------分类id-----------");
		System.out.println(item_id);
		//总记录数
		int totalCount = activeMapper.selectCountById(item_id);
		pageBean.setTotalCount(totalCount);
		//分装当前页数
		pageBean.setCurrPage(currPage);;
		
		map.put("item_id",item_id);
		map.put("startRow",pageBean.getStartRow());
		map.put("pageSize",pageBean.getPageSize());
		
		
		//分装每页显示的数据
		List<ActivityContent> lists = activeMapper.findByPageByid(map);
		for(ActivityContent active : lists) {
			System.out.println("----------结果集-------");
			System.out.println(active);
		}
		
		pageBean.setLists(lists);
		return pageBean;
	}

}
