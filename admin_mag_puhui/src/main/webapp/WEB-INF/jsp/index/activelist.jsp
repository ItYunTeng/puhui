<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>海口国家高新区人才服务服务平台</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/demo.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/tradition.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/_two_stage_platform.css">
</head>

<body>
<%@include file="top.jsp"%>

<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
String id = request.getParameter("id");//用request得到 
%>




<!--多条件查询-->
<div class="schimg">
    <p class="clgim">
     <a href="#"><img src="${pageContext.request.contextPath}/images/img_index.png" width="16" alt="">首页</a><i class="crumbs-arrow">&gt;</i> 
      <a href="#">生活购物</a></p>



<div class="isk_op">
<ul class="mcxuan_sl">
    <li>

        <div class="mcxun_rc"><i>类别：</i><em><a href="#">不限</a></em> 
         <span class="naim_lisright"> 
         <span class="naim_play" style="height: auto;">  

    <a href="#">应用技术</a>
    <a href="#">软科学</a>
    <a href="#">基础理论</a>
  

</span>
 <a href="javascript:void(0);" class="riig_itgm cur_lismg">更多<em></em></a>
</span>

</div>

<div class="mcxun_rc"><i>品牌：</i><em><a href="#">不限</a></em>
    <span class="naim_lisright"> 
         <span class="naim_play" style="height: 25px;">  
    <a href="#" class="cur">自选课题</a>
    <a href="#">民间基金</a>
    <a href="#">横向委托</a>
    <a href="#">国际合作</a>
    <a href="#">地方基金</a>
    <a href="#">部门基金</a>
    <a href="#">其他</a><a href="#">自选课题</a>
    <a href="#">民间基金</a>
    <a href="#">横向委托</a>
    <a href="#">国际合作</a>
    <a href="#">地方基金</a>
    <a href="#">部门基金</a>
    <a href="#">其他 </a><a href="#">自选课题</a>
    <a href="#">民间基金</a>
    <a href="#">横向委托</a>
    <a href="#">国际合作</a>
    <a href="#">地方基金</a>
    <a href="#">部门基金</a>
    <a href="#">其他</a>
        </span>
         <a href="javascript:void(0);" class="riig_itgm">更多<em></em></a>
    </span>

</div>

<div class="mcxun_rc"><i>容量：</i><em><a href="#">不限</a></em>
   <span class="naim_lisright"> 
         <span class="naim_play" style="height: 25px;"> 
    <a href="#">产业化应用 </a>
    <a href="#">小批量或小范围应用</a>
    <a href="#">未应用</a>
    <a href="#">其他</a>
   
</span>
 <a href="javascript:void(0);" class="riig_itgm">更多<em></em></a>
</span>
</div>

    </li>
</ul>

</div>
</div>
<!--搜索框得搜做-->
<div class="advanced_options_mian">
	

<div class="advanced_options">
	<span class="advanced_options_title">高级选项：</span>  
	 <ul class="advanced_options_list">
		<li><span class="prigms"> 大家说<i class="icong_bottom"></i></span> 

			<div class="advance_imtn">
				<p>
					<a href="#">预约功能</a>
					<a href="#">速度快</a>
					<a href="#">适合家用</a>
					<a href="#">适合三口之家</a>
					<a href="#">蒸饭很香</a>
					<a href="#">容量大</a>
					<a href="#">家人喜欢</a>
					<a href="#">定时功能</a><a href="#">预约功能</a>
					<a href="#">速度快</a>
					<a href="#">适合家用</a>
					<a href="#">适合三口之家</a>
					<a href="#">蒸饭很香</a>
					<a href="#">容量大</a>
					<a href="#">家人喜欢</a>
					<a href="#">定时功能</a>
				</p>
			</div>
		</li>        
		<li><span class="prigms">内胆材质<i class="icong_bottom"></i></span>
				<div class="advance_imtn">
				<p>
					
					<a href="#">黑晶</a>
					<a href="#">黄晶</a>
					<a href="#">麦饭石</a>
					<a href="#">陶晶陶</a>
					<a href="#">土釜胆</a>
				
				</p>
			</div>    
		</li>
		<li><span class="prigms">功能<i class="icong_bottom"></i></span>
				<div class="advance_imtn">
				<p>
					<a href="#">预约</a>
					<a href="#">酸奶</a>
					<a href="#">蛋糕</a>
					<a href="#">粥炖汤</a>
					
				</p>
			</div>
		</li>   
		<li><span class="prigms">操作方式<i class="icong_bottom"></i></span>

				<div class="advance_imtn">
				<p>
					
					<a href="#">按键式</a>
					<a href="#">智能操控</a>
					<a href="#">触摸式</a>
			
				</p>
			</div>  
		</li>
	</ul>  

	<div class="search-form">
		<form action="#" method="get" id="top_search_form" class="search-form_list">
    <div> <input name="keyword" id="keyword" type="text" data-focus="" value="" maxlength="60" x-webkit-speech="" lang="zh-CN" onwebkitspeechchange="foo()" placeholder="输入商品名称" required="" oninvalid="setCustomValidity('搜索关键词不能为空')" oninput="setCustomValidity('')" autocomplete="off" class=" ui-autocomplete-input" role="textbox" aria-autocomplete="list" aria-haspopup="true">  <input type="submit" id="button" value="搜索" class="input-submit"></div>


    
</form>
	</div> 
