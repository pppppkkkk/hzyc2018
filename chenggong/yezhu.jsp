<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

/*
图片存储到数据库中有两种：
a.存图片本身，longblob，预处理语句对象，setBinaryStream()
b.存图片的名称
*/
//从数据库中获取要显示的图片
List<String> imgList = new ArrayList<String>();

imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");
imgList.add("1.jpg");
imgList.add("2.jpg");
imgList.add("3.jpg");

%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>租房网</title>
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript">

var initSize = <%=imgList.size()%>;
	function changeImg(){
		//alert("切换");
		//  $("#box").animate({height:300},"slow");
		$("#imgId"+initSize).animate({width:0},"slow");
		initSize -- ;
		if(initSize == 0){
			//将所有图片的宽恢复为520像素
			for(var i = 1;i <= 4;i++){
				$("#imgId"+i).animate({width:520},"slow");	
			}
			//将初始值改为4
			initSize = 4;
		}
	}
	
	
	function loadEvent(){
		//alert("加载事件");
		//changeImg();
		//有规律的执行某一段函数
		//arg1:表示要循环执行的任务
		//arg2:表示执行任务的时间间隔,毫秒为单位
		window.setInterval(changeImg, 5000);
	}
	
	function big1(){
	document.getElementById("4").src="image/44.jpg";
	}
	function small1(){
	document.getElementById("4").src="image/4.jpg";
	}
	function big2(){
	document.getElementById("5").src="image/55.jpg";
	}
	function small2(){
	document.getElementById("5").src="image/5.jpg";
	}
	function big3(){
	document.getElementById("6").src="image/66.jpg";
	}
	function small3(){
	document.getElementById("6").src="image/6.jpg";
	}
	function big4(){
	document.getElementById("7").src="image/77.jpg";
	}
	function small4(){
	document.getElementById("7").src="image/7.jpg";
	}
	function big5(){
	document.getElementById("8").src="image/88.jpg";
	document.getElementById("show").style.display="";
	document.getElementById("p").style.top="-295px";
	}
	function small5(){
	document.getElementById("8").src="image/8.jpg";
	document.getElementById("show").style.display="none";
	document.getElementById("p").style.top="-230px";
	}
	function big6(){
	document.getElementById("9").src="image/99.jpg";
	document.getElementById("shows").style.display="";
	document.getElementById("pp").style.top="-320px";
	}
	function small6(){
	document.getElementById("9").src="image/9.jpg";
	document.getElementById("shows").style.display="none";
	document.getElementById("pp").style.top="-267px";
	}
	function big7(){
	document.getElementById("10").src="image/1010.jpg";
	document.getElementById("showss").style.display="";
	document.getElementById("ppp").style.top="-355px";
	}
	function small7(){
	document.getElementById("10").src="image/10.jpg";
	document.getElementById("showss").style.display="none";
	document.getElementById("ppp").style.top="-303px";
	}
	function big8(){
	document.getElementById("11").src="image/1111.jpg";
	document.getElementById("showsss").style.display="";
	document.getElementById("pppp").style.top="-395px";
	
	}
	function small8(){
	document.getElementById("11").src="image/11.jpg";
	document.getElementById("showsss").style.display="none";
	document.getElementById("pppp").style.top="-340px";
	}
</script>
<style type="text/css">
*{
margin:0px;
}
#zong{
width:1360px;
background-color:white;
}
ul{
list-style:none;
}
ul li{
float:left;
}
.daohang{
color:white;
font-size:20px;
}
.daohang2{
color:black;
font-size:20px;
line-height:30px;
margin-left:-10px;
}
a{
text-decoration:none;
}
a:hover{
color:orange;
}
#zhuanti{
width:100%;
height:340px;
background-color:#FFFFFF;
margin-top:-90px;
}
#hexin{
width:100%;
height:600px;
background-color:#FFFFFF;
}
.hei{
color:black;
font-size:22px;
font-weight:bold;
padding-left:83px;
}
.hui{
font-size:15px;
color:gray;
}
.tu{
width:280px;
height:210px;
margin-top:30px;
}
.tutu{
width:280px;
height:350px;
margin-top:30px;
}
#p{
width:100px;
height:100px;
}
</style>
</head>
<body onload="loadEvent()">


