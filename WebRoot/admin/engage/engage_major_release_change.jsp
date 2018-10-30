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
<script type="text/javascript">
	window.UMEDITOR_HOME_URL = 'umeditor/'; // 请换成绝对路径
</script>
<script type="text/javascript" src="admin/js/umeditor.config.js"></script>
<script type="text/javascript" src="admin/js/editor_api.js"></script>
<script type="text/javascript" src="admin/umeditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript" src="admin/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/WdatePicker.js"></script>
<title>基础信息</title>
</head>

<body>
<form action="emr/change.action" method="post">
	<div id="container">
		<div id="hd"></div>
		<div id="bd">
			<div id="main">
				<h2 class="subfild">
					<span>信息变更</span>
				</h2>
				<div class="subfild-content base-info">
				
					<!-- 隐藏域存select选项信息 -->
					<input type="hidden" name="firstKindName" id="firstKindName" value="${firstKindName}"/>
					<input type="hidden" name="majorKindName" id="majorKindName" value="${majorKindName}"/>
					<input type="hidden" name="majorName" id="majorName" value="${majorName}"/>
					<input type="hidden" name="engageType" id="engageType" value="${engageType}"/>

					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>部门</label>
						<div class="kv-item-content">
							<select id="firstKindNameSelect">
								<option value="全部">全部</option>
								<option value="部门1">部门1</option>
								<option value="部门2">部门2</option>
								<option value="部门3">部门3</option>
							</select>
						</div>
						<span class="kv-item-tip"> <!-- 提示语 --> </span>
					</div>

					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>职位分类</label>
						<div class="kv-item-content">
							<select id="majorKindNameSelect">
								<option value="全部">全部</option>
								<option value="职位分类1">职位分类1</option>
								<option value="职位分类2">职位分类2</option>
								<option value="职位分类3">职位分类3</option>
							</select>
						</div>
						<span class="kv-item-tip error"> <!-- 错误提示语 --> </span>
					</div>
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>职位</label>
						<div class="kv-item-content">
							<select id="majorNameSelect">
								<option value="全部">全部</option>
								<option value="职位1">职位1</option>
								<option value="职位2">职位2</option>
								<option value="职位3">职位3</option>
							</select>
						</div>
						<span class="kv-item-tip error"> <!-- 错误提示语 --> </span>
					</div>
					
					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>招聘方式</label> 
						<div class="kv-item-content"> 
							<select id="engageTypeSelect" > 
								<option value="全部">全部</option> 
								<option value="社会招聘">社会招聘</option>
								<option value="学校招聘">学校招聘</option> 
							</select> 
						</div> 
					</div>

					<div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>招聘人数</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入招聘人数" name="humanAmount" id="humanAmount" value="${humanAmount}"/>
						</div>
						<span class="kv-item-tip error"> <!-- 错误提示语 --> </span>
					</div>

					<div class="kv-item ue-clear time">
						<label><span class="impInfo">*</span>截止时间</label>
						<div class="kv-item-content">
							<input type="text" placeholder="文章标题" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" id="deadline" name="deadline" value="${deadline}"/>
							<i class="time-icon"></i>
						</div>
					</div>
					
					<input type="hidden" name="mreId" value="${mreId}"/>


					<!-- <div class="kv-item ue-clear">
						<label><span class="impInfo">*</span>变更人</label>
						<div class="kv-item-content">
							<input type="text" placeholder="请输入登记人" />
						</div>
					</div>
					
					<div class="kv-item ue-clear time">
						<label><span class="impInfo">*</span>变更时间</label>
						<div class="kv-item-content">
							<input type="text" placeholder="文章标题"
								onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" /> <i
								class="time-icon"></i>
						</div>
					</div> -->

					<div class="subfild-content remarkes-info">
						<div class="kv-item ue-clear">
							<label><span class="impInfo">*</span>岗位介绍</label>
							<div class="kv-item-content">
								<textarea  id="content" style="width:800px;height:120px;" name="majorDescribe" id="majorDescribe" >${majorDescribe}</textarea>
							</div>
						</div>
						<div class="kv-item ue-clear">
							<label><span class="impInfo">*</span>岗位要求</label>
							<div class="kv-item-content">
								<textarea  id="content" style="width:800px;height:120px;" name="engageRequired" id="engageRequired" >${engageRequired}</textarea>
							</div>
						</div>
					</div>

				</div>

				<div class="buttons">
					<input class="button" type="submit" value="确认修改" />
				</div>
			</div>
		</div>
	</div>
</form>
</body>

<script type="text/javascript">
	$('select').select();
	showRemind('input[type=text],textarea', 'color5');
	UM.getEditor('content');
</script>
<script type="text/javascript">

	// 后台传回前端页面，设置选项
	$(document).ready(function(){
	    if($("#firstKindName").val() != null && $("#firstKindName").val() != ""){
	    	$("#firstKindNameSelect option[value='"+$("#firstKindName").val()+"']").attr("selected", "selected");
	    }else{
	    	//对应select的option设置为全部
	    	$("#firstKindNameSelect ").get(0).selectedIndex=0;
	    	$("#firstKindName").attr("value", $("#firstKindNameSelect option:selected").val());
	    }
	    
	    if($("#majorKindName").val() != null && $("#majorKindName").val() != ""){
	    	$("#majorKindNameSelect option[value='"+$("#majorKindName").val()+"']").attr("selected", "selected");
	    }else{
	    	//对应select的option设置为全部
	    	$("#majorKindNameSelect ").get(0).selectedIndex=0;
	    	$("#majorKindName").attr("value", $("#majorKindNameSelect option:selected").val());
	    }
	    
	    if($("#majorName").val() != null && $("#majorName").val() != ""){
	    	$("#majorNameSelect option[value='"+$("#majorName").val()+"']").attr("selected", "selected");
	    }else{
	    	//对应select的option设置为全部
	    	$("#majorNameSelect ").get(0).selectedIndex=0;
	    	$("#majorName").attr("value", $("#majorNameSelect option:selected").val());
	    }
	    
	    if($("#engageType").val() != null && $("#engageType").val() != ""){
	    	$("#engageTypeSelect option[value='"+$("#engageType").val()+"']").attr("selected", "selected");
	    }else{
	    	//对应select的option设置为全部
	    	$("#engageTypeSelect ").get(0).selectedIndex=0;
	    	$("#engageType").attr("value", $("#engageTypeSelect option:selected").val());
	    }
	    
	});
	
	// 当选项发生改变时，修改隐藏域的值
	$(document).ready(function() {
    	$("#firstKindNameSelect").change(function(){
       		$("#firstKindName").attr("value", $("#firstKindNameSelect option:selected").val());
  		});
  		$("#majorKindNameSelect").change(function(){
       		$("#majorKindName").attr("value", $("#majorKindNameSelect option:selected").val());
  		});
  		$("#majorNameSelect").change(function(){
       		$("#majorName").attr("value", $("#majorNameSelect option:selected").val());
  		});
  		$("#engageTypeSelect").change(function(){
       		$("#engageType").attr("value", $("#engageTypeSelect option:selected").val());
  		});
  		
    });
</script>

</html>
