package com.hz.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.hz.entity.First_item;
import com.hz.entity.Page;
import com.hz.exception.MyException;
import com.hz.service.First_itemService;

@Controller
@Scope("prototype")
public class ItemController {
	@Autowired
	private First_itemService itemService;
	//分类入口
	@RequestMapping(value="/additem.do",method=RequestMethod.GET)
	public ModelAndView first_itemjsp(){
		ModelAndView mv = new ModelAndView("admin/additem");
		return mv;
	}
	//添加分类
	@RequestMapping(value="firstitem.action",method=RequestMethod.POST)
	public String first_item(@ModelAttribute("form") First_item firstitem,Model model) throws IOException{
		int res = 0;
		try {
			res = itemService.insertItem(firstitem);
		} catch (Exception e) {
			model.addAttribute("msg","分类编码冲突或为空！");
			return "admin/additem";
		}
		if( res == 1) {
			return "redirect:/selectallitem.action"; 
		}else {
			model.addAttribute("msg", "添加失败,分类编码冲突!");
			return "admin/additem";
		}
		 
	}
	//分页查询所有分类
    @SuppressWarnings("unused")
	@RequestMapping(value="selectallitem.action",method=RequestMethod.GET)
    public String searchInvList(Page page,HttpServletRequest request) throws UnsupportedEncodingException {
        //组装page对象,传入方法中查询列表 回显数据
        Page p =page;
        int pageSize=5; //设置每页大小
        p.setPageSize(pageSize);
        int curPage=p.getPageNum();
        if (curPage==0) {
            curPage=1;
            p.setPageNum(curPage);;
        }
        int startRow =page.getStartRow();
        if (!(p.getPageNum()==0)) {
             startRow = getStartRowBycurrentPage(curPage, pageSize);
        }
        p.setStartRow(startRow);
        String queryCondition=null;
        List<First_item> itemlist = getInvListByCondition(page);
        Integer totalCounts = itemService.searchTotalCount(page);//总条数
        int totalPages=(totalCounts%pageSize==0)?(totalCounts/pageSize):(totalCounts/pageSize+1);//总页数=总条数/页大小+1
        p.setPages(totalPages);;//总页数
        page.setTotal(totalCounts);//总行数
        request.setAttribute("itemlist", itemlist);
        request.setAttribute("page", page);
        return "admin/itemlist";
    }
    //条件查询列表
    private List<First_item> getInvListByCondition(Page page) {
        List<First_item> itemList =null;
	    itemList = itemService.selectAll(page);
	    return itemList;
    }

    /**
     * 根据当前页获取开始行
     * @param currentPage
     * @param pageSize
     * @return
     */
    public int getStartRowBycurrentPage(int currentPage,int pageSize){
        int startRow=0;
        if (currentPage==1) {
            return startRow=0;
        }
        startRow=(currentPage-1)*pageSize;
        return startRow;
    }
    
    /**
     * 删除的方法
     * @param id
     * @return
     */
   @RequestMapping(value="delete.do",method=RequestMethod.GET)
   public ModelAndView deleteItem(@RequestParam(value = "id", required = false, defaultValue = "Spring") int id) {
	   ModelAndView mv = new ModelAndView("admin/itemlist");
	   try {
		   itemService.deleteItem(id);
		   mv.addObject("msg", "删除成功！");
		   return mv;
		} catch (Exception e) {
			 mv.addObject("msg", "有关联活动无法删除！");
			 return mv;
		}
   }
   /**
    * 选择分类
    * @return
    */
   @RequestMapping(value="item.do",method=RequestMethod.GET)
   public @ResponseBody String selectAllItem1() {
	   List<First_item> items = itemService.selectService();
	   String jsonString = JSON.toJSONString(items);
	   System.out.println(jsonString);
	   return jsonString;
   }
}

