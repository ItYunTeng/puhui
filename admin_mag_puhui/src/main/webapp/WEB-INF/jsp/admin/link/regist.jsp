<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
</head>
<body>
	<form name="form" action="${pageContext.request.contextPath}/regist.action" method="post">
		<input type="text" name="admin_name" value=""/>
		<input type="text" name="admin_telephone" value=""/>
		<input type="password" name="admin_pwd" value=""/>
		<input type="button" name="submit" value="注册"/>
	</form>
</body>
</html> 