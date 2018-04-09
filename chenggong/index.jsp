<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  	<a href="chakan.do">查看求租表</a>
  	<a href="zhuce.jsp">用户注册</a>
  	<a href="fangyuan.jsp">增添房源</a>
  	<a href="chakanfangyuan.do">修改房源信息</a>
  	<a href="ss.jsp">条件搜索求租表</a>
  	<a href="sss.jsp">条件搜索房源表</a>
  	<a href="queryFang.do">分页</a>
  	<a href="denglu.jsp">登录</a>
  	<a href="shenhe.do">审核房源信息</a>
  	<a href="demo.jsp">增加房客</a>
  	<a href="chakanqiuzu.do">修改房客信息</a>
  	<a href="chakanfangyuan.do">修改房客信息</a>
  	
  </body>
</html>
