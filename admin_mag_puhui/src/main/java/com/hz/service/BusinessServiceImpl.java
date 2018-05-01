package com.hz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hz.entity.Business;
import com.hz.mapper.BusinessMapper;
@Service
public class BusinessServiceImpl implements BusinessService{
	@Resource
	private BusinessMapper business;
	@Override
	public List<Business> selectBusSerive() {
		return business.selectBusList();
	}
	
}
