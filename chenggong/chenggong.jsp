<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update_good.jsp' starting page</title>
    
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
  <form >
    	商品编码：<input type="text" name="name" value="${User.name}"/><br />
    	商品名称：<input type="text" name="sex" value="${User.sex}" /><br />
    	商品价格：<input type="text" name="age" value="${User.age}"/><br />
    	商品编码：<input type="text" name="city" value="${User.city}"/><br />
    	商品名称：<input type="text" name="photo" value="${User.photo}" /><br />
    	商品价格：<input type="text" name="grant" value="${User.grant}"/><br />
    	商品价格：<input type="text" name="tel" value="${User.tel}"/><br />
    	商品价格：<input type="text" name="email" value="${User.email}"/><br />
    	商品价格：<input type="text" name="mima" value="${User.mima}"/><br />
    </form>
  </body>
</html>
