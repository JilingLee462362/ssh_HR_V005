<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<link rel="stylesheet" type="text/css" href="admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="admin/css/skin_/login.css" />
<script type="text/javascript" src="admin/js/jquery.js"></script>
<script type="text/javascript" src="admin/js/jquery.select.js"></script>
 
  </head>
  
<body>
<!-- ui*   method={1} -->
<form action="ui/login.action" method="post">
<div id="container">
    <div id="bd">
    	<div id="main">
        	<div class="login-box">
                <div class="logo" style="font-size: 24px"></div>
                <h1></h1>
                <div class="input username" id="username">
                    <label for="userName">用户名</label>
                    <span></span>
                    <input type="text" id="userName" name="userName" value="admin" />
                </div>
                <div class="input psw" id="psw">
                    <label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                    <span></span>
                    <input type="password" id="password"  name="userPassword"  value="123123"/>
                </div>
                <div class="input validate" id="validate">
                    <label for="valiDate">验证码</label>
                    <input type="text" id="valiDate" />
                    <div class="value">X3D5</div>
                </div>
                <div class="styleArea">
                    <div class="styleWrap">
                        <select name="style">
                            <option value="默认风格">默认风格</option>
                            <option value="红色风格">红色风格</option>
                            <option value="绿色风格">绿色风格</option>
                        </select>
                    </div>
                </div>
                <div id="btn" class="loginButton">
                    <input type="submit" class="button" value="登录"  />
                </div>
            </div>
        </div>
        <div id="ft">TZHU</div>
    </div>
   
</div>
</form>
</body>
<script type="text/javascript">
	var height = $(window).height() > 445 ? $(window).height() : 445;
	$("#container").height(height);
	var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
	$('#bd').css('padding-top', bdheight);
	$(window).resize(function(e) {
        var height = $(window).height() > 445 ? $(window).height() : 445;
		$("#container").height(height);
		var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
		$('#bd').css('padding-top', bdheight);
    });
	$('select').select();
	
	$('.loginButton').click(function(e) {
        document.location.href = "main.html";
    });
</script>
</html>
