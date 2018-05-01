package com.hz.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

public class MyExceptionHandler implements HandlerExceptionResolver{

	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception ex) {
		ex.printStackTrace();
		MyException myException = null;
		if(ex instanceof MyException) {
			myException = (MyException) ex;
		}else {
			myException = new MyException(ex.getMessage());
		}
		@SuppressWarnings("unused")
		String message = myException.getMessage();
		ModelAndView mv = new ModelAndView("admin/");
		mv.addObject("message","系统未知错误！");
		mv.setViewName("error");
		return mv;
	}

}
