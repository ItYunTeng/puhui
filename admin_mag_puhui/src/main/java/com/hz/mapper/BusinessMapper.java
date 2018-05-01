package com.hz.mapper;

import java.util.List;

import com.hz.entity.Business;

public interface BusinessMapper {
	//活动商家查询，按照id降序规则，只显示前4条
	public List<Business> selectBusList();
}
