<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="admin/css/skin_/form.css" />

<script type="text/javascript" src="admin/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="admin/js/global.js"></script>
<script type="text/javascript" src="admin/js/jquery.select.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/admin/js/WdatePicker.js"></script>
<script type="text/javascript">
	window.UMEDITOR_HOME_URL = 'umeditor/'; // 请换成绝对路径
</script>
<script type="text/javascript" src="admin/js/umeditor.config.js"></script>
<title>基础信息</title>

</head>
<script type="text/javascript">
	$(document).ready(function(){
		$("#thirdKindName").change(function(){
			$("#divTest input").empty();
			$("#humanMajorKindName").empty();
			$("#humanName").empty();
			$("#humanSex").empty();
			$.ajax({
				type : "post",
				url : "hu/thirdKindName.action",
				data : {thirdKindName:$("#thirdKindName").val()},
				dataType : "json",
				success : function(json)
				{
					for(var i=0;i<json.length;i++)
					{
						$("#humanMajorKindName").append("<option value="+json[i].humanMajorKindName+" >"+json[i].humanMajorKindName+"</option>");
						$("#humanName").append("<option value="+json[i].humanName+" >"+json[i].humanName+"</option>");
					}
					$("#humanSex").append("<option value="+json[0].humanSex+" >"+json[0].humanSex+"</option>");
					$("#humanIdCard").attr("value",json[0].humanIdCard);
					$("#humanEducatedDegree").attr("value",json[0].humanEducatedDegree);
					$("#humanMobilephone").attr("value",json[0].humanMobilephone);
					$("#humanEmail").attr("value",json[0].humanEmail);
					$("#humanAddress").attr("value",json[0].humanAddress);
					$("#humanPostcode").attr("value",json[0].humanPostcode);
					$("#humanParty").attr("value",json[0].humanParty);
					$("#humanRace").attr("value",json[0].humanRace);
					$("#register").attr("value",json[0].register);
					$("#humanAccount").attr("value",json[0].humanAccount);
					$("#humanAge").attr("value",json[0].humanAge);
					$("#humanFileStatus").attr("value",json[0].humanFileStatus);
				},
				error : function()
				{
					alert("返回数据错误");
				}
			})
		});
		
		$("#humanMajorKindName").change(function(){
			$("#divTest input").empty();
			$("#humanName").empty();
			$("#humanSex").empty();
			$.ajax({
				type : "post",
				url : "hu/humanMajorKindName.action",
				data : {thirdKindName:$("#thirdKindName").val(),humanMajorKindName:$("#humanMajorKindName").val()},
				dataType : "json",
				success : function(json)
				{
					for(var i=0;i<json.length;i++)
					{
						$("#humanName").append("<option value="+json[i].humanName+" >"+json[i].humanName+"</option>");
					}
					$("#humanSex").append("<option value="+json[0].humanSex+" >"+json[0].humanSex+"</option>");
					$("#humanIdCard").attr("value",json[0].humanIdCard);
					$("#humanEducatedDegree").attr("value",json[0].humanEducatedDegree);
					$("#humanMobilephone").attr("value",json[0].humanMobilephone);
					$("#humanEmail").attr("value",json[0].humanEmail);
					$("#humanAddress").attr("value",json[0].humanAddress);
					$("#humanPostcode").attr("value",json[0].humanPostcode);
					$("#humanParty").attr("value",json[0].humanParty);
					$("#humanRace").attr("value",json[0].humanRace);
					$("#register").attr("value",json[0].register);
					$("#humanAccount").attr("value",json[0].humanAccount);
					$("#humanAge").attr("value",json[0].humanAge);
					$("#humanFileStatus").attr("value",json[0].humanFileStatus);
				},
				error : function()
				{
					alert("返回数据错误");
				}
			})
		});
		
		$("#humanName").change(function(){
			$("#divTest input").empty();
			$("#humanSex").empty();
			$.ajax({
				type : "post",
				url : "hu/humanName.action",
				data : {thirdKindName:$("#thirdKindName").val(),humanMajorKindName:$("#humanMajorKindName").val(),humanName:$("#humanName").val()},
				dataType : "json",
				success : function(json)
				{
					$("#humanSex ").append("<option value="+json[0].humanSex+" >"+json[0].humanSex+"</option>");
					$("#humanIdCard").attr("value",json[0].humanIdCard);
					$("#humanEducatedDegree").attr("value",json[0].humanEducatedDegree);
					$("#humanMobilephone").attr("value",json[0].humanMobilephone);
					$("#humanEmail").attr("value",json[0].humanEmail);
					$("#humanAddress").attr("value",json[0].humanAddress);
					$("#humanPostcode").attr("value",json[0].humanPostcode);
					$("#humanParty").attr("value",json[0].humanParty);
					$("#humanRace").attr("value",json[0].humanRace);
					$("#register").attr("value",json[0].register);
					$("#humanAccount").attr("value",json[0].humanAccount);
					$("#humanAge").attr("value",json[0].humanAge);
					$("#humanFileStatus").attr("value",json[0].humanFileStatus);
				},
				error : function()
				{
					alert("返回数据错误");
				}
			})
		});
	});
