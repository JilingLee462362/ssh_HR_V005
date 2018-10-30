<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
 <form action="lin/salary.action" method="post">
<div id="container">
	<!--  薪酬标准修改页面-->
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
                    	<input type="text" placeholder="薪酬标准编号" name="standardId" value="${requestScope.s1.standardId}"/>
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
                		<input type="hidden" name="upadteid" value="${requestScope.s1.ssdId}" />
                    	<input type="text" placeholder="制定人" name="designer" value="${requestScope.s1.designer}"/>
                    </div>
                    <label><span class="impInfo">*</span>&nbsp登记人</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="登记人" name="register" value="${requestScope.s1.register}"/>
                    </div>
                </div>
                
                <div class="kv-item ue-clear time">
                	<label><span class="impInfo">*</span>薪酬总和</label>
                	<div class="kv-item-content">
                	
 		      	<input type="text" placeholder="薪酬" name="salarySum" value="${requestScope.s1.salarySum}" disabled="true"/>
                    </div>
                	<label><span class="impInfo">*</span>登记时间</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="登记时间" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" name="registTime" value="${requestScope.s1.registTime}" />
                        <i class="time-icon"></i>
                    </div>
                </div>
            </div><!--薪酬标准e-->
            <!--薪酬标准b-->
            <h2 class="subfild">
            	<span>薪酬项目</span>
            </h2>
             <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>基本工资</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="基本工资" name="basicSalary" value="${requestScope.s1.basicSalary}"/>
                    </div>
                    <label><span class="impInfo">*</span>岗位补贴</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="岗位补贴" name="stationSalary" value="${requestScope.s1.stationSalary}"/>
                    </div>
                </div> <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>学历补贴</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="学历补贴" name="educationSalary" value="${requestScope.s1.educationSalary}"/>
                    </div>
                    <label><span class="impInfo">*</span>五险一金</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="五险一金" name="ensureSalary"  value="${requestScope.s1.ensureSalary}"/>
                    </div>
                </div> 
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>交通补贴</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="交通补贴" name="trafficSalary" value="${requestScope.s1.trafficSalary}"/>
                    </div>
                    <label><span class="impInfo">*</span>住房补贴</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="住房补贴" name="houseSalary" value="${requestScope.s1.houseSalary}"/>
                    </div>
                </div> 
                
             <!--薪酬标准e-->
             
             <!--申请备注b-->
            <h2 class="subfild">
            	<span>申请备注</span>
            </h2>
            <div class="subfild-content remarkes-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>备注内容</label>
                	<div class="kv-item-content">
                    	<textarea placeholder="${requestScope.s1.remark}" id="content" style="width:800px;height:240px;" name="remark"  ></textarea>
                    </div>
                </div>
            </div>
            <!--申请备注s-->
            
            <div class="buttons">
                <input class="button" type="submit" value="重新申请" />
            </div>
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
