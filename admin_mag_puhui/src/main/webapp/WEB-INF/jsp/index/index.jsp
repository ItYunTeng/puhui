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
</head>

<body>
<%@include file="top.jsp"%>
<!--公用的top end  -->
<!--轮播开始  -->
<div class="banner">
    <div class="imglist_baner">
        <ul> 
        	<c:forEach items="${lunbo}" var="lunbo" varStatus="status">
	        	<li class="first" style="display: block;"> 
	        	
	        	<a href="${lunbo.img_url}" target="_blank" data-color="#9B010B" data-image="">
	        		<img src="${pageContext.request.contextPath}/upload/lunbo/${lunbo.img_src}" alt="">
	        	</a>
	        	</li>
        	</c:forEach>

     </ul>
    </div>

<!--     <div class="but" style="display: none;">
        <a href="javascript:void(0);" class="but_left"></a>
        <a href="javascript:void(0);" class="but_right"></a>
    </div>
 -->
    <div class="drop">
    	<ul></ul>
    </div>

</div>
<!--中心区域 nav-->
<div class="activity">

 	<ul>
 		<li><div class="act_div"> <a href="#"><img src="${pageContext.request.contextPath}/images/moakg1.jpg" alt=""> </a></div></li>
 		<li><div class="act_div"> <a href="#"><img src="${pageContext.request.contextPath}/images/moakg2.jpg" alt=""></a></div></li>
 		<li><div class="act_div"> <a href="#"><img src="${pageContext.request.contextPath}/images/moakg3.jpg" alt=""></a></div></li>
 	</ul>
 	
 </div>
<!--中心区域 nav -->
<!--中心区域 nav1 -->
	<div class="pratt_mian_left">



		

			
			<div class="gksllg">


				

				<div class="im3_menus">
				<!-- 	<h2>生活服务</h2> -->


					<ul>
						<li><a href="#" class="lb_yuya_btn"><img src="${pageContext.request.contextPath}/images/index_ml1.png" alt="">水费缴纳</a></li>
						<li><a href="#" class="lb_yuya_btn"><img src="${pageContext.request.contextPath}/images/index_ml2.png" alt="">话费充值</a></li>
						<li><a href="#" class="lb_yuya_btn"><img src="${pageContext.request.contextPath}/images/index_ml3.png" alt="">宽带充值</a></li>
						<li><a href="#" class="lb_yuya_btn"><img src="${pageContext.request.contextPath}/images/index_ml4.png" alt="">加油卡劵</a></li>
						<li><a href="#" class="lb_yuya_btn"><img src="${pageContext.request.contextPath}/images/index_ml5.png" alt="">快递查询</a></li>
						<li><a href="#" class="lb_yuya_btn"><img src="${pageContext.request.contextPath}/images/index_ml6.png" alt="">公积金查询</a></li>
						<li><a href="#" class="lb_yuya_btn"><img src="${pageContext.request.contextPath}/images/index_ml7.png" alt="">违章查询</a></li>
						<li><a href="#" class="lb_yuya_btn"><img src="${pageContext.request.contextPath}/images/index_ml8.png" alt="">ETC查询</a></li>
						<li><a href="#" class="lb_yuya_btn"><img src="${pageContext.request.contextPath}/images/index_ml9.png" alt="">社保查询</a></li>
						<li><a href="#" class="lb_yuya_btn"><img src="${pageContext.request.contextPath}/images/index_ml10.png" alt="">汽车摇号查询</a></li>
		
					</ul>
					
				</div>





			
			</div>

            


		
	</div>
<!--中心区域 nav1 -->
<!--中心区域 nav2 -->
	<div class="pratt_mian">


	<div class="pratt_mian_center">

		<h2 class="pratt_kcmg barng"><span>优惠商品</span><!-- <i>合作商家，参与职工普惠</i> --></h2>

		<div class="pratt_mian_center_list">

