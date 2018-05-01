<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
     <head>
        <title>添加商品</title>
        <meta http-equiv="content-type" content="text/html;charset=utf-8">
        <link href="./css/mine.css" type="text/css" rel="stylesheet">
    </head>

    <body>

        <div class="div_head">
            <span>
                <span style="float:left">当前位置是：分类管理-》添加分类信息</span>
                <span style="float:right;margin-right: 8px;font-weight: bold">
                    <a style="text-decoration: none" href="${pageContext.request.contextPath}/selectallitem.action">【返回】</a>
                </span>
            </span>
        </div>
        <div>
        	<span style="margin-left:10px;color:red">${msg}</span>
        </div>

        <div style="font-size: 13px;margin: 10px 5px">
            <form action="${pageContext.request.contextPath}/firstitem.action" method="POST" enctype="multipart/form-data">
            <table border="1" width="100%" class="table_a">
                <tr>
                    <td>分类名称</td>
                    <td><input type="text" name="item_name" /><i style="color:red"> *</i></td>
                </tr>
                <tr>
                    <td>分类编码</td>
                    <td>
                       	<input type="text" name="item_code" /><i style="color:red"> *</i>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="添加">
                    </td>
                </tr>  
            </table>
            </form>
        </div>
    </body>
</html>