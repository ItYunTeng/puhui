<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page isELIgnored="false" %>
<div class="pratt_tip">
<div class="pratt_tip_mian">
	<span class="pratt_tip_title"><em class="map_mian">海口</em><i></i>

		<div class="imgl_cuem"> 
		<div id="selector">
			<div id="selector-province-result" class="selector-result">福建</div>
			<ul id="selector-province-box" class="selector-box" style="display: block;">
				<li class="selector-list" data-city="A">安徽</li>
				<li class="selector-list" data-city="F">福建</li>
				<li class="selector-list" data-city="G">广东</li>
				<li class="selector-list" data-city="G">广西</li>
				<li class="selector-list" data-city="G">贵州</li>
				<li class="selector-list" data-city="G">甘肃</li>
				<li class="selector-list" data-city="H">海南</li>
				<li class="selector-list" data-city="H">河南</li>
				<li class="selector-list" data-city="H">黑龙江</li>
				<li class="selector-list" data-city="H">湖北</li>
				<li class="selector-list" data-city="H">湖南</li>
				<li class="selector-list" data-city="H">河北</li>
				<li class="selector-list" data-city="J">江苏</li>
				<li class="selector-list" data-city="J">江西</li>
				<li class="selector-list" data-city="J">吉林</li>
				<li class="selector-list" data-city="L">辽宁</li>
				<li class="selector-list" data-city="N">宁夏</li>
				<li class="selector-list" data-city="N">内蒙古</li>
				<li class="selector-list" data-city="Q">青海</li>
				<li class="selector-list" data-city="S">山东</li>
				<li class="selector-list" data-city="S">山西</li>
				<li class="selector-list" data-city="S">陕西</li>
				<li class="selector-list" data-city="S">四川</li>
				<li class="selector-list" data-city="X">新疆</li>
				<li class="selector-list" data-city="X">西藏</li>
				<li class="selector-list" data-city="Y">云南</li>
				<li class="selector-list" data-city="Z">浙江</li>
				<li class="selector-list" data-city=" ">其他</li>
				<li class="selector-list" data-city=" ">海外</li>
			</ul>
			<div id="selector-city-result" class="selector-result">城市</div>
		</div>
			<h2 class="remgs">热门城市</h2>
			<p>
		<a href="#">北京</a>
		<a href="#">上海</a>
		<a href="#">广州</a>
		<a href="#">深圳</a>
		<a href="#">成都</a>
		<a href="#">杭州</a>
		<a href="#">南京</a>
		<a href="#">天津</a>
		<a href="#">武汉</a>        
		<a href="#">重庆</a>   </p>
		      
		</div>
</span>

	<ul class="pratt_tip_list">
		<c:if test="${!empty user}">
			<li><a href="#">${user.c_name} </a></li>
		</c:if>
		<c:if test="${empty user}">
			<li><a class="lb_yuya_btn" href="#">登陆 </a></li>
		</c:if>
		<li><a href="#">商家入驻</a></li>
		<li><a href="#">我的普惠<i></i></a></li>
		<li><a href="#">手机普惠<i></i></a>
		</li>
		<li><a href="#">我的邀请码<i></i></a></li>
	</ul>
</div> 
</div>
<!--top导航条 end -->
<!--top logo  -->
<div class="header">
	<div class="header_in">

		<a href="${pageContext.request.contextPath}/index.action" class="index_logo"><img src="${pageContext.request.contextPath}/images/logo.jpg" alt=""></a> 

		<span class="user_platform">
		<c:if test="${!empty user}">
		<a href="#"><i></i>我的平台(2)</a>
		</c:if>
		</span>
		
	</div>
</div>
<!--logo end  -->
<!--nav  -->
<div class="pratt_iemt_nav_fidodx">
	

