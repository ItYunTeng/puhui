package com.hz.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hz.entity.Admin_user;
import com.hz.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	public LoginService loginService;
	@RequestMapping(value="/adminlogin.action",method=RequestMethod.POST)
	public ModelAndView customerlogin(HttpServletRequest request,HttpSession session,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String phone = request.getParameter("phone");
		String pass = request.getParameter("password");
		String valiCode = request.getParameter("valiCode");
		String random = (String) session.getAttribute("RANDOMVALIDATECODEKEY");
		System.out.println(phone+"----"+pass);
		ModelAndView mv = new ModelAndView("admin/login");
		if(!phone.equals("") || !pass.equals("")) {
			if(random.equalsIgnoreCase(valiCode)) {
				try {
					Admin_user admin = loginService.loginAdminService(phone, pass);
					System.out.println(admin);
					if(admin != null || phone.equals(admin.getAdmin_telephone()) || pass.equals(admin.getAmdin_pwd())) {
						session.setAttribute("admin", admin);
						session.setAttribute("date", new Date());
						System.out.println(admin);
						mv.setViewName("admin/index");
						return mv;
					}
				} catch (Exception e) {
					e.printStackTrace();
					mv.addObject("admin", "用户名或密码错误！");
				}
			}else {
				mv.addObject("admin", "验证码错误！");
				return mv;
			}
		}else {
			mv.addObject("admin", "用户名或密码不能为空！");
			return mv;
		}
		return mv;
	}
}
