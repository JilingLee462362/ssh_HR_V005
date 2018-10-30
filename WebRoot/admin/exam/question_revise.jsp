<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" type="text/css" href="admin/css/style.css" />
<link rel="stylesheet" type="text/css" href="admin/css/skin_/form.css" />

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
            
                 <label><span class="impInfo">*</span>题号</label>
                	<span class="kv-item-content">
                    	<input type="text" name="subId" value="${engsub.subId}" readonly="readonly"/>
                    </span>
                    <span class="kv-item-tip"></span>
                    
                    <label><span class="impInfo">*</span>题目:</label>
                	<span class="kv-item-content">
                    	<input type="text" name="content" value="${engsub.content}"/>
                    </span>
                    <span class="kv-item-tip"></span>
            
                	
                </div>
                
                
                <div class="kv-item ue-clear">
                
                 <label><span class="impInfo">*</span>答案A</label>
                	<span class="kv-item-content">
                    	<input type="text" name="keyA" value="${engsub.keyA}"/>
                    </span>
                    <span class="kv-item-tip"></span>
                    
                  <label><span class="impInfo">*</span>答案B</label>
                	<span class="kv-item-content">
                    	<input type="text" name="keyB" value="${engsub.keyB}"/>
                    </span>
                    <span class="kv-item-tip"></span> 
                
                	
                </div>
            
            
            	<div class="kv-item ue-clear">
                	
                  
                  <label><span class="impInfo">*</span>答案C</label>
                	<span class="kv-item-content">
                    	<input type="text" name="keyC" value="${engsub.keyC}"/>
                    </span>
                    <span class="kv-item-tip"></span>
                    
                   <label><span class="impInfo">*</span>答案D</label>
                	<span class="kv-item-content">
                    	<input type="text" name="keyD" value="${engsub.keyD}"/>
                    </span>
                    <span class="kv-item-tip"></span>   
                   
                </div>
                
                  <div class="kv-item ue-clear time">
                  <label><span class="impInfo">*</span>更新时间</label>
                	<span class="kv-item-content">
                    	<input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" name="changeTime" value="${engsub.changeTime}"/>
                        <i class="time-icon"></i>
                    </span>
                    <span class="kv-item-tip error"></span>
                   
                  </div>
                
                <div class="kv-item ue-clear">
                
                	<label><span class="impInfo">*</span>题型</label>
                	<div class="kv-item-content">
                    	<select name="firstKindName">
                        	<option value="JAVA" <c:if test="${engsub.firstKindName eq 'JAVA'}">selected="selected"</c:if>>JAVA</option>
                            <option value="PHP" <c:if test="${engsub.firstKindName eq 'PHP'}">selected="selected"</c:if>>PHP</option>
                            <option value="UI" <c:if test="${engsub.firstKindName eq 'UI'}">selected="selected"</c:if>>UI</option>
                            <option value="Android" <c:if test="${engsub.firstKindName eq 'Android'}">selected="selected"</c:if>>Android</option>
                        </select>
                    </div>
                    <span class="kv-item-tip success"></span>
                 </div>
                
                 <div class="kv-item ue-clear"> 
                    <label><span class="impInfo">*</span>出题人:</label>
                	<div class="kv-item-content">
                    	<select name="changer">
                        	<option value="子阳" <c:if test="${engsub.changer eq '子阳'}">selected="selected"</c:if>>子阳</option>
                            <option value="森权" <c:if test="${engsub.changer eq '森权'}">selected="selected"</c:if>>森权</option>
                            <option value="思贤" <c:if test="${engsub.changer eq '思贤'}">selected="selected"</c:if>>思贤</option>
                        </select>
                    </div>
                    <span class="kv-item-tip success"></span>
                 </div>
                
                 <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>正确答案</label>
                	<div class="kv-item-content">
                    	<select name="correctKey">
                        	<option value="A" <c:if test="${engsub.correctKey eq 'A'}">selected="selected"</c:if>>A</option>
                            <option value="B" <c:if test="${engsub.correctKey eq 'B'}">selected="selected"</c:if>>B</option>
                            <option value="C" <c:if test="${engsub.correctKey eq 'C'}">selected="selected"</c:if>>C</option>
                            <option value="D" <c:if test="${engsub.correctKey eq 'D'}">selected="selected"</c:if>>D</option>
                        </select>
                    </div>
                    <span class="kv-item-tip success"></span>   
                </div>
                
            
            <div class="buttons">
                <span><input class="button" type="submit" value="确认更新" /></span> 
                <span><a href="sub/question.action?page.pageNo=1"><input class="button"  value="       返回题库" /></a></span>
            </div>
           </form>
        </div> 
        </div>
    </div>
</div>
</body>
</html>
