<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<title>分页测试</title>
</head>
<body>
	<c:if test="${!empty requestScope.pagemsg}">
		<table border="1" cellpadding="10" cellspacing="0">
			<thead>
				<tr>
					<th>编号</th>
					<th>用户名</th>
					<th>密码</th>
					<th>邮件</th>
					<th>联系电话</th>
					<th>职位</th>
					<th>内容</th>
					<th>页码</th>
					<th>操作</th>
				</tr>
			</thead>
			<c:forEach items="${requestScope.pagemsg.lists}" var="u" varStatus="status">
				<tr>
					<td>${u.id}</td>
					<td>${u.name}</td>
					<td>${u.num}</td>
					<td>${u.phone}</td>
					<td>${u.text}</td>
					<td>${u.title}</td>
					<td>${u.title}</td>
					<td>${u.page}</td>
					<td>
						<a href="#" onclick="return confirm('确定删除吗？')"></a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<table>
		<tr>
			<td>
				<span>第${requestScope.pagemsg.currPage}/${requestScope.pagemsg.totalPage}页</span>
				&nbsp;&nbsp;
				<span>总记录数：${requestScope.pagemsg.totalCount}条</span>
				<span>
					<a href="${pageContext.request.contextPath }/fenye?currPage=1&pageSize=${param.pageSize}">首页</a> 
				    <!-- 如果有上一页 就显示-->
				    <c:if test="${requestScope.pagemsg.hasPreviousPage}">
				        <span>
				            <!-- 前一页是当前页-1 --> 
				            <a href="${pageContext.request.contextPath }/fenye?currPage=${requestScope.pagemsg.currPage-1}&pageSize=${param.pageSize}" > 
				            	<span >上一页</span>
				        	</a>
				        </span>
				    </c:if>
					 <!--判断下一页  -->
				     <c:if test="${requestScope.pagemsg.hasNextPage}">
				         <span>
				         	<a href="${pageContext.request.contextPath }/fenye?currPage=${requestScope.pagemsg.currPage+1}&pageSize=${param.pageSize}"> 
				             	<span >下一页</span> 
				            </a>
				         </span>
				     </c:if>
				    <a href="${pageContext.request.contextPath }/fenye?currPage=${requestScope.pagemsg.totalPage}&pageSize=${param.pageSize}">尾页</a>
				</span>
				<span>跳转到:
					<input type="text" style="width:30px" id="turnPage" />页 
    				<input type="button" onclick="startTurn()" value="跳转" />
				</span>
				<span>每页显示:
					<select id="pageSize" onchange="selectShow()">
						<option selected="selected" value="${requestScope.pagemsg.pageSize}">${requestScope.pagemsg.pageSize}</option>
						<option value="5">5</option>
						<option value="10">10</option>
						<option value="15">15</option>
						<option value="20">20</option>
						<option value="30">30</option>
					</select>
					条
				</span>
			</td>
		</tr>
	</table>
</body>
<script type="text/javascript">
	    function startTurn(){
		    var turnPage=document.getElementById("turnPage").value;
		    var totalPage='${requestScope.pagemsg.totalPage}';
		    if(turnPage == ''){
		    	alert("请输入跳转页数");
			    return false;
			}else{
				if(turnPage>totalPage){
				      alert("对不起已超过最大页数");
				      return false;
				   }
			}
			var shref="${pageContext.request.contextPath }/fenye?currPage="+turnPage+"&pageSize=${param.pageSize}";
			window.location.href=shref;
		}

		function selectShow(){
			var pageSize = $("#pageSize option:selected").val();
			var shref="${pageContext.request.contextPath }/fenye?currPage=1&pageSize="+pageSize;
			window.location.href=shref;
		}
</script>
</html>