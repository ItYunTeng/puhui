package com.hz.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Indexinterfzce {
	@RequestMapping("head.do")
	public String top() {
		return "admin/head";
	}
	@RequestMapping("left.do")
	public String left() {
		return "admin/left";
	}
	@RequestMapping("right.do")
	public String right() {
		return "admin/right";
	}
	
}