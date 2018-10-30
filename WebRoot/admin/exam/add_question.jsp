<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="admin/css/style.css"/>
<link rel="stylesheet" type="text/css" href="admin/css/skin_/form.css"/>

<script type="text/javascript" src="admin/js/jquery.js"></script>
<script type="text/javascript" src="admin/js/global.js"></script>
<script type="text/javascript" src="admin/js/jquery.select.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/WdatePicker.js"></script>

<script type="text/javascript" src="admin/js/umeditor.config.js"></script>
<script type="text/javascript" src="admin/js/editor_api.js"></script>
<title>基础信息</title>
</head>

<body>
<div id="container">
	<div id="hd">
    </div>
    <div id="bd">
    	<div id="main">
            <h2 class="subfild">
            	<span>题库更新</span>
            </h2>
            <div class="subfild-content base-info">
            <form action="sub/questionupdate.action?page.pageNo=1" method="post">
            <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>题型</label>
                	<div class="kv-item-content">
                    	<select name="firstKindName">
                        	<option value="JAVA">JAVA</option>
                            <option value="PHP">PHP</option>
                            <option value="UI">UI</option>
                            <option value="Android">Android</option>
                        </select>
                    </div>
                    <span class="kv-item-tip success"></span>
                </div>
                
                
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>出题人:</label>
                	<div class="kv-item-content">
                    	<select name="changer">
                        	<option value="子阳">子阳</option>
                            <option value="森权" selected="selected">森权</option>
                            <option value="思贤">思贤</option>
                        </select>
                    </div>
                    <span class="kv-item-tip success"></span>
                </div>
            
            
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>题目:</label>
                	<span class="kv-item-content">
                    	<input type="text" name="content"/>
                    </span>
                    <span class="kv-item-tip"></span>
                    
                    <label><span class="impInfo">*</span>答案A</label>
                	<span class="kv-item-content">
                    	<input type="text" name="keyA"/>
                    </span>
                    <span class="kv-item-tip"></span>
                </div>
                
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>答案B</label>
                	<span class="kv-item-content">
                    	<input type="text" name="keyB"/>
                    </span>
                    <span class="kv-item-tip"></span>
                    
                    <label><span class="impInfo">*</span>答案C</label>
                	<span class="kv-item-content">
                    	<input type="text" name="keyC"/>
                    </span>
                    <span class="kv-item-tip"></span>
                </div>
                
                 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>答案D</label>
                	<span class="kv-item-content">
                    	<input type="text" name="keyD"/>
                    </span>
                    <span class="kv-item-tip"></span>
                    
                   
                	<label><span class="impInfo">*</span>正确答案</label>
                	<div class="kv-item-content">
                    	<select name="correctKey">
                        	<option value="A">A</option>
                            <option value="B">B</option>
                            <option value="C">C</option>
                            <option value="D">D</option>
                        </select>
                    </div>
                    <span class="kv-item-tip success"></span>
               
                    
                   <!--  <label><span class="impInfo">*</span>正确答案</label>
                	<span class="kv-item-content">
                    	<input type="text" name="correctKey"/>
                    </span>
                    <span class="kv-item-tip"></span> -->
                </div>
                
                <div class="kv-item ue-clear time">
                	<label><span class="impInfo">*</span>更新时间</label>
                	<span class="kv-item-content">
                    	<input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" name="changeTime"/>
                        <i class="time-icon"></i>
                    </span>
                    <span class="kv-item-tip error"></span>
                </div>
                
            </div>
            
            <div class="buttons">
                <input class="button" type="submit" value="确认更新" />
            </div>
            </form>
        </div>
    </div>
</div>
</body>

</html>
