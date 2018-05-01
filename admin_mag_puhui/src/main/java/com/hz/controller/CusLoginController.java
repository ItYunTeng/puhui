package com.hz.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hz.entity.Customer;
import com.hz.service.CustomerService;
import com.hz.util.RandomValidateCode;

@Controller
public class CusLoginController {
	@Resource
	private CustomerService customer;
	
	/**
     * 登录页面生成验证码
     */
    @RequestMapping(value = "/vCode")
    public void getVerify(HttpServletRequest request, HttpServletResponse response){
        response.setContentType("image/jpeg");//设置相应类型,告诉浏览器输出的内容为图片
        response.setHeader("Pragma", "No-cache");//设置响应头信息，告诉浏览器不要缓存此内容
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expire", 0);
        RandomValidateCode randomValidateCode = new RandomValidateCode();
        try {
            randomValidateCode.getRandcode(request, response);//输出验证码图片方法
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @RequestMapping(value="/userlogin.action",method=RequestMethod.POST)
    @ResponseBody
	public String customerlogin(HttpServletRequest request,HttpSession session,HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String codeString = request.getParameter("username");
		System.out.println(codeString);
		String pass = request.getParameter("password");
		System.out.println(pass);
		String valiCode = request.getParameter("valiCode");
		String random = (String) session.getAttribute("RANDOMVALIDATECODEKEY");
		if(!codeString.equals("") || !pass.equals("")) {
			int code = Integer.parseInt(codeString);
			if(random.equalsIgnoreCase(valiCode)) {
				try {
					Customer user = customer.loginselectCustomer(code, pass);
					if(user != null || code == user.getC_code() && pass.equals(user.getC_pass())) {
						session.setAttribute("user", user);
						System.out.println(user);
						return"{\"ok\":0}";
					}
				} catch (Exception e) {
					return"{\"ok\":1}";
				}
			}
			return "{\"ok\":2}";
		}
		return "{\"ok\":3}";
	}
}
