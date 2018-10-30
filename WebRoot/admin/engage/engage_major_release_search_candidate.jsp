<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<title>My JSP 'engage_major_release_update.jsp' starting page</title>

<link rel="stylesheet" type="text/css" href="admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="admin/css/skin_/table.css" />
<link rel="stylesheet" type="text/css" href="admin/css/jquery.grid.css" />
<script type="text/javascript" src="admin/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/WdatePicker.js"></script>

</head>

<body>
<!-- 将整个页面作为一个表单提交 -->
<form action="emr/pagingSearch_candidate.action" method="post" id="mainform">
	<div id="container">
		<div class="kv-item ue-clear">
		
		<!-- input的name和select重复了 -->
		
			<input type="hidden" name="firstKindName" id="firstKindName" value="${firstKindName}"/>
			<input type="hidden" name="majorKindName" id="majorKindName" value="${majorKindName}"/>
			<input type="hidden" name="majorName" id="majorName" value="${majorName}"/>
			<input type="hidden" name="engageType" id="engageType" value="${engageType}"/>
			<br> 
			<label>&nbsp;&nbsp;&nbsp;&nbsp;选择部门:</label> 
			<div class="kv-item-content">
				<select id="firstKindNameSelect">
					<option value="全部">全部</option> 
					<option value="部门1">部门1</option>
					<option value="部门2">部门2</option> 
					<option value="部门3">部门3</option> 
				</select> 
			</div> 
			
		    <label>职位分类:</label> 
			<div class="kv-item-content"> 
				<select id="majorKindNameSelect"> 
					<option value="全部">全部</option> 
					<option value="职位分类1">职位分类1</option> 
					<option value="职位分类2">职位分类2</option> 
					<option value="职位分类3">职位分类3</option> 
				</select> 
			</div> 
		</div>
		
		<div class="kv-item ue-clear">
			<br>
			<label>&nbsp;&nbsp;&nbsp;&nbsp;选择职位:</label> 
			<div class="kv-item-content"> 
				<select id="majorNameSelect"> 
					<option value="全部">全部</option> 
					<option value="职位1">职位1</option> 
					<option value="职位2">职位2</option> 
					<option value="职位3">职位3</option> 
				</select> 
			</div> 
			
			<label>招聘方式:</label> 
			<div class="kv-item-content"> 
				<select id="engageTypeSelect" > 
					<option value="全部">全部</option> 
					<option value="社会招聘">社会招聘</option>
					<option value="学校招聘">学校招聘</option> 
				</select> 
			</div> 
		</div>
		
		
		<div id="bd">
			<div id="main">
				<!-- 搜索条件设置开始 -->
				<!-- <div class="search-box ue-clear">
					<div class="search-area">
						<div class="kv-item ue-clear">
							<label>最近入职：</label>
							<div class="kv-item-content ue-clear">
							
								<span class="choose">
									<span class="checkboxouter">
										<input type="radio" name="pubdate" />
										<span class="radio"></span>
									</span>
									<span class="text">全部</span>
								</span>
								
								<span class="choose">
									<span class="checkboxouter">
										<input type="radio" name="pubdate" />
										<span class="radio"></span>
									</span>
									<span class="text">近3天</span>
								</span> 
								
								<span class="choose">
									<span class="checkboxouter">
										<input type="radio" name="pubdate" />
										<span class="radio"></span>
									</span>
									<span class="text">近一周</span>
								</span>
								
								<span class="choose">
									<span class="checkboxouter">
										<input type="radio" name="pubdate" />
										<span class="radio"></span>
									</span>
									<span class="text">近一月</span>
								</span>

								<span class="choose">
									<span class="checkboxouter">
										<input type="radio" name="pubdate" data-define="define" />
										<span class="radio"></span>
									</span>
									<span class="text">自定义</span>
								</span>
								
								<span class="define-input">
									<input type="text" placeholder="开始时间" />
									<span class="division"></span>
									<input type="text" placeholder="结束时间" />
								</span>
								
							</div>
						</div>
					</div> -->

					<div class="search-button">
						<input class="button" type="submit" id="searchSubmit" value="搜索一下" />
					</div>
					<br>
				</div>
				<!-- 搜索条件设置结束 -->
				    
				<!-- 功能区+表格开始 -->
				<div class="table">
					<!-- 中间功能区开始 -->
					<div class="opt ue-clear">
						<!-- <span class="sortarea">
							<span class="sort"> 
								<label>排序：</label>
								<span class="name">
									<i class="icon"></i>
									<span class="text">名称</span>
								</span>
							</span>
							<i class="list"></i>
							<i class="card"></i>
						</span> -->
						<span class="optarea">
                        	<a href="javascript:;" class="add">
								<i class="icon"></i>
                                <span class="text">添加</span>
                            </a>
                            <!-- <a href="javascript:;" class="delete">
								<i class="icon"></i>
								<span class="text">删除</span>
                            </a> -->
                            <!-- <a href="javascript:;" class="statistics">
                            	<i class="icon"></i>
                                <span class="text">统计</span>
							</a> -->
                            <!-- <a href="javascript:;" class="config">
								<i class="icon"></i>
                                <span class="text">配置</span>
                            </a> -->
						</span>
					</div>
					<!-- 中间功能区结束 -->
					
					<!-- 表格开始 -->
					<div class="table" style="font-size: 14px;">
						<table style="margin-left:0px;width:100%;border=" 1" class="table">
							<thead>
								<tr>
									<th>
										<div class="ui-table-th">
											<span class="ui-table-thTitle">&nbsp;&nbsp;部门</span>
											<span class="ui-table-drag"></span>
										</div>
									</th>
									<th>
										<div class="ui-table-th">
											<span class="ui-table-thTitle">职位分类</span>
											<span class="ui-table-drag"></span>
										</div>
									</th>
									<th>
										<div class="ui-table-th">
											<span class="ui-table-thTitle">职位</span>
											<span class="ui-table-drag"></span>
										</div>
									</th>
									<th>
										<div class="ui-table-th">
											<span class="ui-table-thTitle">招聘人数</span>
											<span class="ui-table-drag"></span>
										</div>
									</th>
									<th>
										<div class="ui-table-th">
											<span class="ui-table-thTitle">招聘方式</span>
											<span class="ui-table-drag"></span>
										</div>
									</th>
									<th>
										<div class="ui-table-th">
											<span class="ui-table-thTitle">截至日期</span>
											<span class="ui-table-drag"></span>
										</div>
									</th>
									<th>
										<div class="ui-table-th">
											<span class="ui-table-thTitle">登记人</span>
											<span class="ui-table-drag"></span>
										</div>
									</th>
									<th>
										<div class="ui-table-th">
											<span class="ui-table-thTitle">登记时间</span>
											<span class="ui-table-drag"></span>
										</div>
									</th>
									<th>
										<div class="ui-table-th">
											<span class="ui-table-thTitle">操作</span>
											<span class="ui-table-drag"></span>
										</div>
									</th>
								</tr>
							</thead>

							<tbody>
								
								<c:forEach items="${requestScope.listEngageMajorRelease}" var="lemr">
									<tr>
										<td>&nbsp;&nbsp;${lemr.firstKindName}</td>
										<td>${lemr.majorKindName}</td>
										<td>${lemr.majorName}</td>
										<td>${lemr.humanAmount}</td>
										<td>${lemr.engageType}</td>
										<td>${lemr.deadline}</td>
										<td>${lemr.register}</td>
                                        <td>${lemr.registTime}</td>
										<td><a href="er/toFillResume.action?engageMajorRelease.mreId=${lemr.mreId}">申请该职位</a></td>
									</tr>
								</c:forEach>
								
							</tbody>
						</table>
						<br>
						<!-- 页码隐藏域 -->
						<input type="hidden" id="pageNo" name="page.pageNo" value="${page.pageNo}">
						<!-- 页面信息数量 -->
						<input type="hidden" id="pageSize" name="page.pageSize" value="10">
						<!-- 尾页 -->
						<input type="hidden" id="pageCount" name="page.pageCount" value="${page.pageCount}">
						<div class="pagination" style="font-size: 16px;float:right;">
							<a id="homepage" href="javascript:;">首页</a>
                            <a id="previouspage" href="javascript:;">上一页</a>
                            <a id="nextpage" href="javascript:;">下一页</a>
                            <a id="lastpage" href="javascript:;">尾页</a>
						</div>
					<!-- <form action="emr/pagingSearch.action?page.pageNo=1&page.pageSize=10" method="post">
						<input type="text" name="register" value="黄小兰"/>
						<input type="submit"  value="提交"/>
					</form> -->
					</div>
					<!-- 表格结束 -->
			
				</div>
				<!-- 功能区+表格结束 -->
			</div>
		</div>
	
