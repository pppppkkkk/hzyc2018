<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户中心-注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	
	
	<style type="text/css">
  *{
  margin:0px;
  }
  a{
  text-decoration:none;
  color:black;
  line-height:42px;
  margin-left:1000px;
  color:gray;
  }
  a:hover{
  color:orange;}
  
  
  </style>

  </head>
  
  
  <body>
  
  <div id="zong" style="width:1434px;height:850px;background-color:#F5F5F5">
  
  	<!-- application/x-www-form-urlencoded通过字符类型传递数据
  	multipart/form-data通过流的方式传递数据
  	 -->
  	 <div id="tou" style="width:100%;height:40px;background-color:white;" >
  	 <img alt="" src="image/17.jpg" style="margin-left:85px;float:left;">
  	 <a href="shouye.jsp" style="float:left;">租房网首页</a>
  	 </div>
  	 <div id="content">
  	 
  	 	<div>
  	 	<img src="image/18.jpg" style="float:left;margin-left:170px;margin-top:110px;"/>
  	 	</div>
  	 
  	 
  			<div style="float:left;width:350px;height:380px;background-color:#F8F8F8;border:3px solid #EEEEEE;margin-top:110px;margin-left:110px;">
		    <form action="register.do" method="post" enctype="multipart/form-data">
		    
		    <br />
		    	<font style="font-size:25px;margin-left:28px;">注   册</font>
		    <br />
		    <br />
		    	<font style="font-size:20px;margin-left:10px;">&nbsp用户名：</font><input type="text" name="name" placeholder="输入用户名"/><br />
		    	<font style="font-size:20px;margin-left:10px;">&nbsp性别：</font><input type="radio" name="sex" value="男"/>男
		    	<input type="radio" name="sex" value="女"/>女<br />
		    	<font style="font-size:20px;margin-left:10px;">&nbsp年龄：</font><input type="text" name="age" /><br />
		    	<font style="font-size:20px;margin-left:10px;">&nbsp城市：</font><select name="city">
		    			<option>北京</option>
		    			<option>上海</option>
		    			<option>长春</option>
		    			<option>广州</option>
		    		</select>
		    	
		    	<br />
		    	<font style="font-size:20px;margin-left:10px;">&nbsp电话：</font><input type="text" name="tel" /><br />
		    	<font style="font-size:20px;margin-left:10px;">&nbsp邮箱：</font><input type="text" name="email" /><br />
		    	
		    	<!-- 【注意】file的name的值【不】应该与po类中的属性名同名 -->
		    	<font style="font-size:20px;margin-left:10px;">&nbsp头像：</font>
		    	<input type="file" name="userFile" /><br />
		    	
		    	<font style="font-size:20px;margin-left:10px;">&nbsp权限：</font><input type="text" name="grant" /><br />
		    	<font style="font-size:20px;margin-left:10px;">&nbsp密码：</font><input type="text" name="mima" /><br />
		    	<input type="submit" value="注册" style="width:300px;height:45px;background-color:orange;color:white;border:none;font-size:25px;margin-left:25px;margin-top:15px;" />
		    </form>
		    </div> 
		    
		    <div id="jiewei">
		    	<img alt="" src="image/19.jpg">
		    
    		</div>
		    
    </div>
    
    
 </div>   
  </body>
</html>