<c:forEach items="${actives}" var="actives6" varStatus="status" end="6">

				<c:if test="${actives6.judgehot==1}">
					<ul class="whitney_ul">
						<li class="whitne_img">
							<div class="img_center">
								<a href="${actives6.url}">
									<img src="${pageContext.request.contextPath}/upload/active/${actives6.imgFile}" alt=""> 
								</a> 
								<span class="taxonomy">${actives6.item.item_name}</span>
							</div>
						</li>
						<li class="whitne_center">
							<div class="whitne_center_in">
							<h2 class="whitne_center_title">
							<a href="${actives6.url}">
								${actives6.activeName}
							</a>
							</h2>
							<p class="wihg_em">${actives6.activeContent}</p>
							<dl class="mend">
								<dd>起始时间</dd>
								<dd><fmt:formatDate value="${actives6.startTime}" pattern="yyyy-MM-dd"/></dd>
								<dd><fmt:formatDate value="${actives6.endTime}" pattern="yyyy-MM-dd"/></dd>
							</dl>
							</div>
						</li>
						<li class="whitney_place">
							<p class="order_btn">
								<a href="#" class="order_btn_icon1">查看详情</a>
							</p>
						</li>
					</ul>
				</c:if>
			</c:forEach>

			<ul class="whitney_ul">
				<li class="whitne_img">
					<div class="img_center"><a href="#"><img src="${pageContext.request.contextPath}/images/pratt_pic_jiudian.jpg" id="shenggouw_img" alt=""> </a> <span class="taxonomy">酒店住房</span> <span class="taxonomy">休闲娱乐</span></div>
				</li>
				<li class="whitne_center">
					<div class="whitne_center_in">
					
					<h2 class="whitne_center_title"><a href="#">海口盛福乐康年酒店</a></h2>
					<p class="wihg_em">【 西海岸】秀英区西海岸长滨东三街5号，近南港码头、新市政府西
门、海南国际会展中心、远大购物广场。 <a href="#" class="map_link">地图查看</a></p>

			<div class="hotelintroduction">
				<p><span>床      型：<em> 大/双 </em></span> <span>早      餐：<em> 无早 </em></span></p>
				<p><span>宽      带：<em> 免费 </em></span> <span>人数上限：<em> 1成人 </em></span></p>
			</div>
						
						<dl class="commodityspecification">
							<!-- <dt>酒店配套</dt> -->
							<dd><span>车位</span> <span>接机</span> <span>餐厅</span> <span>健身房</span> <span>会议室</span></dd>
						</dl>
                                   

					</div>
				</li>
				<li class="whitney_place">
					
					<p class="order_btn">
						<a href="#" class="order_btn_icon1">查看详情</a>
					
					</p>
				</li>
			</ul>

			<a href="${pageContext.request.contextPath}/second.action" class="order_btn_link">更多商品</a>

		</div>
		



		
	</div>

	



	
</div>
<!--中心区域 nav2 -->
<div class="worker"><img src="${pageContext.request.contextPath}/images/workershome.jpg" alt=""></div>
<!--商家活动 -->
<div class="pratt-merchants">
	<h2 class="mae_title"><span>活动商家</span> </h2>



	<div class="mer_list">

		<ul>
			
				<c:forEach items="${requestScope.busi}" var="b" end="3">
					<li>
						<div class="me_itme"> 
							 <a href="#"><img src="${pageContext.request.contextPath}/images/timg.jpg" alt=""> <span class="sj_title">${b.bus_name}</span></a>
							 <p>${b.bus_content}</p>
				
							 <a href="#" class="btn_mer">参与领卷</a>
						</div>
					</li>	
				</c:forEach>	
			
		</ul>
		

	</div>
	

</div>
<!--商家活动 -->
<!--common bottom  -->
<%@include file="bottom.jsp"%>>
<!--二维码  -->
<div class="roll_top">

	<p class="roll_top_in">
		<span><img src="${pageContext.request.contextPath}/images/erweima.png" alt="">手机普惠</span>
		<span><img src="${pageContext.request.contextPath}/images/erweima.png" alt="">微信二维码</span>
	</p>
	<a href="javascript:void(0);" class="mg_top" id="back-top"><!-- <i></i> -->返回顶部</a>

</div>

</body>

</html>