<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<form action="${pageContext.request.contextPath }/firstitem.action" method="post">
		<table border="1" cellspacing="1" cellpadding="1">
			<tr>
				<th>
				<span>分类编码:</span>
				<input type="text" name="item_code" value=""/>
				</th>
				<th>
				<span>分类名称:</span>
				<input type="text" name="item_name" value=""/>
				</th>
				<td>
					<input type="submit" value="保存" name="submit"/>
				</td>
			</tr>
		</table>
	</form>
	<span>${msg}</span>