<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<link href="${pageContext.request.contextPath}/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/date//WdatePicker.js"></script>
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
//页面初始化完毕后执行此方法
KindEditor.ready(function(K) {
    window.editor = K.create('#contentAddForm[name=content]');
});

</script>
<div style="padding:10px 10px 10px 10px">
	<form id="contentAddForm" name="isForm" class="itemForm" action="${pageContext.request.contextPath}/addactive.action" method="POST" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${active.active_id}">
	    <table cellpadding="5">
	        <tr>
	            <td>活动标题:</td>
	            <td><input class="easyui-textbox" type="text" name="activeName" value="${active.activeName}" data-options="required:true" style="width: 280px;"/></td>
	        </tr>
	        <tr>
	            <td>活动描述:</td>
	            <td><input class="easyui-textbox" type="text" name="activeContent" value="${active.activeContent}" data-options="multiline:true,validType:'length[0,150]'" style="height:60px;width: 280px;"></input>
	            </td>
	        </tr>
	         <tr>
	            <td>活动链接:</td>
	            <td><input class="easyui-textbox" type="text" name="url" value="${active.url}" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	        	<td>起始时间：</td>
	        	<td>
	        		<input id="startTime" type="text" name="startTime" 
				value="<fmt:formatDate value="${active.startTime}" pattern="yyyy-MM-dd"/>" 
			class="nomal_text f start_time" placeholder="开始时间"  onclick="WdatePicker({el:this,dateFmt:'yyyy-M-d'})"/>
	        		<br>
	        		<input id="endTime" type="text" name="endTime" 
				value="<fmt:formatDate value="${active.endTime}" pattern="yyyy-MM-dd"/>" 
			class="nomal_text f end_time" placeholder="结束时间"  onclick="WdatePicker({el:this,dateFmt:'yyyy-M-d'})" />
	        	</td>
	        </tr>
	        <tr>
	        	<td>活动分类：</td>
				<td>
					<label>${active.item.item_name}</label>
					<select id="Select" name="item_id">
					</select>
				</td>
	        </tr>
	        <tr>
	        	<td>是否热门：</td>
				<td>
					<label>
						<c:if test="${active.judgehot==0}">
							否
						</c:if>
						<c:if test="${active.judgehot==1}">
							是
						</c:if>
						<c:if test="${active.judgehot eq ''}">
							
						</c:if>
					</label>
					<select name="judgehot">
						<option value="0">否</option>
						<option value="1">是</option>
					</select>
				</td>
	        </tr>
	        <tr>
	            <td>活动图片:</td>
	            <td>
	                <input type="hidden" name="pic" />
	                <input type="file" name="imgFile" value=""/>
	            </td>
	        </tr>
	        <tr>
	        	<td>图片预览:</td>
	            <td>
	            	<img  style="width: 80px;height: 100px" src="${pageContext.request.contextPath}/upload/active/${active.imgFile}"/>
	            </td>
	        </tr>
	        <tr>
	            <td>内容详情:</td>
	            <td>
	                <textarea style="width:800px;height:300px;visibility:hidden;" name="content"></textarea>
	            </td>
	        </tr>
	        <tr>
	        	<td>
	        		<input type="submit" value="添加" name="submit"/>
	        	</td>
	        	<td>
	        		<input type="submit" value="更新" name="submit" formaction="updateactive.action"/>
	        	</td>
	        </tr>
	    </table>
	</form>
</div>

