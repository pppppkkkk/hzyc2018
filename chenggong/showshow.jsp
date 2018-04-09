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
<style type="text/css">
	body{
	background-color:#F5F6FB;}
	*{
  margin:0px;
 
	}
</style>
  </head>
  
  <body>
  <div style="width:100%;height:30px;background-color:black;">
  <a href="shouye.jsp" style="color:white;text-decoration:none;margin-left:100px;text-align:center;line-height:30px;">首页</a>
  <a href="shouye.jsp" style="color:white;text-decoration:none;margin-left:800px;text-align:center;line-height:30px;">公众号</a>
  <a href="shouye.jsp" style="color:white;text-decoration:none;margin-left:30px;text-align:center;line-height:30px;">咨询中心</a>
  <a href="shouye.jsp" style="color:white;text-decoration:none;margin-left:30px;text-align:center;line-height:30px;">好租商城</a>
  
  </div>
    <table border="1px solid gray" width="100%" style="text-align:center;background-color:white;margin-top:100px;">
    	<tr>
    		<td>省</td>
    		<td>市</td>
    		<td>租金</td>
    		<td>户型</td>
    		<td>面积</td>
    		<td>设施</td>
    		<td>楼层</td>
  			<td>装修</td>
  			<td>编辑/操作</td>
    	</tr>
    	<c:forEach items="${gList}" var="renthouse">
    		<tr>
    			<td>${renthouse.sheng}</td>
    			<td>${renthouse.shi}</td>
    			<td>${renthouse.zujin}</td>
    			<td>${renthouse.huxing}</td>
    			<td>${renthouse.mianji}</td>
    			<td>${renthouse.sheshi}</td>
    			<td>${renthouse.louceng}</td>
  				<td>${renthouse.zhuangxiu}</td>
    			<td>
    				<a href="selectQiuzuBySheng.do?sheng=${renthouse.sheng}">修改</a>
    			|
    				<a href="deleteQiuzuBySheng.do?sheng=${renthouse.sheng}">删除</a>
    			</td>
    		</tr>
    	</c:forEach>
    
    </table>
  </body>
</html>
