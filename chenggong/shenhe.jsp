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
    <table border="1px solid gray" width="100%" style="text-align:center;background-color:white;margin-top:10px;">
    	<tr>
    		<td>出租方式</td>
    		<td>小区名称</td>
    		<td>小区门牌</td>
    		<td>房屋面积</td>
    		<td>房屋租金</td>
    		<td>房屋图片</td>
    		<td>联系方式</td>
    		<td>编辑/操作</td>
  
    	</tr>
    	<c:forEach items="${gList}" var="fy">
    		<tr>
    			<td>${fy.fangshi}</td>
    			<td>${fy.xiaoqu}</td>
    			<td>${fy.menpai}</td>
    			<td>${fy.mianji}</td>
    			<td>${fy.zujin}</td>
    			<td><img src="image/${fy.tupian}"/></td>
    			<td>${fy.lianxi}</td>
  
    			<td>
    				<a href="querenshenhe.do?fangshi=${fy.fangshi}&xiaoqu=${fy.xiaoqu}&menpai=${fy.menpai}&mianji=${fy.mianji}&zujin=${fy.zujin}&tupian=${fy.tupian}&lianxi=${fy.lianxi}">审核</a>
    			|
    				<a href="DeleteFangyuanByXiaoqu.do?xiaoqu=${fy.xiaoqu}">删除</a>
    			</td>
    		</tr>
    	</c:forEach>
    
    </table>
  </body>
</html>
