<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" type="text/css" href="admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="admin/css/skin_/table.css" />
<link rel="stylesheet" type="text/css" href="admin/css/jquery.grid.css" />
</head>

<body>
	<div id="container">
		
		<div id="bd">
			<div id="main">
			<div class="subfild-content base-info">
				<form action="sub/serdtl.action?page.pageNo=1" method="post">
					<div class="search-box ue-clear">
						<div class="search-area">
						 <input type="hidden" id="tn" value="${typename}">
						 <input type="hidden" id="pn" value="${personname}">
                            <div class="kv-item ue-clear">
							    <label>选择题型:</label>
								<div class="kv-item-content">
									<select name="firstKindName" id="so1">
										<option value="JAVA">JAVA</option>
										<option value="PHP">PHP</option>
										<option value="UI">UI</option>
										<option value="Android">Android</option>
									</select>
								</div>
								 <span class="kv-item-tip success"></span>
								<label>选修改人:</label>
								<div class="kv-item-content">
									<select name="changer" id="so2">
										<option value="子阳">子阳</option>
										<option value="森权">森权</option>
										<option value="思贤">思贤</option>
									</select>&nbsp;
								</div> 
								 <span class="kv-item-tip success"></span>
							</div>
							<div class="kv-item ue-clear">
								<label>选时间段：</label>
								<div class="kv-item-content ue-clear">
								
									 <span class="choose"> <span
										class="checkboxouter"> <input type="radio"
											name="beforetime" value="3"  <c:if test="${needtime eq '3'}">checked="checked"</c:if>/> <span class="radio"></span> </span> <span
										class="text">近3天</span> </span> 
									<span class="choose"> <span
										class="checkboxouter"> <input type="radio"
											name="beforetime" value="7" <c:if test="${needtime eq '7'}">checked="checked"</c:if>/> <span class="radio"></span> </span> <span
										class="text">近一周</span> </span> 
									<span class="choose"> <span
										class="checkboxouter"> <input type="radio"
											name="beforetime" value="30" <c:if test="${needtime eq '30'}">checked="checked"</c:if>/> <span class="radio"></span> </span> <span
										class="text">近一月</span> </span>
									<span class="choose"> <span
										class="checkboxouter"> <input type="radio"
											name="beforetime" value="90" <c:if test="${needtime eq '90'}">checked="checked"</c:if>/> <span class="radio"></span> </span> <span
										class="text">近三月</span> </span>  
								</div>
							</div>
                        </div>
                        <div class="search-button">
							<input class="button" type="submit" value="搜索一下" />
						</div>
					</div>
				</form>
				</div>
				<div class="table">
					<div class="opt ue-clear">
						<span class="sortarea"> <span class="sort"> <label>排序：</label>
								<span class="name"> <i class="icon"></i> <span
									class="text">名称</span> </span> </span> <i class="list"></i> <i class="card"></i>
						</span> <span class="optarea"> <a
							href="admin/exam/add_question.jsp" class="add"> <i
								class="icon"></i> <span class="text">添加</span> </a></span>
					</div>

					<div class="table" style="font-size: 14px;">
						<table style="margin-left:0px;width:100%;border: 1px">
							<thead>
								<tr>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">题号</span><a
												href="javascript:;" class="ui-icon2 ui-icon2-sort"></a><span
												class="ui-table-drag"></span>
										</div></th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">题型</span><a
												href="javascript:;" class="ui-icon2 ui-icon2-sort"></a><span
												class="ui-table-drag"></span>
										</div></th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">题目</span><span
												class="ui-table-drag"></span>
										</div></th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">答案A</span><span
												class="ui-table-drag"></span>
										</div></th>
									<th class="minWidth"><div class="ui-table-th">
											<span class="ui-table-thTitle">正确答案</span><span
												class="ui-table-drag"></span>
										</div></th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">更新人</span><span
												class="ui-table-drag"></span>
										</div></th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">更新时间</span><span
												class="ui-table-drag"></span>
										</div></th>
									<th class="ui-table-blank" width="10" style="width: 10px;">操作</th>
								</tr>
							</thead>
							
								<tbody>

									<c:forEach items="${requestScope.subjects}" var="sub">
									    <div></div>
										<tr>

											<td>${sub.subId}</td>

											<td>${sub.firstKindName}</td>

											<td>${sub.content}</td>

											<td>${sub.keyA}</td>

											<td>${sub.correctKey}</td>

											<td>${sub.changer}</td>

											<td>${sub.changeTime}</td>

											<td><a href="sub/revque.action?subId=${sub.subId}">修改</a>&nbsp;&nbsp;<a href="sub/redque.action?subId=${sub.subId}&page.pageNo=${page.pageNo}">删除</a>
											</td>

										</tr>
										
									</c:forEach>


								</tbody>
						
						</table>




						<div class="pagination" style="font-size: 16px">
							<a href="sub/question.action?page.pageNo=1">首页</a> 
							<a href="sub/question.action?page.pageNo=${page.pageNo-1}">上一页</a>
							<a href="sub/question.action?page.pageNo=${page.pageNo+1}">下一页</a>
							<a href="sub/question.action?page.pageNo=${page.pageCount}">尾页</a>

						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
</body>
<script type="text/javascript" src="admin/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var tns = $("#tn").val();
		var pns = $("#pn").val();
		var tws = $("#tw").val();
		
	var soi1 = document.getElementById("so1");
	var soi2 = document.getElementById("so2");
	
	
	//获得下拉列表的所有option
	var options1 = soi1.options;
	var options2 = soi2.options;
	
	
	for(var i=0;i<options1.length;i++){
	//如果当前节点与后台传来的值一致，则将当前节点设置为选中状态，并跳出循环
	if (options1[i].value == tns){
	options1[i].selected = true;
	break;
	}
	}
	
	for(var i=0;i<options2.length;i++){
	//如果当前节点与后台传来的值一致，则将当前节点设置为选中状态，并跳出循环
	if (options2[i].value == pns){
	options2[i].selected = true;
	break;
	}
	}
	
	});
</script>
</html>
