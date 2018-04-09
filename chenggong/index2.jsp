<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script language="javascript" src="jquery.js">

</script>

<script type="text/javascript">
function caidan1(){
document.getElementById("rightr").style.display="";
 document.getElementById("r").src="shenhe.do";
}
function caidan2(){
document.getElementById("rightr").style.display="";
 document.getElementById("r").src="queryFang.do";
}
function caidan3(){
document.getElementById("rightr").style.display="";
 document.getElementById("r").src="chakan.do";
}
function caidan4(){
document.getElementById("rightr").style.display="";
 document.getElementById("r").src="chakanuser.do";
}
</script>
<style type="text/css">
<!--
* { 
	margin:0px; 
	padding:0px;
}
html, body{	
	height:100%;
	overflow: hidden;

}
html>body{		/*-- for !IE6.0 --*/
	width: auto;
	height: auto;
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	
}
body {
	border:8px solid #ffffff;
	background-color: #ffffff;min-width:230px;
}
#mainDiv {
	width: 100%;
	height: 100%;
    padding:60px 0px 25px 0px;;
	
	
}
#centerDiv{
	width: 100%;
	height: 100%;
	background-color:#00CCFF;
	padding-left:158px;
}
#mainDiv>#centerDiv{		/*-- for !IE6.0 --*/	
	width: auto;
	height: auto;
	position: absolute;
	top: 56px;
	left: 0px;
	right: 0px;
	bottom: 20px;
	
}
#left{
width:158px;
height:100%;
background:url(slide.jpg) repeat-y;
position:absolute;
left:0px;
}
#lhead{
background:url(left-head.jpg) left top no-repeat;
height:25px;
	font-size:14px;
	color:#FF9933;
    text-align:center;
	line-height:25px;
}
#right{
width:100%;
height:100%;
background:#ffffff;
position:absolute;
overflow-y:auto;
border:1px #003366 solid;
padding:20px 0 0 10px;
font-size:12px;
font-family:"宋体";
}
#centerDiv>#right{
width:auto;
height:auto;
position:absolute;
top:0px;
right:0px;
left:158px;
bottom:0px;
}
#topDiv{
	width:100%;
	height:56px;

	background:url(head-bg.jpg) repeat-x;
	position:absolute;
	top:0px;
	overflow:hidden;
}
#topDiv ul{
list-style:none;
font-size:12px;

width:100%;
margin:0;
padding:0;
}
#topDiv ul li{
float:left;
width:15%
}
#topDiv ul li a {
display:block;
width:100%;
height:25px;
line-height:25px;
background:url(menu-bg.jpg) repeat-x;
color:#FFFFFF;
direction:none;
text-align:center;
border-bottom:1px #000066 solid;
border:1px #06597D solid;
}
#tmenu{
width:100%;
position:absolute;
left:12%;
bottom:0;
padding-left:15%;
margin-left:-15%;
}
#current{
background:#ccc;
height:25px;
line-height:25px;
margin:-20px 0 0 -10;
overflow:hidden;
}
#bottomDiv{
	width:100%;
	height:20px;
	background:url(bottom.jpg) repeat-x;
	position:absolute;
	bottom:0px;
	bottom:-1px;		 /*-- for IE6.0 --*/
}
#right{
background-image:url(image/29.jpg);
background-repeat:no-repeat;
}
#left ul{
list-style:none;
font-size:12px;
margin:50px 0 0 8px;
}
#left ul li a{
display:block;
width:140px;
height:25px;
line-height:25px;
background:url(menu-bg.jpg) repeat-x;
color:#FFFFFF;
direction:none;
text-align:center;
border-bottom:1px #000066 solid;
border:1px #06597D solid;
}
#left ul li a:hover{

background:url(menu-bg.jpg) 0px 25px;
color:#99FFCC;
direction:none;
text-align:center;
border-bottom:1px #000066 solid;
}
#form{
width:80%;
height:99%;
margin:0 auto;
_margin-left:20%;

}
fieldset{
width:100%;
margin:20 auto;
line-height:35px;
padding-left:20PX;
}
-->
</style>
<script language="javascript">

</script>
</head>
<body>
<div id="mainDiv">
	<div id="topDiv">
	<div id="tmenu">
	<font style="margin-left: 400px;font-size:20px;line-height:50px;"><b>租房网后台管理系统</b></font>
	</div></div>
	<div id="centerDiv">
	
	<div id="left">
	<div id="lhead">管理菜单</div>
	<ul>
	<li id="caidan1" onclick="caidan1()"><a>审核房源信息</a></li>
	<li id="caidan2" onclick="caidan2()" ><a href="#">房源展示信息</a></li>
	<li id="caidan3" onclick="caidan3()" ><a href="#">求租表信息</a></li>
	<li id="caidan4" onclick="caidan4()" ><a href="#">用户表信息</a></li>
	<li><a href="shouye.jsp">退出登录</a></li>
	</ul>
	</div>
	<div id="right"> 
		<div id ="rightr" style="display: none;">
				<iframe id="r" src="" style="width: 1160px;height:487px;"></iframe>
		</div>	
	</div>

	</div>
	<div id="bottomDiv"></div>
</div>

</body>
</html>