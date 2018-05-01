package com.hz.service.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hz.entity.Admin_user;
import com.hz.mapper.LoginMapper;
import com.hz.service.LoginService;
@Service
public class LoginServiceImpl implements LoginService{
	
    @Autowired
    private LoginMapper loginMapper;
	@Override
	public Admin_user loginAdminService(String admin_telephone, String admin_pwd) {
		Map<String , Object> adminMap = new HashMap<String,Object>();
		adminMap.put("admin_telephone", admin_telephone);
		adminMap.put("admin_pwd", admin_pwd);
		try {
			return loginMapper.loginAdminselect(adminMap);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
