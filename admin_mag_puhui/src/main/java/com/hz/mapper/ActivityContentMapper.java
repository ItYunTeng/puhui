package com.hz.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.hz.entity.ActivityContent;

public interface ActivityContentMapper {
	//新增活动内容
	public int insertActive(ActivityContent active);
	//查询基本活动的所有列表
	public List<ActivityContent> selectAllActive(ActivityContent active);
	//按条件查询
	public List<ActivityContent> getActBycondtion(@Param("item_id") int items_id);
	
	public ActivityContent selectActive(@Param("active_id") int active_id);
	//删除活动
	public int deleteActivd(@Param("active_id") int active_id);
	//更新活动
	public int updateActive(ActivityContent active);
	//热门前六条
	public List<ActivityContent> selectsixActive();
	//二级页面的多条件分类查询
	public List<ActivityContent> selectAllActive();//查询所有
	public int selectCount();//查询总数
	//符合条件
	public List<Map<String,Object>> selecttListContionCount(Map<String,Object> query);
	//符合条件的查询总数
	public int selectListContion(Map<String,Object> query);
	//根据条件查询数据 HashMap<String,Object> conditon 将所有的条件保存到map中即可匹配
	//String为要匹配的字段名，Object为字段值，也是分页条件 limit？ ？
	public List<ActivityContent> findByPage(HashMap<String,Object> map);
	 //分类分页查询
  	public List<ActivityContent> selectAllActiveById(@Param("item_id") int item_id);
	public int selectCountById(@Param("item_id") int item_id);//查询总数
	public List<ActivityContent> findByPageByid(HashMap<String,Object> map);
	
	
}
