<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="js/jquery.js"></script>

<link rel="stylesheet" type="text/css" href="admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="admin/css/skin_/table.css" />
<link rel="stylesheet" type="text/css" href="admin/css/jquery.grid.css" />



</head>

<script type="text/javascript">

	$(document).ready(function(){
		//部门和职位联动业务
		$("#department").change(function(){
			$("#tTitle").empty();
			var department = $("#department").val();
			$.ajax({
				type : "POST",
                url : "hf/ajaxHumanList.action",
                data : {departmentText:department},
                dataType:"json",
                success : function(json) 
                {
                    for(var i=0;i<json.length;i++)
					{
						$("#tTitle").append("<option value="+json[i].humanMajorKindName+" >"+json[i].humanMajorKindName+"</option>");
					}
                },
                error : function(json) {
                    alert("错误");
                }			
			});
		});
		
		$("#search-button").click(function(){
			var department=$("#department").val();
			var tTitle=$("#tTitle").val();
			var selectTime=$("#selectTime").val();
			$("#humanInfo").empty();
			$.ajax({
				type:"POST",
				url:"hc/condSelect.action",
				data:{department:department,tTitle:tTitle,selectTime:selectTime},
				dataType:"json",
				success:function(json)
				{
					for(var i=0;i<json.length;i++)
					{
						$("#humanInfo").append("<tr>");
						$("#humanInfo").append("<td>"+json[i].humanName+"</td>");
						$("#humanInfo").append("<td>"+json[i].thirdKindName+"</td>");
						$("#humanInfo").append("<td>"+json[i].humanMajorKindName+"</td>");
						$("#humanInfo").append("<td>"+json[i].hunmaMajorName+"</td>");
						$("#humanInfo").append("<td>"+json[i].humanAddress+"</td>");
						$("#humanInfo").append("<td>"+json[i].humanPostcode+"</td>");
						$("#humanInfo").append("<td>"+json[i].humanProDesignation+"</td>");
						$("#humanInfo").append("<td><a href=/admin/humanfile/human_update.jsp>审核</a></td>");
						$("#humanInfo").append("</tr>");
					}
				},
				error:function(json)
				{
					alert("返回错误");
				}
			});
		});
	});
