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
    
    <title>My JSP 'show_province.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function pageUp(){
			//alert("上一页");
			var nowPage = document.getElementById("nowPage").innerText;
			//alert(spanObj.innerText);
			window.location.href="pageUp.do?nowPage="+nowPage;
		}
		
		function pageDown(){
			//alert("下一页");
			var nowPage = document.getElementById("nowPage").innerText;
			//alert(spanObj.innerText);
			window.location.href="pageDown.do?nowPage="+nowPage;
		}
	
	</script>
  </head>
  
  <body>
    <table>
    	<tr>
    		
    		<td>省级编号</td>
    		<td>省级邮政编码</td>
    		<td>省级名称</td>
    	</tr>
    	
    	
    	<c:forEach items="${provincesInfo}" var="province">
    		<tr>
    			<td>${province.id}</td>
    			<td>${province.code}</td>
    			<td>${province.name}</td>
    		
    		</tr>
    	
    	</c:forEach>
    	
    	
    	<tr>
    		<td>
    			<input type="button" value="上一页" onclick="pageUp()"/>
    		</td>
    		<td>
    			<span id="nowPage">${Page.currentPage }</span>
    			<%-- <input type="hidden" value="${page.currentPage }" /> --%>
    		</td>
    		<td>
    			<input type="button" value="下一页" onclick="pageDown()"/>
    		</td>
    	
    	</tr>
    </table>
  </body>
</html>