<div id="zong">
	<!-- 
	onload:当页面加载完毕时触发的事件
	轮播图： -->
	<div style="height:600px;">
		<%for(int i = 0;i < imgList.size();i++){
			String imgName = imgList.get(i);
		%>
			<div style="position:absolute;">
				<img src="image/<%=imgName%>" id="imgId<%=(i+1)%>" width="1360px" height="500px"/>
			</div>
		<% 
		} 
		%>
		
		

	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</div>	
	<div style="margin-top:-200px;position:relative;top:-360px;left:105px;">
	<font style="color:white;font-size:35px;"><b>租房网</b></font>
	<ul>
	<li style="margin-left:100px;"><a class="daohang" href="fangyuan.jsp" target="_self">增添房源信息</a></li>
	<li style="margin-left:10px;"><a class="daohang" href="chakanfangyuan.do" target="_self">修改房源信息</a></li>
	<li style="margin-left:300px;"><a class="daohang" href="chakan.do" target="_self"><b>查看求租信息</b></a></li>
	<li style="margin-left:25px;"><a class="daohang" href="shouye.jsp" target="_self"><b>退出登录</b></a></li>
	<li style="margin-left:25px;"><a class="daohang" href="http://mall.haozu.com/index.php?city=bj" target="_self"><b>好租商城</b></a></li>
	<li style="margin-left:25px;"><a class="daohang" href="http://www.haozu.com/bj/zx/" target="_self"><b>咨询中心</b></a></li>
	</ul>
	</div>
	
	
	<div style="margin-top:260px;position:relative;top:-360px;left:300px;">
	<form action="SelectQiuzuBySheng.do">
  	<input type="text" name="sheng"  placeholder="输入你想搜索的省市" style="width:600px;height:45px;font-size:20px;"/>
  	<input type="submit" value="搜索房客" style="width:105px;height:50px;margin-left:-8px;font-size:20px;background-color:orange;color:white;font-weight:bold;border:0px;"/>
  	</form>
		
	
	</div>
	<div style="margin-top:-200px;position:relative;top:-360px;left:400px;">
	<font style="color:white;font-size:55px;">精致租房，舒适享受</font>
	</div>
	<div id="zhuanti">
		<font class="hei">精选专题</font>           
		<font class="hui">优质写字楼 聚你所需</font><br/>
		<img class="tu" src="image/4.jpg" id ="4" style="margin-left:83px;" onmouseover="big1()" onmouseout="small1()"/>
		<img class="tu" src="image/5.jpg" id ="5" style="margin-left:20px;"  onmouseover="big2()" onmouseout="small2()">
		<img class="tu" src="image/6.jpg" id ="6" style="margin-left:20px;"  onmouseover="big3()" onmouseout="small3()">
		<img class="tu" src="image/7.jpg" id ="7" style="margin-top:20px;"  onmouseover="big4()" onmouseout="small4()"><br><br>
		<span style="width:280px;height:10px;margin-left:80px;"> 创业者聚集地：与有趣的灵魂相遇</span>
		<span style="width:280px;height:10px;margin-left:55px;"> 一路逛遍中国知名互联网公司写字楼</span>
		<span style="width:280px;height:10px;margin-left:33px;"> 石景山地位逆袭 入驻写字楼享发展红利！</span>
		<span style="width:280px;height:10px;margin-left:3px;"> “环五环”商圈燕欣商业项目,盛启招商</span>
	</div>
	<div id="hexin">
			<font class="hei">核心商圈</font>           
			<font class="hui">享优质配套 与大咖公司为邻</font><br/>
			<img class="tutu" src="image/8.jpg" id ="8" style="margin-left:70px;" onmouseover="big5()" onmouseout="small5()"/>
			<img class="tutu" src="image/9.jpg" id ="9" style="margin-left:20px;" onmouseover="big6()" onmouseout="small6()"/>
			<img class="tutu" src="image/10.jpg" id ="10" style="margin-left:20px;" onmouseover="big7()" onmouseout="small7()"/>
			<img class="tutu" src="image/11.jpg" id ="11" style="margin-left:20px;" onmouseover="big8()" onmouseout="small8()"/>
			<form action="queryFang.do">
			<input type="submit" value="加载更多" style="width: 410px;height:60px;margin-top:60px;margin-left:480px;background-color:white;font-size:20px;">
			</form>
	</div>
	
	
	
	
	<div id="p" style="position: relative;width:280px;top:-230px;left:70px;height:36px;background-color:black;opacity:0.7;font-size:20px;color:white;">
		 <font><b>CBD/国贸</b></font></br>
		<div id="show" style="display:none;">北京CBD云集了众多世界500强企业，也是金融、保险、地产等高端企业的所在地。</div>
	</div>
	<div id="pp" style="position: relative;width:280px;top:-267px;left:378px;height:36px;background-color:black;opacity:0.7;font-size:20px;color:white;">
		 <font><b>中关村</b></font></br>
		<div id="shows" style="display:none;"> 中关村被誉为“中国硅谷”，是北京高新技术成果的研发、辐射、孵化和商贸中心。</div>
	</div>
	<div id="ppp" style="position: relative;width:280px;top:-302px;left:685px;height:36px;background-color:black;opacity:0.7;font-size:20px;color:white;">
		 <font><b>上地</b></font></br>
		<div id="showss" style="display:none;"> 上地，集软件研发、企业孵化和综合管理服务于一体的国家级软件研发、生产基地。</div>
	</div>
	<div id="pppp" style="position: relative;width:280px;top:-338px;left:994px;height:36px;background-color:black;opacity:0.7;font-size:20px;color:white;">
		 <font><b>望京</b></font></br>
		<div id="showsss" style="display:none;"> 望京，背靠中关村电子城科技园的发展，已成为跨国公司总部、研发中心的聚集地。</div>
	</div>
	
	
	<div id="zixun" style="width: 100%;height:500px;background-color:#F5F6FB;margin-top:-145px;">
		<font class="hei">资讯中心</font>           
		<font class="hui">了解行业动态，把握市场脉搏</font><br/>
		<div><img  src="image/12.jpg" style="margin-left: 75px;height:390px;margin-top:30px;float:left;"></div>
		<div style="height:390px;width: 380px;background-color:white;float:left;margin-top:30px;margin-left:20px;">
			<img alt="" src="image/13.jpg" style="width:380px;height:180px;float:left;">
			<ul>
			<li><a class="daohang2">行业新闻</a></li>
			<li><a class="daohang2" style="margin-left:180px;font-size:15px;">&nbsp更多>></a></li><br/>
			<li><a class="daohang2"></a></li>
			</ul>
			<div style="margin-top:30px;">
				<a class="daohang2" style="font-size:15px;">&nbsp&nbsp&nbsp文华东方拟308亿港元出售怡东酒店&nbsp&nbsp47分钟前</a><br/>
				<a class="daohang2" style="font-size:15px;">&nbsp&nbsp&nbsp新一轮楼市调控杀手锏来袭 二三线&nbsp&nbsp4小时前</a><br/>
				<a class="daohang2" style="font-size:15px;">&nbsp&nbsp&nbsp北京房价实地调查：二手房普跌20%&nbsp&nbsp4小时前 </a><br/>
				<a class="daohang2" style="font-size:15px;">&nbsp&nbsp&nbsp中国楼市进入“五限时代”分析称 &nbsp&nbsp4小时前</a><br/>
				<a class="daohang2" style="font-size:15px;">&nbsp&nbsp&nbsp新政促北京写字楼生变 租赁或成写字&nbsp&nbsp1天前</a><br/>
			</div>
			
		</div>
		
		<div style="height:390px;width: 380px;background-color:white;float:left;margin-top:30px;margin-left:20px;">
			<img alt="" src="image/14.jpg" style="width:380px;height:180px;float:left;">
			<ul>
			<li><a class="daohang2">找房攻略</a></li>
			<li><a class="daohang2" style="margin-left:180px;font-size:15px;">&nbsp更多>></a></li><br/>
			<li><a class="daohang2"></a></li>
			</ul>
			<div style="margin-top:30px;">
				<a class="daohang2" style="font-size:15px;">&nbsp&nbsp&nbsp古代建筑选址是如何看风水的？&nbsp&nbsp&nbsp47分钟前</a><br/>
				<a class="daohang2" style="font-size:15px;">&nbsp&nbsp&nbsp看进来！专家投资写字楼的三步&nbsp&nbsp&nbsp4小时前</a><br/>
				<a class="daohang2" style="font-size:15px;">&nbsp&nbsp&nbsp企业厂房选址的六大秘籍&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp4小时前 </a><br/>
				<a class="daohang2" style="font-size:15px;">&nbsp&nbsp&nbsp入驻“纯租赁”写字楼对企业&nbsp&nbsp&nbsp&nbsp4小时前</a><br/>
				<a class="daohang2" style="font-size:15px;">&nbsp&nbsp&nbsp在北京企业选址为什么如此重要&nbsp&nbsp&nbsp&nbsp1天前</a><br/>
			</div>
			
		</div>
	</div>
	<div id="jiewei"  style="width: 100%;height:760px;background-color:#F5F6FB;">
		<font class="hei">好租商城</font>           
		<font class="hui">一站式企业服务</font><br/>
		
		<img alt="" src="image/15.jpg" style="margin-top:30px;">
		<img alt="" src="image/16.jpg">
	
	</div>
</body>
</html>