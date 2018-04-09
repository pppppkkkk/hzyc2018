<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table border="1" width="100%">
    	<tr>
    		<td>商品编码</td>
    		<td>商品名称</td>
    		<td>商品价格</td>
    		<td>编辑/操作</td>
    		<td>商品编码</td>
    		<td>商品名称</td>
    		<td>商品价格</td>
    	</tr>
    	<c:forEach items="${gList}" var="renthouse">
    		<tr>
    			<td>${renthouse.fangshi}</td>
    			<td>${renthouse.xiaoqu}</td>
    			<td>${renthouse.menpai}</td>
    			<td>${renthouse.mianji}</td>
    			<td>${renthouse.zujin}</td>
    			<td><img src="image/${renthouse.tupian}"/></td>
    			<td>${renthouse.lianxi}</td>
    		</tr>
    	</c:forEach>
    
    </table>
  </body>
</html>
