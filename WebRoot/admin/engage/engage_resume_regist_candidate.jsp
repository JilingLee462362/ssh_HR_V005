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
<link href="admin/umeditor/themes/default/_css/umeditor.css" type="text/css"
	rel="stylesheet">
<script type="text/javascript" src="admin/js/jquery.js"></script>
<script type="text/javascript" src="admin/js/global.js"></script>
<script type="text/javascript" src="admin/js/jquery.select.js"></script>
<script type="text/javascript" src="admin/js/WdatePicker.js"></script>
<script type="text/javascript" src="admin/js/jquery-3.3.1.js"></script>
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
			<form action="er/fillResume.action" method="post" enctype="multipart/form-data">
				<h2 class="subfild">
					<span>信息填写</span>
				</h2>
				<div class="subfild-content base-info">
					
					<!-- 将应聘的职位信息id放入隐藏域中 -->
					<input type="hidden" name="engageMajorRelease.mreId" value="${engageMajorRelease.mreId}"/>
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>姓名</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入姓名" name="humanName" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>地址</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入地址" name="humanAddress" />
						</div>
					</div>
					
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo"></span>邮编</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入邮编" name="humanPostcode" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>手机号</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入手机号" name="humanMobilephone" />
						</div>
					</div>
					
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>邮箱</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入邮箱" name="humanEmail" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>性别</label>
						<div class="kv-item-content" >
							<select name="humanSexSelect" style="width: 375px">
								<option value="男">男</option>
								<option value="女">女</option>
							</select>
						</div>
					</div>
					
				
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>政治面貌</label>
						<div class="kv-item-content">
							<select name="humanPartySelect" style="width: 375px">
								<option value="共青团员">共青团员</option>
								<option value="中共党员">中共党员</option>
								<option value="群众">群众</option>
							</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>国籍</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入国籍" name="humanNationality" />
						</div>
					</div>
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>民族</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入民族" name="humanRace" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>年龄</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入年龄" name="humanAge" />
						</div>
					</div>
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>学历</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入学历" name="humanEducatedDegree" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>身份证</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入身份证" name="humanIdcard" />
						</div>
					</div>
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>薪资期望</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入薪资期望" name="demandSalaryStandard" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>个人履历</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入个人履历" name="humanHistoryRecords" />
						</div>
					</div>
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>备注</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输备注" name="remark" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label>
							<span class="impInfo">*</span>
							照片&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="file" name="humanImg"/>
						</label>
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