</div>
</div>
<!--分页活动列表-->
<div class="pratt_mian">


	<div class="pratt_mian_center">

		<div class="pratt_mian_center_list">


			<c:if test="${!empty requestScope.pagemsg}" var="p">
				<c:forEach items="${requestScope.pagemsg.lists}" var="a" varStatus="status">
			<ul class="whitney_ul">
				<li class="whitne_img">
					<div class="img_center"><a href="//${a.url }"><img src="${pageContext.request.contextPath}/upload/active/${a.imgFile}" id="shenggouw_img" alt=""> </a> <span class="taxonomy">
						${a.item.item_name}
					</span>
						<span>${a.item_id}</span>
					</div>
				</li>
				<li class="whitne_center">
					<div class="whitne_center_in">
					
					<h2 class="whitne_center_title"><a href="${a.url }">${a.activeName}</a></h2>
					<p class="wihg_em">${a.activeContent}</p>

					</div>
					<div class="hotelintroduction">
					<p><span>开始时间：</span><em><fmt:formatDate value="${a.startTime}" pattern="yyyy-MM-dd"/></em></p>
					<p><span>结束时间：</span><em><fmt:formatDate value="${a.endTime}" pattern="yyyy-MM-dd"/></em></p>
					</div>
				</li>
				<li class="whitney_place">
					
					<p class="order_btn">
						<a href="${a.url }" class="order_btn_icon1">查看详情</a>
					
					</p>
				</li>
			</ul>
			</c:forEach>
			</c:if>
					

		<div class="mt20 paging">
                <div><!-- 《span class="rows">73 条记录 2/8 页</span>  
                	<a class="prev" href="#"><span class="thispagex">上一页</span></a> 
                	<a class="num" href="#"><span class="thispagex">1</span></a>
                	<a class="num act"><span class=" thispagex">2</span></a>
                	<a class="num" href="#"><span class="thispagex ">3</span></a>
                	<a class="num" href="#"><span class="thispagex">4</span></a>
                	<a class="num" href="#"><span class="thispagex">5</span></a>
                	<a class="num" href="#"><span class="thispagex">6</span></a>
                	<a class="num" href="#"><span class="thispagex">7</span></a>
                	<a class="num" href="#"><span class="thispagex">8</span></a> 
                	<a class="next" href="#"><span class="thispagex">下一页</span></a>  -->
                <c:if test="${!empty param.id}">
   				<span class="rows">第${requestScope.pagemsg.currPage}/${requestScope.pagemsg.totalPage}页</span>
				<span class="rows">每页显示：${requestScope.pagemsg.pageSize}条</span>
				<span class="rows">总记录数：${requestScope.pagemsg.totalCount}条</span>
				<a class="firstPage" href="${pageContext.request.contextPath }/itemByid.action?currPage=1&id=${param.id}">
				<span class="thispagex">首页</span></a> 
			    <!-- 如果有上一页 就显示-->
			    <c:if test="${requestScope.pagemsg.hasPreviousPage}">
			        <span>
			            <!-- 前一页是当前页-1 --> 
			            <a class="prev prevPage" href="${pageContext.request.contextPath }/itemByid.action?currPage=${requestScope.pagemsg.currPage-1}&id=${param.id}" > 
			            	<span class="thispagex">上一页</span>
			        	</a>
			        </span>
			    
			    
			    
				 <!--判断下一页  -->
			     <c:if test="${requestScope.pagemsg.hasNextPage}">
			         <span>
			         	<a class="next nextPage" href="${pageContext.request.contextPath }/itemByid.action?currPage=${requestScope.pagemsg.currPage+1}&id=${param.id}"> 
			             	<span class="thispagex">下一页</span> 
			            </a>
			         </span>
			     </c:if>
			    <a class="next lastPage" href="${pageContext.request.contextPath }/itemByid.action?currPage=${requestScope.pagemsg.totalPage}&id=${param.id}">
			    	<span class="thispagex">尾页</span>
			    </a>
                </c:if>
   				</c:if>
   
  				<c:if test="${empty param.id}">
  				<span class="rows">第${requestScope.pagemsg.currPage}/${requestScope.pagemsg.totalPage}页</span>
				<span class="rows">每页显示：${requestScope.pagemsg.pageSize}条</span>
				<span class="rows">总记录数：${requestScope.pagemsg.totalCount}条</span>
				<a class="firstPage" href="${pageContext.request.contextPath }/second.action?currPage=1">
				<span class="thispagex">首页</span></a> 
			    <!-- 如果有上一页 就显示-->
			    <c:if test="${requestScope.pagemsg.hasPreviousPage}">
			        <span>
			            <!-- 前一页是当前页-1 --> 
			            <a class="prev prevPage" href="${pageContext.request.contextPath }/second.action?currPage=${requestScope.pagemsg.currPage-1}" > 
			            	<span class="thispagex">上一页</span>
			        	</a>
			        </span>
			    </c:if>
			    
			    
				 <!--判断下一页  -->
			     <c:if test="${requestScope.pagemsg.hasNextPage}">
			         <span>
			         	<a class="next nextPage" href="${pageContext.request.contextPath }/second.action?currPage=${requestScope.pagemsg.currPage+1}"> 
			             	<span class="thispagex">下一页</span> 
			            </a>
			         </span>
			     </c:if>
			    <a class="next lastPage" href="${pageContext.request.contextPath }/second.action?currPage=${requestScope.pagemsg.totalPage}">
			    	<span class="thispagex">尾页</span>
			    </a> 
   				</c:if>
                </div>           

            </div>



		</div>
		



		
	</div>




	
</div>
<%@include file="bottom.jsp"%>
</body>
</html>