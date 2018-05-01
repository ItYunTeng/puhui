package com.hz.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hz.entity.FenyeTest;
import com.hz.mapper.FenyeTestMapper;
import com.hz.service.FenyeService;
import com.hz.util.PageBean;

@Service
public class FenyeServiceImpl implements FenyeService{
	@Resource
	private FenyeTestMapper fenye;

	@Override
	public List<FenyeTest> selectAllLists() {
		return fenye.selectAllList();
	}

	@Override
	public int selectCount() {
		int count = fenye.selectCount();
		System.out.println(count);
		return count;
	}

	@Override
	public PageBean<FenyeTest> findByPage(int currPage, int pageSize) {
		HashMap<String,Object> map = new HashMap<String,Object>();
		PageBean<FenyeTest> pageBean = new PageBean<FenyeTest>();
		//每页显示的数据
		System.out.println(currPage);
		
		pageBean.setPageSize(pageSize);
		//总记录数
		int totalCount = fenye.selectCount();
		pageBean.setTotalCount(totalCount);
		//分装当前页数
		pageBean.setCurrPage(currPage);;
		
		map.put("startRow",pageBean.getStartRow());
		map.put("pageSize",pageBean.getPageSize());
		
		//分装每页显示的数据
		List<FenyeTest> lists = fenye.findByPage(map);
		pageBean.setLists(lists);
		return pageBean;
	}

}
