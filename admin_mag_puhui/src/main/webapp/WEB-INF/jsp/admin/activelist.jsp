<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <title>活动列表</title>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <link href="./css/mine.css" type="text/css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
         <style>
            .tr_color{background-color: #9F88FF}
        </style>
        <script type="text/javascript">
		$(function(){
			$.ajax({
				type:"GET",
				async : true,
				url:"${pageContext.request.contextPath}/item.do",
				dataType:"JSON",
				success:function(data){
					console.log(data);
					var json = JSON.parse(data);
					console.log(json);
					for(var i = 0;i<json.length;i++){
						$('#condition').append('<option value="'+json[i].item_id+'">'+json[i].item_name+'</option>');
					}
				},
				error:function(data){
					console.log(data)
				} 
			})
		});
		function selectShow(){
			var id = $("#condition option:selected").val();
			console.log(id);
			var shref="${pageContext.request.contextPath }/selectallactive.action?currPage=1&id="+id;
			window.location.href=shref;
		}
	</script>
    </head>
    <body>
        <div class="div_head">
            <span>
                <span style="float: left;">当前位置是：活动管理-》活动列表</span>
                <span style="float: right; margin-right: 8px; font-weight: bold;">
                    <a style="text-decoration: none;" href="${pageContext.request.contextPath }/addactive.do">【添加活动】</a>
                </span>
            </span>
        </div>
        <div></div>
        <!--按分类查询 -->
        <div class="div_search">
                   	列表<select id="condition" name="queryCondition" onChange="selectShow()" style="width: 100px;">
                        <option selected="selected" value="0">请选择</option>
                    </select>
        </div>
        
        <div style="font-size: 13px; margin: 10px 5px;">
            <table class="table_a" border="1" width="100%">
                <tbody><tr style="font-weight: bold;">
                        <td>序号</td>
                        <td>活动名称</td>
                        <td>所属类别</td>
                        <td>是否热门</td>
                        <td>活动链接</td>
                        <td>开始时间</td>
                        <th>结束时间</th>
						<th>活动描述</th>
                        <td align="center">操作</td>
                    </tr>
                    <c:forEach items="${activelist}" var="active" varStatus="status">
                    <tr id="${active.item.item_id}">
                        <td>${status.count}</td>
                        <td>${active.activeName}</td>
						<td>${active.item.item_name}</td>
						
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
							<a target=right onclick="delete_product(1)" href="${pageContext.request.contextPath }/deleteactive.do?id=${active.active_id}">删除</a>
							<a target=right href="${pageContext.request.contextPath }/selecteactive.do?id=${active.active_id}">修改</a>
						</td>
                    </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="20" style="text-align: center;">
                        	<label> 当前第<span>${pageInfo.pageNum}</span>页,总<span>${pageInfo.pages}</span>页,总<span>${pageInfo.total}</span>条记录</label> 
    						<a href="${pageContext.request.contextPath }/selectallactive.action?pn=1&id=${param.id}">首页</a> 
						    <!-- 如果有上一页 就显示-->
						    <c:if test="${pageInfo.hasPreviousPage}">
						        <span>
						            <!-- 前一页是当前页-1 --> 
						            <a href="${pageContext.request.contextPath }/selectallactive.action?pn=${pageInfo.pageNum-1}&id=${param.id}" aria-label="Previous"> 
						            	<span aria-hidden="true">上一页</span>
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
						           	<a href="${pageContext.request.contextPath }/selectallactive.action?pn=${page_Num}&id=${param.id}">${page_Num}</a>
						           </span>
						       </c:if>
						   	</c:forEach>
							<!--判断下一页  -->
							<c:if test="${pageInfo.hasNextPage}">
							       <span>
							        	<a href="${pageContext.request.contextPath }/selectallactive.action?pn=${pageInfo.pageNum+1}&id=${param.id}" aria-label="Next"> 
							            	<span aria-hidden="true">下一页</span> 
							           </a>
							        </span>
							</c:if>
						    <a href="selectallactive.action?pn=${pageInfo.pages}&id=${param.id}">尾页</a> 跳转到:
						    <input type="text" style="width:30px" id="turnPage" />页 
						    <input type="button" onclick="startTurn()" value="跳转" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
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
			var shref="selectallactive.action?pn="+turnPage+"&id=${param.id}";
			window.location.href=shref;
		}
	</script>   
    </body>
</html>