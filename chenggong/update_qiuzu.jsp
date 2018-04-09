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
<style type="text/css">
	body{
	background-image:url(image/24.jpg);
	background-repeat:no-repeat;
	background-attachment:fixed;
	}

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
  <font style="color:white;font-size:40px;line-height:150px;margin-left:420px;"><b>房源委托好租帮您出租</b></font><br/>
  	  <font style="color:white;font-size:20px;margin-left:520px;">海量客源，快速成交</font>
  	  <div style="width:450px;height:600px;background-color:white;margin-top:100px;margin-left:400px;">
  <form action="updateRentHouse.do"  method="post">
   <img src="image/25.jpg" style="width:450px;"/>
    	&nbsp&nbsp&nbsp&nbsp求租省份：<input type="text" name="sheng" value="${RentHouse.sheng}" style="margin-top:10px;height:30px;width:256px;"/><br /><br />
    	&nbsp&nbsp&nbsp&nbsp求租市级：<input type="text" name="shi" value="${RentHouse.shi}" style="margin-top:10px;height:30px;width:256px;"/><br /><br />
    	&nbsp&nbsp&nbsp&nbsp求租租金：<input type="text" name="zujin" value="${RentHouse.zujin}" style="margin-top:10px;height:30px;width:256px;"/><br /><br />
    	&nbsp&nbsp&nbsp&nbsp求租户型：<input type="text" name="huxing" value="${RentHouse.huxing}" style="margin-top:10px;height:30px;width:256px;"/><br /><br />
    	&nbsp&nbsp&nbsp&nbsp求租面积：<input type="text" name="mianji" value="${RentHouse.mianji}" style="margin-top:10px;height:30px;width:256px;"/><br /><br />
    	&nbsp&nbsp&nbsp&nbsp求租设施：<input type="text" name="sheshi" value="${RentHouse.sheshi}" style="margin-top:10px;height:30px;width:256px;"/><br /><br />
    	&nbsp&nbsp&nbsp&nbsp求租楼层：<input type="text" name="louceng" value="${RentHouse.louceng}" style="margin-top:10px;height:30px;width:256px;"/><br /><br />
    	&nbsp&nbsp&nbsp&nbsp求租装修：<input type="text" name="zhuangxiu" value="${RentHouse.zhuangxiu}" style="margin-top:10px;height:30px;width:256px;"/><br /><br />
    	<input type="submit" value="修改" style="width:120px;height:37px;margin-top:5px;margin-left:150px;"/>
    </form>
    </div>
  </body>
</html>
