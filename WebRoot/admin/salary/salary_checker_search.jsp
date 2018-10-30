<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
	<!-- 薪酬标准审核的查询页面 -->
    <div id="bd">
    	<div id="main">
    	<form action="lin/searchChecker.action" method="post" id="myform">
        	<div class="search-box ue-clear">
            	<div class="search-area">
                    <!-- <div class="kv-item ue-clear">
                        <label>选择时间：</label>
                        <div class="kv-item-content ue-clear">
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="pubdate"   />
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
                    </div> -->
                    <div class="kv-item ue-clear">
                        <label>选择类型:</label>
                        <input type="hidden" id="checker" value="${checker}"/>
                        <div class="kv-item-content">
                            <select name="changeStatus" id="change">
                               <option value="">全部</option>
                                <option value="0">申请中</option>
                               <!--  <option value="1">重新申请</option> -->
                                <option value="2">审核通过</option>
                            </select>
                        </div>
                    </div>
                </div>
                
                <div class="search-button">
                	<input class="button" type="submit" id="mybutton" value="搜索一下" />
                </div>
             </div>
             <!-- </form> -->
            <div class="table">
            	<div class="opt ue-clear">
                	<span class="sortarea">
                    	<span class="sort">
                        	<label>排序：</label>
                            <span class="name">
                            	<i class="icon"></i>
                                <span class="text">名称</span>
                            </span>
                        </span>
                        
                        <i class="list"></i>
                        <i class="card"></i>
                    </span>
                	<span class="optarea">
                        <a href="admin/salary_standard_add.jsp" class="add">
                            <i class="icon"></i>
                            <span class="text">添加</span>
                        </a>
                        <a href="javascript:;" class="delete">
                            <i class="icon"></i>
                            <span class="text">删除</span>
                        </a>
                        
                        <a href="javascript:;" class="statistics">
                            <i class="icon"></i>
                            <span class="text">统计</span>
                        </a>
                        
                        <a href="javascript:;" class="config">
                            <i class="icon"></i>
                            <span class="text">配置</span>
                        </a>
                    </span>
                </div>
                <table style="margin-left:0px;width:100%;border="1" class="table">
							<thead>
								<tr>
									<th name="id"><div class="ui-table-th">
											<span class="ui-table-thTitle">薪酬标准编号</span><a
												href="javascript:;" class="ui-icon2 ui-icon2-sort"></a><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th name="name"><div class="ui-table-th">
											<span class="ui-table-thTitle">薪酬标准名称</span><a
												href="javascript:;" class="ui-icon2 ui-icon2-sort"></a><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">制定人</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">登记人</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">登记时间</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">薪酬总额</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">申请备注</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">申请状态</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th class="ui-table-blank" width="10" style="width: 10px;">&nbsp;操作</th>
								</tr>
							</thead>

							<tbody>
                
                 <c:forEach items="${requestScope.listSearchChecker}" var="f">
									<tr>
										<td>${f.standardId}</td>
										<td>${f.standardName}</td>
										<td>${f.designer}</td>
										<td>${f.register}</td>
										
										<td>${f.registTime}</td>
										
										<td>${f.salarySum}</td>
										
										<td>${f.remark}</td>
										
										<c:if test="${f.changeStatus eq 0}">
										<td>申请中</td>
										<td><a href="lin/checker.action?upadteid=${f.ssdId}">审核</a></td>
										</c:if>
										<c:if test="${f.changeStatus eq 2}">
										<td>审核通过</td>
										<td><a href="lin/check.action?upadteid=${f.ssdId}">查看</a></td>
										</c:if>									
									</tr>
								</c:forEach>
									</tbody>

						</table>
                    <div class="pagination" style="font-size: 16px">
                    
                    	<input type="hidden" id="pageNo" name="page.pageNo" value="${requestScope.page.pageNo}">
                    	<input type="hidden" id="pageCount" name="page.pageCount" value="${requestScope.page.pageCount}">
					 	<a href="javascript:;" id="homepage">首页</a>
					 	<a href="javascript:;" id="previouspage">上一页</a>
					 	<a href="javascript:;" id="nextpage">下一页</a>
					 	<a href="javascript:;" id="lastpage">尾页</a> 
					 		<!-- <a href="lin/searchChecker.action?page.pageNo=1">首页</a>
					 		<a href="lin/searchChecker.action?page.pageNo=${page.pageNo-1}">上一页</a>
					 		<a href="lin/searchChecker.action?page.pageNo=${page.pageNo+1}">下一页</a>
					 		<a href="lin/searchChecker.action?page.pageNo=${page.pageCount-1}">尾页</a> -->
					 		          
						</div>
               
                
            </div>
            </form>
        </div>
    </div>
   
</div>
</body>
<script type="text/javascript" src="admin/js/jquery.js"></script>
<script type="text/javascript" src="admin/js/global.js"></script>
<script type="text/javascript" src="admin/js/jquery.select.js"></script>
<script type="text/javascript" src="admin/js/core.js"></script>
<script type="text/javascript" src="admin/js/jquery.pagination.js"></script>
<script type="text/javascript" src="admin/js/jquery.grid.js"></script>
<script type="text/javascript" src="admin/js/WdatePicker.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		//alert("1212");
		var checker = $("#checker").val();
		 //alert(iun);
		//获得下拉列表的id
	var select = document.getElementById("change");
	//获得下拉列表的所有option
	var options = select.options;
	
	for(var i=0;i<options.length;i++){
	//如果当前节点与后台传来的值一致，则将当前节点设置为选中状态，并跳出循环
	if (options[i].value == checker){
	options[i].selected = true;
	break;
	}
	}
	
	
	
	
	});
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#homepage").click(function(){
       		$("#pageNo").attr("value", 1);
       		
       		$("#myform").submit();
       		
  		});
  		$("#previouspage").click(function(){
  			$("#pageNo").attr("value",$("#pageNo").val()-1);
  			//alert($("#pageNo").val());
  			$("#myform").submit();
  		});
  		$("#nextpage").click(function(){
  			//alert(typeof $("#pageNo").val());//判断类型
  			$("#pageNo").attr("value",parseInt($("#pageNo").val())+1);
  			//alert($("#pageNo").val());
  			$("#myform").submit();
  		});
  		$("#lastpage").click(function(){
  			$("#pageNo").attr("value",$("#pageCount").val());
  			$("#myform").submit();
  		});
  		$("#mybutton").click(function(){
  			$("#pageNo").attr("value",1);
  			$("#myform").submit();
  		});
  	
  		
	});
</script>
</html>
