<%@ page language="java" 
 contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
     <head>
        <title>添加活动</title>
        <meta http-equiv="content-type" content="text/html;charset=utf-8">
        <link href="./css/mine.css" type="text/css" rel="stylesheet">
        <!-- 日期插件，使用jquery -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/date/WdatePicker.js"></script>
		<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/ueditorjsp/ueditor.config.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/ueditorjsp/ueditor.all.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/ueditorjsp/lang/zh-cn/zh-cn.js"></script> --%>
    	<link href="${pageContext.request.contextPath}/js/kindedito/themes/default/default.css" type="text/css" rel="stylesheet">
		<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/kindedito/kindeditor-all-min.js"></script>
		<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/js/kindedito/lang/zh-CN.js"></script>
    </head>
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
    <body>

        <div class="div_head">
            <span>
                <span style="float:left">当前位置是：活动管理-》添加活动信息</span>
                <span style="float:right;margin-right: 8px;font-weight: bold">
                    <a style="text-decoration: none" href="${pageContext.request.contextPath }/selectallactive.action">【返回】</a>
                </span>
            </span>
        </div>
        <div></div>

        <div style="font-size: 13px;margin: 10px 5px">
            <form name="isForm" action="${pageContext.request.contextPath}/addactive.action" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="id" value="${active.active_id}">
            <table border="1" width="100%" class="table_a">
                <tr>
                    <td><span>活动名称：</span></td>
                    <td><input type="text" name="activeName" value="${active.activeName}"/></td>
                </tr>
                <tr>
                    <td><span>活动描述：</span></td>
                    <td><input type="text" name="activeContent" value="${active.activeContent}"/></td>
                </tr>
                <tr>
                    <td><span>活动分类：</span></td>
   					<td>
                   	<c:if test="${!empty active}">
                  			<label>${active.item.item_name}</label>
                  	</c:if>
					<select id="Select" name="item_id">
						<option selected="selected">请选择</option>
					</select>
                   </td>
                </tr>
                <tr>
                	<td><span>是否热门：</span></td>
					<td>
						<c:if test="${!empty active}">
						
							<label>${active.judgehot==0?"否":"是"}</label>
						
						</c:if>
						<select name="judgehot">
							<option selected="selected">请选择</option>
							<option value="0">否</option>
							<option value="1">是</option>
						</select>
						
					</td>
                </tr>
                <tr>
                    <td><span>开始时间：</span></td>
                    <td>
                    	<input id="startTime" type="text" name="startTime" 
				value="<fmt:formatDate value="${active.startTime}" pattern="yyyy-MM-dd"/>" 
			class="nomal_text f start_time"  onclick="WdatePicker({el:this,dateFmt:'yyyy-M-d'})"/>
                    </td>
                </tr>
                <tr>
                    <td><span>结束时间：</span></td>
                    <td>
                    	<input id="startTime" type="text" name="startTime" 
				value="<fmt:formatDate value="${active.endTime}" pattern="yyyy-MM-dd"/>" 
			class="nomal_text f start_time"  onclick="WdatePicker({el:this,dateFmt:'yyyy-M-d'})"/>
                    </td>
       			</tr>
       			<tr>
                    <td><span>链接地址：</span></td>
                    <td><input type="text" name="url" value="${active.url}"/></td>
                </tr>
       			<tr>
                    <td><span>活动图片：</span></td>
                    <td><input type="file" name="imgFile" value=""/></td>
                </tr>
       			
                <tr><c:if test="${!empty active}">
                    <td>图片预览</td>
                    <td>
                    	<img alt="" title="上传图片" style="width: 100px;height: 80px" src="${pageContext.request.contextPath}/upload/active/${active.imgFile}"/>
                    </td>
                    </c:if>
                </tr>
                
                <tr>
                    <td>活动详细描述</td>
                    <td>
                        <textarea  style="resize:none;width:800px;height:300px;visibility:hidden;" name="content"></textarea>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center">
                    	<c:if test="${empty active}">
                        	<input type="submit" value="添加" name="submit"/>
                        </c:if>
                       <c:if test="${!empty active}">
					   		<input type="submit" value="更新" name="submit" formaction="updateactive.action"/>
					   </c:if>
                    </td>
                </tr>  
            </table>
            </form>
        </div>
        <script type="text/javascript">
        	/* var editor = new UE.ui.Editor();
        	UE.getEditor('myEditor');
        	UE.Editor.proptotype.getActionUrl = function(action){
				if(action == "${pageContext.request.contextPath}/upload/editor"){
					return "${pageContext.request.contextPath}/upload/editor";
				}else{
					return this._bkGetActionUrl.call(this.action);
				}
            } */
            KindEditor.ready(function(K) {
                window.editor = K.create('#contentAddForm[name=content]');
            });
        </script>
    </body>
</html>