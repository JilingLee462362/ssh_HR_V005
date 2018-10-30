<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'engage_major_release.jsp' starting page</title>

<link rel="stylesheet" type="text/css" href="admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="admin/css/skin_/form.css" />
<link href="admin/umeditor/themes/default/_css/umeditor.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="admin/js/jquery.js"></script>
<script type="text/javascript" src="admin/js/global.js"></script>
<script type="text/javascript" src="admin/js/jquery.select.js"></script>
<script type="text/javascript">
	window.UMEDITOR_HOME_URL = 'umeditor/'; // 请换成绝对路径
</script>
<script type="text/javascript" src="admin/js/umeditor.config.js"></script>
<script type="text/javascript" src="admin/js/editor_api.js"></script>
<script type="text/javascript" src="admin/umeditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/WdatePicker.js"></script>
<title>基础信息</title>
</head>

<body>
	<div id="container">
		<div id="hd"></div>
		<div id="bd">
			<div id="main">
			<form action="emr/submit.action" method="post">
				<h2 class="subfild">
					<span>信息发布</span>
				</h2>
				<div class="subfild-content base-info">

					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>部门</label>
						<div class="kv-item-content">
							<select name="firstKindName">
								<option>部门1</option>
								<option>部门2</option>
								<option>部门3</option>
							</select>
						</div>
						<span class="kv-item-tip"> <!-- 提示语 --> </span>
					</div>

					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>职位分类</label>
						<div class="kv-item-content">
							<select name="majorKindName">
								<option>职位分类1</option>
								<option>职位分类2</option>
								<option>职位分类3</option>
							</select>
						</div>
						<span class="kv-item-tip error"> <!-- 错误提示语 --> </span>
					</div>
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>职位</label>
						<div class="kv-item-content">
							<select name="majorName">
								<option>职位1</option>
								<option>职位2</option>
								<option>职位3</option>
							</select>
						</div>
						<span class="kv-item-tip error"> <!-- 错误提示语 --> </span>
					</div>

					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>招聘人数</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入招聘人数" name="humanAmount"/>
						</div>
						<span class="kv-item-tip error"> <!-- 错误提示语 --> </span>
					</div>
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>招聘类型</label>
						<div class="kv-item-content">
							<select name="engageType">
								<option>社会招聘</option>
								<option>学校招聘</option>
							</select>
						</div>
						<span class="kv-item-tip error"> <!-- 错误提示语 --> </span>
					</div>
					
					<div class="kv-item ue-clear time">
                		<label><span class="impInfo">*</span>截止时间</label>
                		<span class="kv-item-content">
                    		<input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" name="deadline"/>
                       	 	<i class="time-icon"></i>
                   		</span>
                	</div>

					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>登记人</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入登记人" name="register" />
						</div>
					</div>

					<div class="subfild-content remarkes-info">
						<div class="kv-item ue-clear">
							<label><span class="impInfo">*</span>岗位介绍</label>
							<div class="kv-item-content">
								<textarea placeholder="内容" id="content"
									style="width:800px;height:120px;" name="majorDescribe"></textarea>
							</div>
						</div>
						<div class="kv-item ue-clear">
							<label><span class="impInfo">*</span>岗位要求</label>
							<div class="kv-item-content">
								<textarea placeholder="内容" id="content"
									style="width:800px;height:120px;" name="engageRequired"></textarea>
							</div>
						</div>
					</div>

				</div>

				<div class="buttons">
					<input class="button" type="submit" value="提交" />
				</div>
			</form>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	$('select').select();
	showRemind('input[type=text],textarea', 'color5');
	UM.getEditor('content');
</script>
</html>
