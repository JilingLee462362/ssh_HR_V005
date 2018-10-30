<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="admin/css/skin_/form.css" />

<script type="text/javascript" src="admin/js/jquery.js"></script>
<script type="text/javascript" src="admin/js/global.js"></script>
<script type="text/javascript" src="admin/js/jquery.select.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/admin/js/WdatePicker.js"></script>

<script type="text/javascript" src="admin/js/umeditor.config.js"></script>
<script type="text/javascript" src="admin/js/editor_api.js"></script>

<title>考试成绩</title>
</head>

<body>
	<div id="container" align="center">
		<div id="hd"></div>
		<div id="bd">
			<div id="main">
				<h2 class="subfild">
					<span>考试分数:</span>
				</h2>
				<div class="subfild-content base-info">
				 <div class="kv-item ue-clear">
					<label><font style="font-size: 16px">${requestScope.count}分</font></label>
				</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
