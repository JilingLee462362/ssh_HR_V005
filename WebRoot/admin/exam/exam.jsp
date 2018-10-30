<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="admin/css/skin_/form.css" />

<script type="text/javascript" src="admin/js/jquery.js"></script>
<script type="text/javascript" src="admin/js/global.js"></script>
<script type="text/javascript" src="admin/js/jquery.select.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/admin/js/WdatePicker.js"></script>

<script type="text/javascript" src="admin/js/umeditor.config.js"></script>
<script type="text/javascript" src="admin/js/editor_api.js"></script>

<title>基础信息</title>
</head>

<body>
	<div id="container">
		<div id="hd"></div>
		<div id="bd">
			<div id="main">
				<h2 class="subfild">
					<span>${type}考试题&nbsp;&nbsp;&nbsp;(限时20分钟)</span>
				</h2>
				<form action="ex/score.action" method="post">
				<div class="subfild-content base-info">
				
				<c:forEach items="${requestScope.listquestion}" var="lq">
					<div>
						<div style="margin-left: 20px"> <c:set var="a" scope="request" value="${a+1}"/><c:out value="${a}"/> .&nbsp;${lq.content} :</div><br/>
						<div style="margin-left: 50px">

							<input type="radio" name="${lq.subId}" value="A"/><span>A.${lq.keyA}</span><br/><br/> 
							<input type="radio" name="${lq.subId}" value="B"/><span>B.${lq.keyB}</span><br/><br/>
							<input type="radio" name="${lq.subId}" value="C"/><span>C.${lq.keyC}</span><br/><br/> 
							<input type="radio" name="${lq.subId}" value="D"/><span>D.${lq.keyD}</span><br/><br/>
							<span  class="radio"></span>

						</div>
						<span class="kv-item-tip"></span>
					</div><br/>
                   </c:forEach> 
                   


					<div class="buttons">
						<input class="button" type="submit" value="交卷" />
					</div>
					</div>
					</form>
					
				</div>
			</div>
		</div>
</body>

</html>
