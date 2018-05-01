<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>普惠商城后台管理系统</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/taotao.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
	.content {
		padding: 10px 10px 10px 10px;
	}
</style>
</head>
<body class="easyui-layout">
    <div data-options="region:'west',title:'菜单',split:true" style="width:180px;">
    	<ul id="menu" class="easyui-tree" style="margin-top: 10px;margin-left: 5px;">
    		<li>
         		<span>分类管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'additem.do'}">添加分类</li>
	         		<li data-options="attributes:{'url':'selectallitem.action'}">分类列表</li>
	         	</ul>
         	</li>
         	<li>
         		<span>活动管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'addactive.do'}">新增活动</li>
	         		<li data-options="attributes:{'url':'selectallactive.action'}">活动列表</li>
	         	</ul>
         	</li>
         	<li>
         		<span>会员管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'customerVip.action'}">会员列表</li>
	         	</ul>
         	</li>
         	<li>
         		<span>轮播管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'turnLunbo.do'}">轮播图添加</li>
	         		<li data-options="attributes:{'url':'content'}">轮播列表</li>
	         	</ul>
         	</li>
         	<li>
         		<span>广告管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'content-category'}">广告添加</li>
	         		<li data-options="attributes:{'url':'content'}">广告列表</li>
	         	</ul>
         	</li>
         	<li>
         		<span>商家管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':'content-category'}">活动商家添加</li>
	         		
	         		<li data-options="attributes:{'url':'content'}">参与商家列表</li>
	         	</ul>
         	</li>
         	<li>
         		<span>卡卷管理</span>
         		<ul>
	         		<li data-options="attributes:{'url':''}">新增卡卷</li>
	         		<li data-options="attributes:{'url':''}">卡卷列表</li>
	         	</ul>
         	</li>
         </ul>
    </div>
    <div data-options="region:'center',title:''">
    	<div id="tabs" class="easyui-tabs">
		    <div title="首页" style="padding:20px;">
		    </div>
		</div>
    </div>
    
<script type="text/javascript">
$(function(){
	$('#menu').tree({
		onClick: function(node){
			if($('#menu').tree("isLeaf",node.target)){
				var tabs = $("#tabs");
				var tab = tabs.tabs("getTab",node.text);
				if(tab){
					tabs.tabs("select",node.text);
				}else{
					tabs.tabs('add',{
					    title:node.text,
					    href: node.attributes.url,
					    closable:true,
					    bodyCls:"content"
					});
				}
			}
		}
	});
});
</script>
</body>
</html>