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
	<!--薪酬标准查询页面 -->
    <div id="bd">
    	<div id="main">
    	<form action="lin/searchSalary.action" method="post" id="form">
        	<div class="search-box ue-clear">
            	<div class="search-area">
                    <!-- <div class="kv-item ue-clear">
                        <label>选择时间：</label>
                        <div class="kv-item-content ue-clear" >
                            <span class="choose" >
                                <span class="checkboxouter">
                                    <input type="radio" name="upadteid"   />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">全部</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="upadteid" value="3" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近3天</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="upadteid" value="7"/>
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一周</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="upadteid"  value="30"/>
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一月</span>
                            </span>
                            
                            
                        </div> 
                    </div>-->
                    <div class="kv-item ue-clear">
                    <input type="hidden" id="ne" value="${salary}">
                        <label>选择类型:</label>
                        <div class="kv-item-content">
                            <select name="changeStatus" id="select">
                                <option value="">全部</option>
                                <option value="0">申请中</option>
                                <option value="1">重新申请</option>
                                <option value="2">通过</option>
                                  
                            </select>
                        </div>
                    </div>
                </div>
                
                <div class="search-button">
                	<input class="button" type="submit" id="mybutton " value="搜索一下"  />
                </div>
             </div>
          <!--   </form> -->
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
											<span class="ui-table-thTitle">申请状态</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th><div class="ui-table-th">
											<span class="ui-table-thTitle">申请备注</span><span
												class="ui-table-drag"></span>
										</div>
									</th>
									<th class="ui-table-blank" width="10" style="width: 10px;">&nbsp;操作</th>
								</tr>
							</thead>

							<tbody>
                
                 <c:forEach items="${requestScope.listSalaryStandard}" var="m">
									<tr>
										<td>${m.standardId}</td>
										<td>${m.standardName}</td>
										<td>${m.designer}</td>
										<td>${m.register}</td>
										
										<td>${m.registTime}</td>
										
										<td>${m.salarySum}</td>
										
										<c:if test="${m.changeStatus eq 0}">
										<td>申请中</td>
										</c:if>
										<c:if test="${m.changeStatus eq 1}">
										<td>重新申请</td>
										</c:if>
										<c:if test="${m.changeStatus eq 2}">
										<td>通过</td>
										</c:if>
										
										<td>${m.remark}</td>
										<c:if test="${m.changeStatus eq 2 }">
										<td><a href="lin/kan.action?upadteid=${m.ssdId}">查看</a>
										</c:if>
										<c:if test="${m.changeStatus ne 2 }">
										<td><a href="lin/updateSalary.action?upadteid=${m.ssdId}">修改</a> 
										 <a href="lin/delSalary.action?upadteid=${m.ssdId}">删除</a>  </td>
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
					 		<!--  <a href="lin/searchSalary.action?page.pageNo=1">首页</a>  
					 		<a href="lin/searchSalary.action?page.pageNo=${page.pageNo-1}">上一页</a>
					 		<a href="lin/searchSalary.action?page.pageNo=${page.pageNo+1}">下一页</a>
					 		<a href="lin/searchSalary.action?page.pageNo=${page.pageCount}">尾页</a> --> 
					 		         
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
		var iun = $("#ne").val();
		 //alert(iun);
		//获得下拉列表的id
	var select = document.getElementById("select");
	//获得下拉列表的所有option
	var options = select.options;
	
	for(var i=0;i<options.length;i++){
	//如果当前节点与后台传来的值一致，则将当前节点设置为选中状态，并跳出循环
	if (options[i].value == iun){
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
       		
       		$("#form").submit();
       		
  		});
  		$("#previouspage").click(function(){
  			$("#pageNo").attr("value",$("#pageNo").val()-1);
  			//alert($("#pageNo").val());
  			$("#form").submit();
  		});
  		$("#nextpage").click(function(){
  			//alert(typeof $("#pageNo").val());//判断类型
  			$("#pageNo").attr("value",parseInt($("#pageNo").val())+1);
  			//alert($("#pageNo").val());
  			$("#form").submit();
  		});
  		$("#lastpage").click(function(){
  			$("#pageNo").attr("value",$("#pageCount").val());
  			$("#form").submit();
  		});
  		$("#mybutton").click(function(){
  			$("#pageNo").attr("value",1);
  			$("#form").submit();
  		});
  	
  		
	});
</script> 

</html>