</script>
<body>
	<form action="hu/updatehuInfo.action" method="post">
		<div id="divTest">
			<div id="bd">
				<div id="main">

					<h2 class="subfild">
						<span>档案登记</span>
					</h2>
					<div class="subfild-content base-info">
						<div class="kv-item ue-clear">
							<label><span class="impInfo">*</span>部 门</label>
							<div class="kv-item-content">
								<select name="thirdKindName" id="thirdKindName">
								<c:forEach var="thirdName" items="${humanthirdList}">
									<option value="${thirdName.thirdKindName}">${thirdName.thirdKindName}</option>
								</c:forEach>
								</select>
							</div>
							<label><span class="impInfo">*</span>职 位</label>
							<div class="kv-item-content">
								<select name="humanMajorKindName" id="humanMajorKindName">
									<c:forEach var="humanMajorName" items="${humanMajorList}">
										<option value="${humanMajorName.humanMajorKindName}">${humanMajorName.humanMajorKindName}</option>
									</c:forEach>
								</select>
							</div>
						</div>

						<div class="kv-item ue-clear">
							<label><span class="impInfo">*</span>姓 名</label>
							<div class="kv-item-content">
								<select name="humanName" id="humanName">
									<c:forEach var="humanName" items="${humList}">
										<option value="${humanName.humanName}">${humanName.humanName}</option>
									</c:forEach>
								</select>
							</div>
							<label><span class="impInfo">*</span>性 别</label>
							<div class="kv-item-content">
								<select name="humanSex" id="humanSex">
									<c:forEach var="humanSex" items="${SexList}">
										<option value="${humanSex.humanSex}">${humanSex.humanSex}</option>
									</c:forEach>
								</select>
							</div>
						</div>

						<div class="kv-item ue-clear time">
							<label><span class="impInfo">*</span>身份证号</label>
							<div class="kv-item-content">
								<input type="text" id="humanIdCard" name="humanIdCard" value="${SexList[0].humanIdCard}" />
							</div>

							<label><span class="impInfo">*</span>教育程度</label>
							<div class="kv-item-content">
								<input type="text" id="humanEducatedDegree" name="humanEducatedDegree" value="${SexList[0].humanEducatedDegree}" />
							</div>
						</div>

						<div class="kv-item ue-clear time">
							<label><span class="impInfo">*</span>电 话</label>
							<div class="kv-item-content">
								<input type="text" id="humanMobilephone" name="humanMobilephone" value="${SexList[0].humanMobilephone}" />
							</div>

							<!-- 时间控件 -->
							<!--  
                	<label><span class="impInfo">*</span>登记时间</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="登记时间" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" name="registTime" value="2017-05-12" />
                        <i class="time-icon"></i>
                    </div>
                    -->

							<label><span class="impInfo">*</span>邮 箱</label>
							<div class="kv-item-content">
								<input type="text" id="humanEmail" name="humanEmail" value="${SexList[0].humanEmail}" />
							</div>
						</div>

						<div class="kv-item ue-clear time">
							<label><span class="impInfo">*</span>地 址</label>
							<div class="kv-item-content">
								<input type="text" id="humanAddress" name="humanAddress" value="${SexList[0].humanAddress}" />
							</div>

							<label><span class="impInfo">*</span>邮 编</label>
							<div class="kv-item-content">
								<input type="text" id="humanPostcode" name="humanPostcode" value="${SexList[0].humanPostcode}" />
							</div>
						</div>

						<div class="kv-item ue-clear time">
							<label><span class="impInfo">*</span>政治面貌</label>
							<div class="kv-item-content">
								<input type="text" id="humanParty" name="humanParty" value="${SexList[0].humanParty}" />
							</div>

							<label><span class="impInfo">*</span>种族</label>
							<div class="kv-item-content">
								<input type="text" id="humanRace" name="humanRace" value="${SexList[0].humanRace}" />
							</div>
						</div>

						<div class="kv-item ue-clear time">
							<label><span class="impInfo">*</span>登记人</label>
							<div class="kv-item-content">
								<input type="text" id="register" name="register" value="${SexList[0].register}" />
							</div>

							<label><span class="impInfo">*</span>银行卡号</label>
							<div class="kv-item-content">
								<input type="text" id="humanAccount" name="humanAccount" value="${SexList[0].humanAccount}" />
							</div>

						</div>
						<div class="kv-item ue-clear time">
							<label><span class="impInfo">*</span>年龄</label>
							<div class="kv-item-content">
								<input type="text" id="humanAge" name="humanAge" value="${SexList[0].humanAge}" />
							</div>
						</div>
						
						<div class="kv-item ue-clear time">
							<label><span class="impInfo">*</span>状态</label>
							<div class="kv-item-content">
								<input type="text" id="humanFileStatus" name="humanFileStatus" value="${SexList[0].humanFileStatus}" />
							</div>
						</div>

						<!--隐藏属性开始 -->
						<input type="hidden" name="hufId" value="${SexList[0].hufId}"/>
						<input type="hidden" name="humanId" value="007" /> <input
							type="hidden" name="firstKindId" value="1001" /> <input
							type="hidden" name=firstKindName value="刘氏集团" /> <input
							type="hidden" name="secondKindId" value="1001" /> <input
							type="hidden" name="secondKindName" value="软创" /> <input
							type="hidden" name="thirdKindId" value="1001" /> <input
							type="hidden" name="humanProDesignation" value="高级" /> <input
							type="hidden" name="humanMajorKindId" value="1001" /> <input
							type="hidden" name="humanMajorId" value="1001" /> <input
							type="hidden" name="hunmaMajorName" value="普通职员" /> <input
							type="hidden" name="humanNationality" value="中国" /> <input
							type="hidden" name="remark" value="中国好员工" /> <input
							type="hidden" name="salaryStandardId" value="1001" /> <input
							type="hidden" name="salaryStandardName" value="30000" /> <input
							type="hidden" name="paidSalarySum" value="60000" />
						<!-- 隐藏属性结束 -->

					</div>


					<div class="buttons">
						<input class="button" type="submit" value="更新" />
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
