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
<link rel="stylesheet" type="text/css" href="admin/css/skin_/table.css" />
<link rel="stylesheet" type="text/css" href="admin/css/jquery.grid.css" />


</head>

<body>
	<div id="container">
		<div id="hd"></div>
		<div id="bd">
			<div id="main">
				<form action="ei/search.action?page.pageNo=1" method="post">
					<div class="search-box ue-clear">
						<div class="search-area">
							<div class="kv-item ue-clear">
											<label>选择岗位分类:</label>
								<div class="kv-item-content">
									<select name="humanMajorKindName">
									    <option value="">   </option>
										<option value="Java开发">Java开发</option>
										<option value="PHP开发">PHP开发</option>
										<option value="前端">前端</option>
									</select>
								</div>
										<label>选择岗位:</label>
								<div class="kv-item-content">
									<select name="humanMajorName">
									    <option value="">   </option>
										<option value="Java开发工程师">Java开发工程师</option>
										<option value="初级Java开发工程师">初级Java开发工程师</option>
										<option value="高级Java开发工程师">高级Java开发工程师</option>
									</select>&nbsp;
								</div> 
								         <label>选择状态:</label>
								<div class="kv-item-content">
									<select name="checkStatus">
										<option value="">   </option>
										<option value="0">未通过</option>
										<option value="1">已通过</option>
									</select>&nbsp;
								</div> 
								
							</div>
							<div class="kv-item ue-clear">
										<label>最近入职：</label>
								<div class="kv-item-content ue-clear">
									<span class="choose"> <span class="checkboxouter">
											<input type="radio" name="pubdate" /> <span class="radio"></span>
									</span> <span class="text">全部</span> </span> <span class="choose"> <span
										class="checkboxouter"> <input type="radio"
											name="pubdate" /> <span class="radio"></span> </span> <span
										class="text">近3天</span> </span> <span class="choose"> <span
										class="checkboxouter"> <input type="radio"
											name="pubdate" /> <span class="radio"></span> </span> <span
										class="text">近一周</span> </span> <span class="choose"> <span
										class="checkboxouter"> <input type="radio"
											name="pubdate" /> <span class="radio"></span> </span> <span
										class="text">近一月</span> </span> <span class="choose"> <span
										class="checkboxouter"> <input type="radio"
											name="pubdate" data-define="define" /> <span class="radio"></span>
									</span> <span class="text">自定义</span> </span> <span class="define-input">
										<input type="text" placeholder="开始时间" /> <span
										class="division"></span> <input type="text" placeholder="结束时间" />
									</span>
								</div>
							</div>
							
		
							
						</div>

						<div class="search-button">
							<input class="button" type="submit" value="搜索一下" />
						</div>
					</div>
				</form>
				<div class="table">
					<div class="opt ue-clear">
						<span class="sortarea"> <span class="sort"> <label>排序：</label>
								<span class="name"> <i class="icon"></i> <span
									class="text">名称</span> </span> </span> <i class="list"></i> <i class="card"></i>
						</span> <span class="optarea"> <a href="javascript:;" class="add">
								<i class="icon"></i> <span class="text">添加</span> </a> <a
							href="javascript:;" class="delete"> <i class="icon"></i> <span
								class="text">删除</span> </a> <a href="javascript:;"
							class="statistics"> <i class="icon"></i> <span class="text">统计</span>
						</a> <a href="javascript:;" class="config"> <i class="icon"></i> <span
								class="text">配置</span> </a> </span>
					</div>

					<div class="table" style="font-size: 14px;">

						<table style="margin-left:0px;width:100%;border="1" class="table">
							<thead>
								<tr>
									<th name="id"><div class="ui-table-th">
											<span class="ui-table-thTitle">姓名</span><a
												href="javascript:;" class="ui-icon2 ui-icon2-sort"></a><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th name="name"><div class="ui-table-th">
											<span class="ui-table-thTitle">岗位分类</span><a
												href="javascript:;" class="ui-icon2 ui-icon2-sort"></a><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">岗位</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">面试次数</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th class="minWidth"><div class="ui-table-th">
											<span class="ui-table-thTitle">面试人</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">面试时间</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">面试评价</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th class="ui-table-blank" width="10" style="width: 10px;">&nbsp;del/update</th>
								</tr>
							</thead>

							<tbody>

								<c:forEach items="${requestScope.listEngageInterview}" var="ei">
									<tr>
										<td>${ei.humanName}--${ei.einId}</td>
										<td>${ei.humanMajorKindName}</td>
										<td>${ei.humanMajorName}</td>
										<td>${ei.interviewAmount}</td>
										<td>${ei.register}</td>
										<td>${ei.registeTime}</td>
										<td>${ei.interviewComment}</td>
										
										<td><a href="ei/toChange.action?einId=${ei.einId}">修改 </a> / <a href="#">删除</a>  </td>
										
									</tr>
								</c:forEach>


							</tbody>

						</table>




						<div class="pagination" style="font-size: 16px">
					 		<a href="ei/search.action?page.pageNo=1">首页</a>
					 		<a href="ei/search.action?page.pageNo=${page.pageNo-1}">上一页</a>
					 		<a href="ei/search.action?page.pageNo=${page.pageNo+1}">下一页</a>
					 		<a href="ei/search.action?page.pageNo=${page.pageCount}">尾页</a>
					 		          
						</div>
					</div>
				</div>
			</div>
		</div>
</body>

</html>