<div class="pratt_iemt_nav">
	<ul>
		<li class="cur">
			<a href="#"><i class="pr_nav_icon1"></i>普惠首页</a>
		</li>
		<c:forEach items="${items}" var="item5" varStatus="status" end="4">
				<li>
					<a class="click" href="${pageContext.request.contextPath}/itemByid.action?id=${item5.item_id}"><i class="pr_nav_icon${status.count+1}"></i>${item5.item_name}</a>
				</li>
		</c:forEach>

		<li>
			<a href="${pageContext.request.contextPath}/second.action"> <i class="pr_nav_icon7"></i>全部菜单</a>


			<div class="full_navigation">
				
					<p>
						<c:forEach items="${items}" var="item5" varStatus="status">
							<a class="click" href="${pageContext.request.contextPath}/itemByid.action?id=${item5.item_id}">${item5.item_name}</a>
						</c:forEach>
					</p>
			</div>
		</li>
	</ul>   
</div>  
</div>

<!--不知道的鬼  -->
<div class="mask">
    <div class="yuyue">
        <span id="mask-close" class="ri_close"></span>


        <div class="miogn_vie">


        	<div class="user_list"> 

                <h2>请验证职工卡号</h2>

				<span class="msg" style="color:red"></span>


       

           
                <ul id="user_login" class="user_list_ul">
                    <li class="mt10 mobile ">
                       
                        <input type="text" class="text-input yonghusi_icon" placeholder="职工卡号" name="user" id="username">
                    </li>
                    <li class="mt10 ">
                       
                        <input type="password" class="text-input yongyan_icon" placeholder="密码设置" name="pass" id="password">
                        
                    </li>
         

                    <li class="mt10 fw yongmima_icon">
                      
                        <input type="text" class="text-input iwig30" name="yanz" id="valiCode" placeholder="输入验证码">
                        <span class="usw"><img style="width: 145px;height:40px;" title="点击刷新" src="${pageContext.request.contextPath }/vCode" 
                         id="img" onclick="this.src='${pageContext.request.contextPath }/vCode?'+Math.random();"  /></span>
                        
                    </li>
                  

                </ul>

          


                <input type="button" class="zhungtna_btn" value="提交" id="submit">


       

            </div>
          

          
        </div>
     

    </div>
</div>
<!--  -->
<script type="text/javascript">
	

	$(function(){
		   $(window).scroll(function(){
            var Y = $(window).scrollTop();

            if(Y>217){  $(".pratt_iemt_nav").addClass('fidodx_cur'); }else{ $(".pratt_iemt_nav").removeClass('fidodx_cur');} 

        });


  		$(".lb_yuya_btn").click(function(event) {
            $(".mask").show();
            $("#vie_url").attr("src",$(this).attr("data_url"));


        });
        $("#mask-close").click(function(event) {
            $(".mask").hide();
        });

	});
</script>


<script type="text/javascript">
	$(".click").click(function(){
		$(".whitney_ul").remove();
	})
	
	
	$("#submit").click(function(){
		var name = $('#username').val();
		var pass = $('#password').val();
		var valiCode = $("#valiCode").val();
		$.ajax({
			type:"post",
			async : true,
			url:"${pageContext.request.contextPath}/userlogin.action",
			data:{
				"username":name,
				"password":pass,
				"valiCode":valiCode
			},
			success:function(result){
				console.log(result);
				var json = JSON.parse(result);
				var select = json.ok;
				switch(select){
					case 0:
						$(".mask").hide();
						window.location.reload(this);
						break;
					case 1:
						$(".mask").show();
						$(".msg").html("用户名或密码错误！");
						$("#img").trigger("click");
						$(".mt10").children("input").attr("value","");
						break;
					case 2:
						$(".mask").show();
						$(".msg").html("验证码错误！");
						$("#img").trigger("click");
						$(".mt10").children("input").attr("value","");
						break;
					case 3:
						$(".mask").show();
						$(".msg").html("用户名或密不能为空！");
						$("#img").trigger("click");
						$(".mt10").children("input").attr("value","");
					default:
						break;
				}
			
				
			},
			error:function(err){
				console.log(err);
			}
		})
		
	})
</script>


