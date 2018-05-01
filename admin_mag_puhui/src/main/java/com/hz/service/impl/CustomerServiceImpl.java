package com.hz.service.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hz.entity.Customer;
import com.hz.mapper.CosUserMapper;
import com.hz.service.CustomerService;
@Service
public class CustomerServiceImpl implements CustomerService{
	@Resource
	private CosUserMapper customerLogin;

	@Override
	public Customer loginselectCustomer(Integer code, String pass) {
		Map<String , Object> loginMap = new HashMap<String,Object>();
		loginMap.put("c_code", code);
		loginMap.put("c_pass", pass);
		try {
			return customerLogin.loginCustomerselect(loginMap);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
