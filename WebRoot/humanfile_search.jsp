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
				<form action="housesearch.action" method="post">
					<div class="search-box ue-clear">
						<div class="search-area">
							<div class="kv-item ue-clear">
											<label>选择部门:</label>
								<div class="kv-item-content">
									<select name="type.id">
										<option value="1">全部</option>
										<option value="2">全部</option>
										<option value="3">全部</option>
									</select>
								</div>
										<label>选择部门:</label>
								<div class="kv-item-content">
									<select name="type.id">
										<option value="1">全部</option>
										<option value="2">全部</option>
										<option value="3">全部</option>
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
											<span class="ui-table-thTitle">humanName</span><a
												href="javascript:;" class="ui-icon2 ui-icon2-sort"></a><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th name="name"><div class="ui-table-th">
											<span class="ui-table-thTitle">firstKindName</span><a
												href="javascript:;" class="ui-icon2 ui-icon2-sort"></a><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">secondKindName</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">thirdKindName</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th class="minWidth"><div class="ui-table-th">
											<span class="ui-table-thTitle">humanAddress</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">humanPostcode</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">humanProDesignation</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th class="ui-table-blank" width="10" style="width: 10px;">&nbsp;del/update</th>
								</tr>
							</thead>

							<tbody>

								<c:forEach items="${requestScope.listHumanFile}" var="h">
									<tr>
										<td>${h.humanName}--${h.humanId}</td>
										<td>${h.firstKindName}--${h.firstKindId}</td>
										<td>${h.secondKindName}--${h.secondKindId}</td>
										<td>${h.thirdKindName}--${h.thirdKindId}</td>
										<td>${h.humanAddress}</td>
										<td>${h.humanPostcode}</td>
										<td>${h.humanProDesignation}</td>
										
										<td>修改   删除 </td>
										
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
					</div>
				</div>
			</div>
		</div>
</body>

</html>
