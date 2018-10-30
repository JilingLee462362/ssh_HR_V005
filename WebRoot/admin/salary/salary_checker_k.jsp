<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
  <head>
    <base href="<%=basePath%>">
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="admin/css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="admin/css/skin_/form.css" />
<script type="text/javascript" src="admin/js/jquery.js"></script>
<script type="text/javascript" src="admin/js/global.js"></script>
<script type="text/javascript" src="admin/js/jquery.select.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/WdatePicker.js"></script>
<script type="text/javascript">
	window.UMEDITOR_HOME_URL = 'umeditor/'; // 请换成绝对路径
</script>
<script type="text/javascript" src="admin/js/umeditor.config.js"></script>
<script type="text/javascript" src="admin/js/editor_api.js"></script>
<script type="text/javascript" src="<>admin/umeditor/lang/zh-cn/zh-cn.js"></script>
<title>基础信息</title>

</head>
  
  <body>
 <form action="lin/audit.action" method="post">
   <!-- <div class="buttons">
                <input class="button" type="submit" value="确认" />                                               
            </div> 
            </form> -->
<div id="container">
	<!-- 审核通过的查看页面 -->
    <div id="bd">
    	<div id="main">
    		<!--薪酬标准b-->
            <h2 class="subfild">
            	<span>薪酬标准</span>
            </h2>
            <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>薪酬编号</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="薪酬标准编号" name="standardId" value="${requestScope.checkObj.standardId}"/>
                    </div>
                    	 <label><span class="impInfo">*</span>薪酬名称</label>
                	<div class="kv-item-content" >
                    	<select name="standardName" >
                        	<option>Java工程师</option>
                            <option>PHP</option>
                            <option>游戏设计师</option>
                        </select>
                    </div>
                    </div> 

            	
                             
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>制定   人</label>
                	<div class="kv-item-content">
                		
                    	<input type="text" placeholder="制定人" name="designer" value="${requestScope.checkObj.designer}"/>
                    </div>
                    <label><span class="impInfo">*</span>&nbsp登记人</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="登记人" name="register" value="${requestScope.checkObj.register}"/>
                    </div>
                </div>
                
                <div class="kv-item ue-clear time">
                	<label><span class="impInfo">*</span>薪酬总和</label>
                	<div class="kv-item-content">
                	
 		      	<input type="text" placeholder="薪酬" value="${requestScope.checkObj.salarySum}" disabled="true"/>
                    </div>
                	<label><span class="impInfo">*</span>登记时间</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="登记时间" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" name="registTime" value="${requestScope.checkObj.registTime}" />
                        <i class="time-icon"></i>
                    </div>
                </div>
            </div> 
            <!--薪酬标准e-->
            
            <!--薪酬标准b-->
             <h2 class="subfild">
            	<span>薪酬项目</span>
            </h2>
             <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>基本工资</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="基本工资" name="basicSalary" value="${requestScope.checkObj.basicSalary}"/>
                    </div>
                    <label><span class="impInfo">*</span>岗位补贴</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="岗位补贴" name="stationSalary" value="${requestScope.checkObj.stationSalary}"/>
                    </div>
                </div> <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>学历补贴</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="学历补贴" name="educationSalary" value="${requestScope.checkObj.educationSalary}"/>
                    </div>
                    <label><span class="impInfo">*</span>五险一金</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="五险一金" name="ensureSalary"  value="${requestScope.checkObj.ensureSalary}"/>
                    </div>
                </div> 
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>交通补贴</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="交通补贴" name="trafficSalary" value="${requestScope.checkObj.trafficSalary}"/>
                    </div>
                    <label><span class="impInfo">*</span>住房补贴</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="住房补贴" name="houseSalary" value="${requestScope.checkObj.houseSalary}"/>
                    </div>
                    
                </div> 
                 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>申请备注</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="申请备注" name="" value="${requestScope.checkObj.remark}"/>
                    </div>
                    
                    
                </div> 
                
             <!--薪酬标准e-->
              <!--审核项目b-->
              <h2 class="subfild">
            	<span>审核项目</span>
            </h2>
             <div class="subfild-content base-info">
             	 <div class="kv-item ue-clear time">
                	<label><span class="impInfo">*</span>审核人</label>
                	<div class="kv-item-content">
                	
 		      	<input type="text" placeholder="审核" name="checker" value="${requestScope.checkObj.checker}" />
                    </div>
                	<label><span class="impInfo">*</span>审核时间</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="审核时间" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" name="checkTime" value="${requestScope.checkObj.checkTime}" />
                        <i class="time-icon"></i>
                    </div>
                </div>
                <div class="kv-item ue-clear">
                	<label>审核</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                            <c:if test="${requestScope.checkObj.changeStatus eq 2}">
                                <input type="radio" name="changeStatus" value="2" checked="checked"/>
                            </c:if>
                                <span class="radio"></span>
                            </span>
                            <span class="text">通过</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                            <c:if test="${requestScope.checkObj.changeStatus eq 1}">
                                <input type="radio" name="changeStatus" value="1" checked="checked" />
                                </c:if>
                                <span class="radio"></span>
                            </span>
                            <span class="text">重新申请</span>
                        </span>                        
                    </div>                 
                </div>
             </div> 
            <!--审核项目e-->
            
            
             <!--申核备注b-->
             <h2 class="subfild">
            	<span>申核备注</span>
            </h2>
            <div class="subfild-content remarkes-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>备注内容</label>
                	<div class="kv-item-content">
                    	<textarea placeholder="${requestScope.checkObj.checkComment}" id="content" style="width:800px;height:240px;" name="checkComment"  ></textarea>
                    </div>
                </div>
                
                
            </div>
            <!--申请备注s-->
           
           
        </div>
    </div>
</div>
</form> 
</body>

<script type="text/javascript">
	$('select').select();
	showRemind('input[type=text],textarea','color5');
	UM.getEditor('content');
</script>
</html>
