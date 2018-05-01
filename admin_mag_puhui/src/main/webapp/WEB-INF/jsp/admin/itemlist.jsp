<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <title>会员列表</title>
        <link href="./css/mine.css" type="text/css" rel="stylesheet" />
        <style>
            .tr_color{background-color: #9F88FF}
        </style>
    </head>
    <body>
        <div class="div_head">
            <span>
                <span style="float: left;">当前位置是：分类管理-》分类列表</span>
                <span style="float: right; margin-right: 8px; font-weight: bold;">
                    <a style="text-decoration: none;" target=right href="${pageContext.request.contextPath}/additem.do">【添加分类】</a>
                </span>
            </span>
        </div>
        <div></div>
        <div style="font-size: 13px; margin: 10px 5px;">
        	<p style="color:red">${msg}</p>
            <table class="table_a" border="1" width="100%">
                <tbody><tr style="font-weight: bold;">
                        <td>序号</td>
		                <td >分类编码</td>
		                <td >分类名称</td>
                        <td align="center">操作</td>
                    </tr>
                    <c:forEach items="${itemlist}" var="item" varStatus="status">
                    <tr id="${item.item_id}">
                        <td>${status.count}</td>
                        <td>${item.item_code}</td>
                        <td>${item.item_name}</td>
                        <td>
                        	<a onclick="return confirm('你确定删除吗？')" href="${pageContext.request.contextPath }/delete.do?id=${item.item_id}">删除</a>
                        </td>
                    </tr>
                  	</c:forEach>
                    <tr>
                        <td colspan="20" style="text-align: center;">
					   	<label>第${page.pageNum}/${page.pages}页 共${page.total}条</label> 
						<a href="selectallitem.action?pageNum=0">首页</a> 
						<a href="selectallitem.action?pageNum=${page.pageNum-1}" onclick="return checkFirst()">上一页</a> 
						<a href="selectallitem.action?pageNum=${page.pageNum+1}" onclick="return checkNext()">下一页</a> 
						<a href="selectallitem.action?pageNum=${page.pages}">尾页</a> 跳转到:
						<input type="text" style="width:30px" id="turnPage" />页 
						<input type="button" onclick="startTurn()" value="跳转" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <script type="text/javascript">
	    function checkFirst(){
		    var pageNum = "${page.pageNum}";
	         if(pageNum>1){
	           return true;
	         }
	         alert("已到页首,无法加载更多");
	         return false;
	    }
	    function checkNext(){
		    var judge=${page.pageNum<page.pages};
		    if(judge){
		      return true;
		    }
		    alert("已到页尾，无法加载更多页");
		    return false;
	    }
	    function startTurn(){
		    var turnPage=document.getElementById("turnPage").value;
		    var totalPage="${page.pages}";
		    if(turnPage == ''){
		    	alert("请输入跳转页数");
			    return false;
			}else{
				if(turnPage>totalPage){
				      alert("对不起已超过最大页数");
				      return false;
				   }
			}
			var shref="selectallitem.action?pageNum="+turnPage;
			window.location.href=shref;
		}
	</script>   
    </body>
</html>