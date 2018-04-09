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
  
  <body style="background-color: #F5F6FB;margin:0px;">
  <div style="width:100%;height:30px;background-color:black;">
  <a href="shouye.jsp" style="color:white;text-decoration:none;margin-left:100px;text-align:center;line-height:30px;">首页</a>
  <a href="shouye.jsp" style="color:white;text-decoration:none;margin-left:800px;text-align:center;line-height:30px;">公众号</a>
  <a href="shouye.jsp" style="color:white;text-decoration:none;margin-left:30px;text-align:center;line-height:30px;">咨询中心</a>
  <a href="shouye.jsp" style="color:white;text-decoration:none;margin-left:30px;text-align:center;line-height:30px;">好租商城</a>
  
  </div>
  
    <table style="border:3px solid #F5F8FF;background-color:white;margin-left:150px;margin-top:60px;width:1045px;">
    	
    	
    	
    	<c:forEach items="${fangInfo}" var="f">
    		<tr>
    		<td style="float:left;border:3px solid #F5F8FF;margin-left:30px;margin-top:30px;"><img src="image/${f.tupian}"/></td>
    		
    			<td style="float:left;margin-top:45px;margin-left:20px;"><font style="color:gray;">出租方式:</font>  ${f.fangshi}</td>
    			<td style="float:left;margin-top:85px;margin-left:-140px;"><font style="color:gray;">地址:</font> ${f.xiaoqu}</td>
    			<td style="float:left;margin-top:125px;margin-left:-140px;"><font style="color:gray;">门牌:</font> ${f.menpai}</td>
    	    	<td style="float:left;margin-top:165px;margin-left:-140px;"><font style="color:gray;">面积:</font> ${f.mianji}</td>
    	    
    	    	<td style="float:left;margin-top:205px;margin-left:-140px;"><font style="color:gray;">联系:</font> ${f.lianxi}</td>
    			<td style="float:left;margin-top:45px;margin-left:200px;color:red;"><b>租金：${f.zujin}</b></td>
    		</tr>
    	
    	</c:forEach>
    	
    	
    	<tr>
    		<td>
    			<input style="width:100px;height:40px;margin-left:100px;" type="button" value="上一页" onclick="pageUp()" id="up"/>
    		</td>
    		<td>
    			<span id="nowPage">${Page.currentPage }</span>
    			<%-- <input type="hidden" value="${page.currentPage }" /> --%>
    		</td>
    		<td>
    			<input type="button" style="width:100px;height:40px;margin-right:100px;" value="下一页" onclick="pageDown()"/>
    		</td>
    	
    	</tr>
    </table>
  </body>
</html>
