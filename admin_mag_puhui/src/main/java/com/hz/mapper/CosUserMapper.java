package com.hz.mapper;

import java.sql.SQLException;
import java.util.Map;

import com.hz.entity.Customer;

public interface CosUserMapper {
	//登陆入口
	Customer loginCustomerselect(Map<String, Object> loginMap) throws SQLException;
}
