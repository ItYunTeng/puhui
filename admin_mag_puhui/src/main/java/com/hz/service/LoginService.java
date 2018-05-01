package com.hz.service;

import com.hz.entity.Admin_user;

public interface LoginService {
	public Admin_user loginAdminService(String admin_telephone,String admin_pwd);
}
