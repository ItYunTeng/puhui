package com.hz.service;
import java.util.List;

import com.hz.entity.FenyeTest;
import com.hz.util.PageBean;

public interface FenyeService {
	//查询所有数据
	public List<FenyeTest> selectAllLists();
	//查询总记录数
	public int selectCount();
	//分页操作
	public PageBean<FenyeTest> findByPage(int current,int pageSize);
}
