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
<link rel="stylesheet" type="text/css" href="css/style.css" />
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
					<span>笔试部分</span>
				</h2>
				<form action="ex/exampro.action" method="post">
					<div class="subfild-content base-info">

                        <div class="kv-item ue-clear">
							<label>考题类型:</label>
							<div class="kv-item-content">
								<select name="examoption">
									<option value="JAVA" selected="selected">JAVA</option>
									<option value="PHP">PHP</option>
									<option value="UI">UI</option>
									<option value="Android">Android</option>
								</select>
							</div>
							<span class="kv-item-tip success"></span>
						</div>
					</div>
					
					<div class="buttons">
						<input class="button" type="submit" value="开始考试" />
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

</html>
