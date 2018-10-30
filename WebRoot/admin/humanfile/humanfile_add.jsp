<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<title>My JSP 'human_add.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="../jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
	$(document).ready(function(){	
		$("#firstKindName").change(function(){
		
			$("#secondKindName").empty();
			var firstKindValue = $("#firstKindName").val();
			$.ajax({
				type : "POST",
                url : "hf1/kindAjax.action",
                data : {firstKindName:firstKindValue},
                dataType:"json",
                success : function(json) 
                {
               
                    for(var i=0;i<json.length;i++)
					{
						$("#secondKindName").append("<option value="+json[i].secondKindName+" >"+json[i].secondKindName+"</option>");
					}
                },
                error : function(json) {
                    alert("错误");
                }		
			});
		});
	});
</script>
</head>

<body>
<form action="hf1/humanfile_add.action" method="post">
	<table border="1">
		<tr>
			<td>一级机构</td>
			<td><select name="firstKindName" id="firstKindName">
			<c:forEach items="${requestScope.firstList}" var="first">
					<option value="${first}">${first}</option>
					
			</c:forEach>
			</select></td>
			<td>二级机构</td>
			<td><select name="secondKindName" id="secondKindName">
					
			</select></td>
			<td>标准工资</td>
			<td><input type="text" name="salaryStandardName" value="10000"></td>
		</tr>
		<tr>
			<td>姓名</td>
			<td><input type="text" name="humanName" value="tom"></td>
			<td>性别</td>
			<td><input type="text" name="humanSex" value="male"></td>
			<td>EMAIL</td>
			<td><input type="text" name="humanEmail" value="10112566@"></td>
		</tr>
		<tr>
			<td>手机</td>
			<td><input type="text" name="humanMobilephone" value="10086"></td>
			<td>住址</td>
			<td><input type="text" name="humanAddress" value="圣托里尼"></td>
			<td>邮编</td>
			<td><input type="text" name="humanPostcode" value="35000"></td>
		</tr>
			<tr>
			<td>国籍</td>
			<td><input type="text" name="humanNationality" value="China"></td>
			<td>政治面貌</td>
			<td><input type="text" name="humanParty" value="群众"></td>
			<td>年龄</td>
			<td><input type="text" name="humanAge" value="18"></td>
			
		</tr>
		</tr>
			<tr>
			<td>教育程度</td>
			<td><input type="text" name="humanEducatedDegree" value="本科"></td>
			<td>身份证号码</td>
			<td><input type="text" name="humanIdCard" value="350322199402253565"></td>
			<td>民族</td>
			<td><input type="text" name="humanRace" value="汉"></td>
			
		</tr>
	
		<tr>
			<td>银行卡卡号</td>
			<td><input type="text" name="humanAccount" value="6228480068227474274"></td>
			<td>登记人</td>
			<td><select name="register"><option value="孙斌">孙斌</option>
					<option value="王建波">王建波</option>
					<option value="张思德">张思德</option>
			</select></td>
			<td>登记时间</td>
			<td><input type="text" name="registTime" onClick="WdatePicker()">
				<input type="hidden" name="humanFileStatus" value="未审核"/>
			</td>
		</tr>
		<tr><td><input type="submit" value="提交"></td></tr>
	</table>
	</form>
</body>
</html>