</script>
<body>
<!-- 	var firstKindName=$("#firstKindName").val(); -->
	<div id="container">
		<div id="hd"></div>
		<div id="bd">
			<div id="main">
				<form action="hc/condSelect.action" method="post">
						<div class="search-box ue-clear">
							<div class="search-area">
							<!-- 部门和职位div -->
								<div class="kv-item ue-clear">
									<label>选择部门:</label>
									<div class="kv-item-content">					
										<select id="department" name="department">
											<c:forEach var="department" items="${firstList}">
												<option value="${department}">${department}</option>
											</c:forEach>
										</select>
									</div>
									
									<label>选择职位:</label>
									<div class="kv-item-content">
										<select id="tTitle" name="ttitle">
											<c:forEach var="tTitle" items="${secondList}">
												<option value="${tTitle}">${tTitle}</option>
											</c:forEach>
										</select>&nbsp;
									</div>
								</div>
							<!-- 最近入职div -->
								<div class="kv-item ue-clear">
											<label>最近入职：</label>
									<div class="kv-item-content ue-clear">
										<select id="selectTime" name="selecttime">
											<option value="quanbu">全部</option>
											<option value="santian">近三天</option>
											<option value="yizhou">近一周</option>
											<option value="sanshitian">近三十天</option>
										</select>
									</div>
								</div>
							</div>
	
							<div class="search-button">
								<input id="search-button" class="button" type="button" value="搜索" />
							</div>
						</div>
					
				</form>
				<div class="table">
					<div class="opt ue-clear">
						<span class="sortarea"> 
								<span class="sort"> <label>排序：</label>
								<span class="name"> 
									<i class="icon"></i> 
									<span class="text">名称</span> 
								</span> 
								</span>
								 <i class="list"></i> 
								 <i class="card"></i>
						</span> 
						<span class="optarea"> 
							<a href="hf/searchpage.action?page.pageNo=1" class="add">
								<span class="name"> 
									<i class="icon"></i> 
									<span class="text">显示全部</span> 
								</span> 
							</a> 
						</span>
					</div>

					<div class="table" style="font-size: 14px;">

						<table  style="margin-left:0px;width:100%;border="1" class="table">
							<thead>
								<tr>
									<th name="id"><div class="ui-table-th">
											<span class="ui-table-thTitle">员工信息</span><a
												href="javascript:;" class="ui-icon2 ui-icon2-sort"></a><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th name="name"><div class="ui-table-th">
											<span class="ui-table-thTitle">公司部门</span><a
												href="javascript:;" class="ui-icon2 ui-icon2-sort"></a><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">员工职称</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">公司职位</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th class="minWidth"><div class="ui-table-th">
											<span class="ui-table-thTitle">家庭住址</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">邮政编号</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">员工等级</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th class="ui-table-blank" width="10" style="width: 10px;">删除</th>
								</tr>
							</thead>
							<tbody id="humanInfo">
								<c:forEach items="${requestScope.listHumanFile}" var="humanInfo">
									<tr>
										<td>${humanInfo.humanName}</td>
										<td>${humanInfo.thirdKindName}</td>
										<td>${humanInfo.humanMajorKindName}</td>
										<td>${humanInfo.hunmaMajorName}</td>
										<td>${humanInfo.humanAddress}</td>
										<td>${humanInfo.humanPostcode}</td>
										<td>${humanInfo.humanProDesignation}</td>
										
										<td><a href="hf/humandeleted.action?deletedHu=deleted&hufId=${humanInfo.hufId}">删除</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<div class="pagination" style="font-size: 16px">
					 		<a href="hf/searchpage.action?page.pageNo=1">首页</a>
					 		<a href="hf/searchpage.action?page.pageNo=${page.pageNo-1}">上一页</a>
					 		<a href="hf/searchpage.action?page.pageNo=${page.pageNo+1}">下一页</a>
					 		<a href="hf/searchpage.action?page.pageNo=${page.pageCount}">尾页</a>
						</div>
						<!--隐藏属性开始 -->
						<input type="hidden" name="hufId" value="${humanInfo.hufId}"/>
						<input type="hidden" name="humanId" value="007" /> 
						<input type="hidden" name="firstKindId" value="1001" /> 
						<input type="hidden" name=firstKindName value="刘氏集团" /> 
						<input type="hidden" name=thirdKindName value="${humanInfo.thirdKindName}" />
						<input type="hidden" name=humanMajorKindName value="${humanInfo.humanMajorKindName}" />
						<input type="hidden" name=humanName value="${humanInfo.humanName}" />
						<input type="hidden" name=humanSex value="${humanInfo.humanSex}" />  
						<input type="hidden" name="secondKindId" value="1001" /> 
						<input type="hidden" name="secondKindName" value="软创" /> 
						<input type="hidden" name="thirdKindId" value="1001" /> 
						<input type="hidden" name="humanProDesignation" value="高级" /> 
						<input type="hidden" name="humanMajorKindId" value="1001" /> 
						<input type="hidden" name="humanMajorId" value="1001" /> 
						<input type="hidden" name="hunmaMajorName" value="普通职员" /> 
						<input type="hidden" name="humanNationality" value="中国" /> 
						<input type="hidden" name="remark" value="中国好员工" /> 
						<input type="hidden" name="salaryStandardId" value="1001" /> 
						<input type="hidden" name="salaryStandardName" value="30000" /> 
						<input type="hidden" name="paidSalarySum" value="60000" />
						<!-- 隐藏属性结束 -->
					</div>
				</div>
			</div>
		</div>
</body>

</html>
