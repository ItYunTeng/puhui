package com.hz.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hz.entity.ActivityContent;
import com.hz.entity.Business;
import com.hz.entity.First_item;
import com.hz.entity.Turn_lunbo;
import com.hz.service.ActivityService;
import com.hz.service.BusinessService;
import com.hz.service.First_itemService;
import com.hz.service.LunboService;
import com.hz.util.PageBean;

@Controller
public class IndexSelect {
	//注入到service层
	@Autowired
	private First_itemService itemService;
	@Autowired
	private ActivityService activeService;
	@Autowired
	private LunboService lunboService;
	@Autowired
	private BusinessService busi;
	//前台查询热门推荐前6条
	@ModelAttribute("active")
	public List<ActivityContent> selecthotsix(){
		List<ActivityContent> actives = activeService.selectAllActive();
		return actives;
	}  
   //前台查询所有分类
   @ModelAttribute("items")
   public List<First_item> selectFive() {
	   List<First_item> items = itemService.selectService();
	   return items;
   }
   
   //前台查询所有分类
   @ModelAttribute("lunbo")
   public List<Turn_lunbo> lunbo() {
	   List<Turn_lunbo> lunbo = lunboService.selectLunbo();
	   return lunbo;
   }
   //前台查询前四条
   @ModelAttribute("busi")
   public List<Business> selectAllBus(){
	   List<Business> bus = busi.selectBusSerive();
	   return bus;
   }
   	//多条件查询的活动列表
   	@ModelAttribute("page")
	public PageBean<ActivityContent> fenyemain(@RequestParam(value = "currPage", defaultValue = "1",required=false) int currentPage,
			@RequestParam(value="pageSize",defaultValue = "5",required=false) int pageSize){
		if(currentPage<1) {
			currentPage = 1;
		}
		PageBean<ActivityContent> page = activeService.findByPage(currentPage, pageSize);
		return page;
	}
   	//更多跳
    @RequestMapping(value="second.action")
    public ModelAndView seconde(@ModelAttribute("items") List<First_item> items,
 		   @ModelAttribute("page") PageBean<ActivityContent> page) {
 	   ModelAndView mv = new ModelAndView("index/activelist");
 	   mv.addObject("items", items);
 	   mv.addObject("pagemsg",page);
 	   return mv;
    }
    //根据商品类型查询，一对多的查询
   	//多条件查询的活动列表
   	@RequestMapping(value="itemByid.action")
	public ModelAndView selectByidActive(@RequestParam(value = "currPage", defaultValue = "1",required=false) int currentPage,
			@RequestParam(value="pageSize",defaultValue = "5",required=false) int pageSize,
			@RequestParam(value="id", required=false) Integer id){
		if(currentPage<1) {
			currentPage = 1;
		}
		ActivityContent active = new ActivityContent();
		if(id == null) {
			id = active.getItem_id();
		}
		System.out.println("------------分类id-----------");
		System.out.println(id);
		PageBean<ActivityContent> pageid = activeService.findByPageByid(currentPage, pageSize, id);
		System.out.println(pageid);
		System.out.println("------------根据分类条件查询的结果-----------");
		System.out.println(pageid);
		ModelAndView mv = new ModelAndView("index/activelist");
		mv.wasCleared();
		mv.addObject("pagemsg",pageid);
		return mv;
	}
   
   
   //前台展示信息请求
   @RequestMapping(value="index.action")
   public ModelAndView select(@ModelAttribute("items") List<First_item> items,
		   @ModelAttribute("active") List<ActivityContent> actives,
		   @ModelAttribute("lunbo") List<Turn_lunbo> lunbo,
		   @ModelAttribute("busi") List<Business> bus){
	   ModelAndView mv = new ModelAndView("index/index");
	   mv.addObject("items", items);
	   mv.addObject("actives", actives);
	   mv.addObject("lunbo", lunbo);
	   mv.addObject("busi",bus);
	   return mv;
   }
}
