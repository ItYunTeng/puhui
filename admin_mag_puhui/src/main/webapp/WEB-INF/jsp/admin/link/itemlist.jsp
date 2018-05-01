<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>一级分类</title>
</head>
<body>
	<!--添加分类  -->
	<a href="${pageContext.request.contextPath}/additem">添加</a>
	<!--条件查询  -->
	<form action="${pageContext.request.contextPath }/selectallitem.action">
		 <input type="text" name="queryCondition" value="${page.queryCondition}" id="condition"> 
		 <input type="submit" value="查询" />
	</form>
	<!--分页显示  -->
	<table border="1" cellspacing="1" cellpadding="1">
		<tr>
			<th>序号</th>
			<th>分类编码</th>
			<th>分类名称</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${itemlist}" var="item" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${item.item_code}</td>
				<td>${item.item_name}</td>
				<td>
					<a href="${pageContext.request.contextPath }/delete.do?id=${item.item_id}">删除</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<label>第${page.pageNum}/${page.pages}页 共${page.total}条</label> 
    <a href="selectallitem.action?pageNum=0">首页</a> 
    <a href="selectallitem.action?pageNum=${page.pageNum-1}" onclick="return checkFirst()">上一页</a> 
    <a href="selectallitem.action?pageNum=${page.pageNum+1}" onclick="return checkNext()">下一页</a> 
    <a href="selectallitem.action?pageNum=${page.pages}">尾页</a> 跳转到:
    <input type="text" style="width:30px" id="turnPage" />页 
    <input type="button" onclick="startTurn()" value="跳转" />
     
	<script type="text/javascript">
	    function checkFirst(){
		    var pageNum = ${page.pageNum};
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
		    var totalPage=${page.pages};
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