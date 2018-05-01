package com.hz.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hz.entity.ActivityContent;
import com.hz.entity.First_item;
import com.hz.exception.MyException;
import com.hz.service.ActivityService;

@Controller
public class ActiveController {
	//注入到service层
	@Autowired
	private ActivityService activeService;
	
	//添加活动入口
	@RequestMapping(value="/addactive.do",method=RequestMethod.GET)
	public ModelAndView first_itemjsp(){
		System.out.println("nihaoa");
		ModelAndView mv = new ModelAndView("admin/addactive");
		return mv;
	}
	@RequestMapping(value="addactive.action",method=RequestMethod.POST)
	public String ActiveInsert(@ModelAttribute("isForm") ActivityContent active,MultipartFile imgFile,Model model) throws MyException {
		//获取图片上传路径及名称
		String filename = imgFile.getOriginalFilename();
		System.out.println(filename);
		if(!filename.equals("")) {
			String newFileName = UUID.randomUUID().toString()+filename.substring(filename.indexOf("."));
			newFileName = newFileName.substring(0,3)+"/"+newFileName;
			String path = ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath(File.separator)+"upload\\active\\";
			System.out.println(path);
			File picFile = new File(path+newFileName);
			try {
				if(!picFile.exists()) {
					picFile.mkdirs();
				}
				imgFile.transferTo(picFile);
				active.setImgFile(newFileName);;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		if(activeService.insertActive(active) == 1) {
			model.addAttribute("msg", "活动添加成功！");
			return "redirect:/selectallactive.action";
		}else {
			model.addAttribute("msg", "活动添加失败！");
			return "admin/addactive";
		}
	}
	//查询所有活动
	// 默认值为第一页数据
	@RequestMapping(value="selectallactive.action",method=RequestMethod.GET)
    public String electallactive(@RequestParam(value = "pn", defaultValue = "1") Integer pn,Model model,
    		@RequestParam(value = "id",required = false) Integer id,HttpServletRequest request) {
		// 引入PageHelper分页插件
		// 在查询之前只需要调用 pn=第几页，5=每页多少条
		PageHelper.startPage(pn, 5);
		System.out.println(id);
		List<ActivityContent> ac = null;
		if(id != null) {
			ac = activeService.SelectCondditonActive(id);
		}else {
			ac = activeService.selectAllActive();
		}
		// pageinfo包装查询后的结果，只需要pageinfo交给页面，封装了详细的信息
        // 5=传入分页连续显示的页数
    	PageInfo<ActivityContent> pageinfo = new PageInfo<ActivityContent>(ac, 5);
        model.addAttribute("pageInfo", pageinfo);
        request.setAttribute("queryCondition", id);
        model.addAttribute("activelist", ac);
        return "admin/activelist";
	}
	
    //删除活动
	@RequestMapping(value="deleteactive.do",method=RequestMethod.GET)
	public ModelAndView deleteactive(@RequestParam(value = "id", required = false, defaultValue = "Spring") int id) {
		   activeService.deleteactive(id);
		   ModelAndView mv = new ModelAndView("redirect:/selectallactive.action");
		   mv.addObject("msg", "删除成功！");
		   return mv;
	}
	//更新活动入口
	@RequestMapping(value="selecteactive.do",method=RequestMethod.GET)
	public String updateSelectactive(@RequestParam(value = "id", required = false, defaultValue = "Spring" )int id,Model model) {
		ActivityContent active = activeService.selectActiveService(id);
		model.addAttribute("active", active);
		return "admin/addactive";
	}

	@RequestMapping(value="updateactive.action",method=RequestMethod.POST)
	public String updateActive(@ModelAttribute("isForm") ActivityContent active,MultipartFile imgFile,Model model,String id) throws MyException {
		System.out.println("id is"+id);
		int a_id = Integer.parseInt(id);
		//获取图片上传路径及名称
		String filename = imgFile.getOriginalFilename();
		System.out.println(filename);
		if(!filename.equals("")) {
			String newFileName = UUID.randomUUID().toString()+filename.substring(filename.indexOf("."));
			newFileName = newFileName.substring(0,3)+"/"+newFileName;
			String path = ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath(File.separator)+"upload\\active\\";
			System.out.println(path);
			File picFile = new File(path+newFileName);
			try {
				if(!picFile.exists()) {
					picFile.mkdirs();
				}
				imgFile.transferTo(picFile);
				active.setImgFile(newFileName);;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		if(activeService.updateActive(a_id, active) == 1) {
			model.addAttribute("msg", "活动更新成功！");
			return "redirect:/selectallactive.action";
		}else {
			model.addAttribute("msg", "活动更新失败！");
			return "admin/addactive";
		}
	}
	
}
