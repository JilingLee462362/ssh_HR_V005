<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

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
								<label>选择时间：</label>
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
							<div class="kv-item ue-clear">
								<label>选择类型:</label>
								<div class="kv-item-content">
									<select name="type.id">
										<option value="1">全部</option>
										<option value="2">全部</option>
										<option value="3">全部</option>
									</select>
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

					<div class="grid">

									<table style="margin-left:0px;width:100%" border="1">
										<thead>
											<tr>
												<th name="id"><div class="ui-table-th"
														style="width:70px">
														<span class="ui-table-thTitle">房屋信息</span><a
															href="javascript:;" class="ui-icon2 ui-icon2-sort"></a><span
															class="ui-table-drag"></span>
													</div>
												</th>
												<th name="name"><div class="ui-table-th"
														style="width:120px">
														<span class="ui-table-thTitle">面积</span><a
															href="javascript:;" class="ui-icon2 ui-icon2-sort"></a><span
															class="ui-table-drag"></span>
													</div>
												</th>
												<th><div class="ui-table-th" style="width:120px">
														<span class="ui-table-thTitle">价格</span><span
															class="ui-table-drag"></span>
													</div>
												</th>
												<th><div class="ui-table-th" style="width:120px">
														<span class="ui-table-thTitle">时间</span><span
															class="ui-table-drag"></span>
													</div>
												</th>
												<th class="minWidth"><div class="ui-table-th"
														style="width:352px;">
														<span class="ui-table-thTitle">房屋详细</span><span
															class="ui-table-drag"></span>
													</div>
												</th>
												<th><div class="ui-table-th" style="width:90px">
														<span class="ui-table-thTitle">联系人</span><span
															class="ui-table-drag"></span>
													</div>
												</th>
												<th><div class="ui-table-th" style="width:50px">
														<span class="ui-table-thTitle">是否审核</span><span
															class="ui-table-drag"></span>
													</div>
												</th>
												<th class="ui-table-blank" width="10" style="width: 10px;">&nbsp;</th>
											</tr>
										</thead>
										
										<tbody>
												<c:forEach items="${requestScope.listHouse}" var="h">
											<tr> 
												<td>${h.title}--</td>
												<td>${h.floorage}</td>
												<td>${h.price}</td>
												<td>${h.pubdate}</td>
												<td>${h.description}</td>
											    <td>${h.contact}</td>
												<td>${h.id }</td>
											</tr>
											</c:forEach>
												
										
										</tbody>
										
									</table>
						 
						 
								

					<div class="pagination"></div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
