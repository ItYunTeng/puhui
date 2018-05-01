package com.hz.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.hz.entity.ActivityContent;
import com.hz.entity.FenyeTest;

public interface FenyeTestMapper {
	public List<FenyeTest> selectAllList();//查询所有
	public int selectCount();//查询总数
	//符合条件查询总数
	public Map<String,Object> selecttListContionCount(Map<String,Object> query);
	//符合条件的结果集
	public List<Map<String,Object>> selectListContion(Map<String,Object> query);
	//根据条件查询数据 HashMap<String,Object> conditon 将所有的条件保存到map中即可匹配
	//String为要匹配的字段名，Object为字段值，也是分页条件 limit？ ？
	public List<FenyeTest> findByPage(HashMap<String,Object> map);
}