</form>
<!-- 表单结束 -->
</body>
<script type="text/javascript">
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
    /* $(document).ready(function(){
		
		// 获取	
		var iun = $("#ne").val();
		// 获得下拉列表的id
		var select = document.getElementById("select");
		// 获得下拉列表的所有option
		var options = select.options;
	
		for(var i=0;i<options.length;i++){
			// 如果当前节点与后台传来的值一致，则将当前节点设置为选中状态，并跳出循环
			if (options[i].value == iun){
				options[i].selected = true;
				break;
			}
		}
	}); */
</script>
<script type="text/javascript">
	$(document).ready(function() {
    	$("#homepage").click(function(){
       		$("#pageNo").attr("value", 1);
       		$("#mainform").submit();
  		});
  		$("#previouspage").click(function(){
       		$("#pageNo").attr("value", parseInt($("#pageNo").val()-1));
       		$("#mainform").submit();
  		});
  		$("#nextpage").click(function(){
       		$("#pageNo").attr("value", parseInt($("#pageNo").val()+1));
       		$("#mainform").submit();
  		});
  		$("#lastpage").click(function(){
       		$("#pageNo").attr("value", $("#pageCount").val());
       		$("#mainform").submit();
  		});
  		$("#searchSubmit").click(function(){
       		$("#pageNo").attr("value", 1);
       		$("#mainform").submit();
  		});
    });
</script>
</html>
