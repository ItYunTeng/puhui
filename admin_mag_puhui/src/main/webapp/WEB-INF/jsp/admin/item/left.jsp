<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>导航菜单</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script language="JavaScript" src="${pageContext.request.contextPath }/script/jquery.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath }/script/menu.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/style/blue/menu.css" />
</head>
<body style="margin: 0">
<div id="Menu">
    <ul id="MenuUl">
        <li class="level1">
            <div onClick="menuClick(this)" class="level1Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/FUNC20001.gif" class="Icon" />商品分类</div>
            <ul style="display: none;" class="MenuLevel2">
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" />
                    <a href="${pageContext.request.contextPath}/additem.do" target="right">添加分类</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /><a href="${pageContext.request.contextPath }/selectallitem.action" target="right">分类列表</a></div>
                </li>
            </ul>
        </li>
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/FUNC20070.gif" class="Icon" />活动管理</div>
            <ul style="display: none;" class="MenuLevel2">
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /> 添加活动</div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /> 活动列表</div>
                </li>
                
             </ul>
        </li>
        
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/FUNC20070.gif" class="Icon" />轮播管理</div>
            <ul style="display: none;" class="MenuLevel2">
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" />添加轮播</div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /> 轮播列表</div>
                </li>
                
             </ul>
        </li>
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/FUNC20070.gif" class="Icon" />广告管理</div>
            <ul style="display: none;" class="MenuLevel2">
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /> 添加广告</div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /> 广告列表</div>
                </li>
                
             </ul>
        </li>
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/FUNC20070.gif" class="Icon" />商家管理</div>
            <ul style="display: none;" class="MenuLevel2">
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /> 添加商家活动</div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" />参与商家列表</div>
                </li>
                
             </ul>
        </li>
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/FUNC20070.gif" class="Icon" />卡卷管理</div>
            <ul style="display: none;" class="MenuLevel2">
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /> 添加卡卷</div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" />卡卷列表</div>
                </li>
                
             </ul>
        </li>
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/FUNC261000.gif" class="Icon" />会员管理</div>
            <ul style="display: none;" class="MenuLevel2">
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /> 会员列表</div>
                </li>
            </ul>
        </li>
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/FUNC20077.gif" class="Icon" /> 个人设置</div>
            <ul style="display: none;" class="MenuLevel2">
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="Person_Config/editUserInfoUI.html">个人信息</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="Person_Config/editPasswordUI.html">密码修改</a></div>
                </li>
             
            </ul>
        </li>
        <li class="level1">
            <div onClick="menuClick(this);" class="level1Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/FUNC20082.gif" class="Icon" /> 系统管理</div>
            <ul style="display: none;" class="MenuLevel2">
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="System_Role/list.html"> 岗位管理</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="System_Department/list.html"> 部门管理</a></div>
                </li>
                <li class="level2">
                    <div class="level2Style"><img src="${pageContext.request.contextPath }/style/images/MenuIcon/menu_arrow_single.gif" /> <a target="right" href="System_User/list.html"> 用户管理</a></div>
                </li>
           
            </ul>
        </li>
    </ul>
</div>
</body>
</html>
