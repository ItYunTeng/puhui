package com.hz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseController {
	@RequestMapping(value="/adminLogin.action")
	public String adminLogin() {
		return "admin/login";
	}
}
