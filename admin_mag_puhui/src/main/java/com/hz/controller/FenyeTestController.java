package com.hz.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hz.service.FenyeService;

@Controller
public class FenyeTestController {
	@Resource
	private FenyeService fenye;
	@RequestMapping("/fenye")
	public String fenyemain(@RequestParam(value = "currPage", defaultValue = "1",required=false) int currentPage,
			@RequestParam(value="pageSize",defaultValue = "10",required=false) int pageSize,Model model){
		if(currentPage<1) {
			currentPage = 1;
		}
		model.addAttribute("pagemsg",fenye.findByPage(currentPage, pageSize));
		return "fenye";
	}
}
