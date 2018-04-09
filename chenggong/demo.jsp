<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function getProvince(){
		//执行在页面加载完毕时，获取到所有的省份信息，添加到select标签上
		//吸血鬼数字-->分治 
		//分治：分开，治理，有一个N个复杂度的问题，拆分成X个独立的且逻辑相同的问题
		//二分法，快速排序，冒泡法，插入排序，递归算法
		//alert("获取省份信息");
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function(){
			if(xmlhttp.readyState == 4){
				var data = xmlhttp.responseText;
				//alert(data);
				//获取下拉框元素
				var selectObj = document.getElementById("provinceId");
				//格式化数据
				var dataArray = eval("("+data+")");
				/* alert(dataArray[0].id);
				alert(dataArray[0].code);
				alert(dataArray[0].name); */
				for(var i = 0;i < dataArray.length;i++){
					//创建option
					var newOption = document.createElement("option");
					//将省份名称赋值给下拉框的元素
					newOption.innerText = dataArray[i].name;
					newOption.value = dataArray[i].code;
					selectObj.appendChild(newOption);
				}
				
				//每一次加载省级信息完毕后，加载市级的信息。
				getCity();
				
			}
		};
		xmlhttp.open("post", "LoadProvince", true);
		xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xmlhttp.send(null);
	}
	
	//加载市级信息
	function getCity(){
		
		//获取选中的省份信息的code
		var proObj = document.getElementById("provinceId");
		//通过选中的option的索引值获取选中项
		var selIndex = proObj.selectedIndex;
		var proCode = proObj[selIndex].value;
		//alert(proCode);
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function(){
			if(xmlhttp.readyState == 4){
				//获取select元素
				var cityObj = document.getElementById("cityId");
				//获取select元素的全部子节点，删除
				var cityNodes = cityObj.childNodes;
				
				//cityObj.removeChild(cityNodes[0]);
				//【for循环删除子节点】
				/* for(var j = 0;j < cityNodes.length;j++){
					//alert(cityNodes[j]);
					cityObj.removeChild(cityNodes[j]);
				} */
				while(cityNodes.length > 0 ){
					cityObj.removeChild(cityNodes[cityNodes.length-1]);
				}
				
				var cityData = xmlhttp.responseText;
				//解析数据
				var cityArray = eval("("+cityData+")");
				for(var i = 0;i < cityArray.length;i++){
					var cityOption = document.createElement("option");
					cityOption.innerText = cityArray[i].name;
					cityOption.value = cityArray[i].code;
					cityObj.appendChild(cityOption);
				}
				
				
				
				
			}
			
		};
		xmlhttp.open("post","LoadCity",true);
		xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xmlhttp.send("proCode="+proCode);
	}
	function test(){
		alert(document.getElementById("provinceId").innerHTML);
	}
</script>
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
<body onload="getProvince()">
	<!-- 
	事件机制：用户进行特定的操作之后执行一段JavaScript代码
	二/三级联动 -->
	<div style="width:100%;height:30px;background-color:black;">
  <a href="shouye.jsp" style="color:white;text-decoration:none;margin-left:100px;text-align:center;line-height:30px;">首页</a>
  <a href="shouye.jsp" style="color:white;text-decoration:none;margin-left:800px;text-align:center;line-height:30px;">公众号</a>
  <a href="shouye.jsp" style="color:white;text-decoration:none;margin-left:30px;text-align:center;line-height:30px;">咨询中心</a>
  <a href="shouye.jsp" style="color:white;text-decoration:none;margin-left:30px;text-align:center;line-height:30px;">好租商城</a>
  
  </div>
  <font style="color:white;font-size:40px;line-height:150px;margin-left:420px;"><b>求租委托好租帮您求租</b></font><br/>
  	  <font style="color:white;font-size:20px;margin-left:520px;">海量客源，快速求租</font>
  	  
  	  <div style="width:450px;height:600px;background-color:white;margin-top:100px;margin-left:400px;">
  	  <img src="image/25.jpg" style="width:450px;"/>
	<form action="insertRentHouse.do" method="post">
	
			&nbsp&nbsp&nbsp&nbsp选择省份：	<select id="provinceId" onchange="getCity()"  name="sheng"  style="margin-top:20px;height:30px;width:256px;" >
			</select>
			
			<br />
			&nbsp&nbsp&nbsp&nbsp选择市级：<select id="cityId" name="shi"  style="margin-top:20px;height:30px;width:256px;margin-left:8px;">
				
			</select>
			<br />
			
			&nbsp&nbsp&nbsp&nbsp租&nbsp&nbsp金：		<input type="text" name="zujin"  style="margin-top:20px;height:30px;width:256px;"/><br />
			&nbsp&nbsp&nbsp&nbsp户&nbsp&nbsp型：            <input type="text" name="huxing"  style="margin-top:20px;height:30px;width:256px;"/><br />
			&nbsp&nbsp&nbsp&nbsp面&nbsp&nbsp积：            <input type="text" name="mianji"  style="margin-top:20px;height:30px;width:256px;"/><br />
			&nbsp&nbsp&nbsp&nbsp设&nbsp&nbsp施：            <input type="text" name="sheshi"  style="margin-top:20px;height:30px;width:256px;"/><br />
			&nbsp&nbsp&nbsp&nbsp楼&nbsp&nbsp层：            <input type="text" name="louceng"  style="margin-top:20px;height:30px;width:256px;"/><br />
			&nbsp&nbsp&nbsp&nbsp装&nbsp&nbsp修：            <input type="text" name="zhuangxiu"  style="margin-top:20px;height:30px;width:256px;"/><br />
			
			<input type="submit" value="确认求租" style="width:120px;height:37px;margin-top:25px;margin-left:175px;">
	</form>
	</div>
</body>
</html>