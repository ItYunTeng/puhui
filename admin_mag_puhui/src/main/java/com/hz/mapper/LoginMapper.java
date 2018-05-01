package com.hz.mapper;

import java.sql.SQLException;
import java.util.Map;

import com.hz.entity.Admin_user;
public interface LoginMapper {
	
	//管理员登陆入口
	Admin_user loginAdminselect(Map<String, Object> loginMap) throws SQLException;
}

