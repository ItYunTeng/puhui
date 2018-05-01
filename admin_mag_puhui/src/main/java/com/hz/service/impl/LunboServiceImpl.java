package com.hz.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hz.entity.Turn_lunbo;
import com.hz.service.LunboService;
import com.hz.mapper.TurnLunboMapper;

@Service
public class LunboServiceImpl implements LunboService{
	@Autowired
	private TurnLunboMapper turnLunboMapper;
	
	@Override
	public List<Turn_lunbo> selectLunbo() {
		return turnLunboMapper.selectImg();
	}

}
