<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
	<!--条件查询  -->
	<form name="condition" action="${pageContext.request.contextPath }/selectallactive.action">
		 <input type="text" name="queryCondition" value="${queryCondition}" id="condition"> 
		 <input type="submit" value="查询" />
	</form>
	<!--分页显示  -->
	<table border="1" cellspacing="1" cellpadding="1">
		<tr>
			<th>活动序号</th>
			<th>活动分类</th>
			<th>活动名称</th>
			<th>是否热门</th>
			<th>活动链接</th>
			<th>开始时间</th>
			<th>结束时间</th>
			<th>活动描述</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${activelist}" var="active" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${active.item.item_name}</td>
				<td>${active.activeName}</td>
				<td>${active.judgehot==1?"是":"否"}</td>
				<td>${active.url}</td>
				<td>
					<fmt:formatDate value="${active.startTime}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					<fmt:formatDate value="${active.endTime}" pattern="yyyy-MM-dd"/>
				</td>
				<td>${active.activeContent}</td>
				<td>
					<a href="${pageContext.request.contextPath }/deleteactive.do?id=${active.active_id}">删除</a>
					<a href="${pageContext.request.contextPath }/selecteactive.do?id=${active.active_id}">修改</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<label> 当前第<span>${pageInfo.pageNum}</span>页,总<span>${pageInfo.pages}</span>页,总<span>${pageInfo.total}</span>条记录</label> 
    <a href="${pageContext.request.contextPath }/selectallactive.action?pn=1">首页</a> 
    <!-- 如果有上一页 就显示-->
    <c:if test="${pageInfo.hasPreviousPage}">
        <span>
            <!-- 前一页是当前页-1 --> 
            <a href="${pageContext.request.contextPath }/selectallactive.action?pn=${pageInfo.pageNum-1}" aria-label="Previous"> 
            	<span aria-hidden="true">&laquo;</span>
        	</a>
        </span>
    </c:if>
    <!-- 判断 是不是当前页 如果是显示高亮-->
    <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
         <c:if test="${page_Num == pageInfo.pageNum }">
             <span class="active">
             	<a href="#">${page_Num}</a>
             </span>
         </c:if>
         <c:if test="${page_Num != pageInfo.pageNum }">
             <span>
             	<a href="${pageContext.request.contextPath }/selectallactive.action?pn=${page_Num}">${page_Num}</a>
             </span>
         </c:if>
     </c:forEach>
	 <!--判断下一页  -->
     <c:if test="${pageInfo.hasNextPage}">
         <span>
         	<a href="${pageContext.request.contextPath }/selectallactive.action?pn=${pageInfo.pageNum+1}" aria-label="Next"> 
             	<span aria-hidden="true">&raquo;</span> 
            </a>
         </span>
     </c:if>
    <a href="selectallactive.action?pn=${pageInfo.pages}">尾页</a> 跳转到:
    <input type="text" style="width:30px" id="turnPage" />页 
    <input type="button" onclick="startTurn()" value="跳转" />
	<script type="text/javascript">
	    function startTurn(){
		    var turnPage=document.getElementById("turnPage").value;
		    var totalPage=${pageInfo.pages};
		    if(turnPage == ''){
		    	alert("请输入跳转页数");
			    return false;
			}else{
				if(turnPage>totalPage){
				      alert("对不起已超过最大页数");
				      return false;
				   }
			}
			var shref="selectallactive.action?pn="+turnPage;
			window.location.href=shref;
		}
	</script>   