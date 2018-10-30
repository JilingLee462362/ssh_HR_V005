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
			
				<h2 class="subfild">
					<span>简历信息</span>
				</h2>
				<div class="subfild-content base-info">
					
					<!-- 将应聘的职位信息id放入隐藏域中 -->
					<input type="hidden" name="resId" value="${er.resId}"/>

					<div style="float: left;">
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>姓名</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true"  name="humanName" value="${er.humanName}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>地址</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true" name="humanAddress" value="${er.humanAddress}"/>
						</div>
					</div>
					
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo"></span>邮编</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true" name="humanPostcode" value="${er.humanPostcode}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>手机号</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true" name="humanMobilephone" value="${er.humanMobilephone}"/>
						</div>
					</div>
					
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>邮箱</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true" name="humanEmail" value="${er.humanEmail}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>性别</label>
						<div class="kv-item-content" >
							<input type="text" readOnly="true" name="humanSex" value="${er.humanSex}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
					</div>
					
				
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>政治面貌</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true" name="humanParty" value="${er.humanParty}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>国籍</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true" name="humanNationality" value="${er.humanNationality}"/>
						</div>
					</div>
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>民族</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true" name="humanRace" value="${er.humanRace}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>年龄</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true" name="humanAge" value="${er.humanAge}"/>
						</div>
					</div>
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>学历</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true" name="humanEducatedDegree" value="${er.humanEducatedDegree}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>身份证</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true" name="humanIdcard" value="${er.humanIdcard}"/>
						</div>
					</div>
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>薪资期望</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true" name="demandSalaryStandard" value="${er.demandSalaryStandard}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						
						<label><span class="impInfo">*</span>个人履历</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true" name="humanHistoryRecords" value="${er.humanHistoryRecords}"/>
						</div>
					</div>
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>备注</label>
						<div class="kv-item-content">
							<input type="text" readOnly="true" name="remark" value="${er.remark}"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
					</div>
					</div>
					
					
					<img src="admin/engage/upload/${er.humanPicture}" id="humanImg" alt="出错" width=100px height=130px  style="float: right"/>
					<label  style="float: right;"><span class="impInfo">*</span>照片&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
					
				
					<form action="er/resumepass.action" method="post" >
						<input type="hidden" name="resId" value="${er.resId}"/>
						<input class="button" type="submit" value="审核通过" style="float: right;"/>
					</form>
					<br><br>
					<form action="er/resumenopass.action" method="post" >
						<input type="hidden" name="resId" value="${er.resId}"/>
						<input class="button" type="submit" value="不予通过" style="float: right;"/>
					</form>
					
					

				</div>

				<!-- <div class="buttons">
					<input class="button" type="submit" value="提交" />
				</div> -->

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
