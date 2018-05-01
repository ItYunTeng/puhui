<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 日期插件，使用jquery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/date//WdatePicker.js"></script>
<title>添加活动</title>
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
				$('#Select').append('<option value="'+json[i].item_id+'">'+json[i].item_name+'</option>');
			}
		},
		error:function(data){
			console.log(data)
		} 
	})
});
</script>
</head>
<body>
	<form name="isForm" action="${pageContext.request.contextPath}/addactive.action" method="POST" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${active.active_id}">
		<p><span>活动名称：</span><input type="text" name="activeName" value="${active.activeName}"/></p>
		<p><span>活动描述：</span><input type="text" name="activeContent" value="${active.activeContent}"/></p>
		<p>
			<span>开始时间：</span>
			<input id="startTime" type="text" name="startTime" 
				value="<fmt:formatDate value="${active.startTime}" pattern="yyyy-MM-dd"/>" 
			class="nomal_text f start_time"  onclick="WdatePicker({el:this,dateFmt:'yyyy-M-d'})"/>
		</p>
		<p>
			<span>结束时间：</span>
			<input id="endTime" type="text" name="endTime" 
				value="<fmt:formatDate value="${active.startTime}" pattern="yyyy-MM-dd"/>" 
			class="nomal_text f end_time"  onclick="WdatePicker({el:this,dateFmt:'yyyy-M-d'})" />
		</p>
		<p><span>链接地址：</span><input type="text" name="url" value="${active.url}"/></p>
		<p>
			<span>活动图片：</span>
			<input type="file" name="imgFile" value=""/>
		</p>
		<img alt="活动预览" style="width: 20px;height: 35px" src="${pageContext.request.contextPath}/upload/active/${active.imgFile}"/>
		<p>
			<span>活动分类：</span>
			<label>${active.item.item_name}</label> 
			<select id="Select" name="item_id">
			</select>
		</p>
		<p>
			<span>是否热门：</span>
			<label>${active.judgehot==0?"否":"是"}</label>
			<select name="judgehot">
				<option value="0">否</option>
				<option value="1">是</option>
			</select>
		</p>
		<input type="submit" value="添加" name="submit"/>
		<input type="submit" value="更新" name="submit" formaction="updateactive.action"/>
	</form>
</body>
</html>