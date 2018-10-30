<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

</head>

<body>
<form action="ei/save.action" method="post">
<div id="container">
	<div id="hd">
    </div>
    <div id="bd">
    	<div id="main">
            <h2 class="subfild">
            	<span>基本信息</span>
            </h2>
            
            <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo"></span>姓名</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="姓名" name="humanName"/>
                    </div> 
                                                       
                </div>                                                                  
             </div>
            
            <div class="kv-item ue-clear">
                	<label>岗位分类</label>
                	<div class="kv-item-content">
                    	<select name="humanMajorKindName">
                        	<option>java</option>
                            <option>PHP</option>
                            <option>JavaScript</option>
                        </select>
                    </div>
                </div> 
                                
                <div class="kv-item ue-clear">
                	<label>岗位</label>
                	<div class="kv-item-content">
                    	<select name="humanMajorName">
                        	<option>高级java工程师</option>
                            <option>PHP工程师</option>
                            <option>初级java工程师</option>
                        </select>
                    </div>
                  </div>
            
            <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo"></span>面试次数</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="第*次面试" name="interviewAmount"/>
                    </div> 
                                                       
                </div>                                                                  
             </div>
             
             <div class="kv-item ue-clear time">
                    <div class="kv-item ue-clear">
                     <label><span class="impInfo"></span>形象评价</label>
                	 <div class="kv-item-content">
                    	 <select name="imageDegree">
                        	<option>A</option>
                            <option>B</option>
                            <option>C</option>
                            <option>D</option>
                         </select>
                     </div>
                    </div>
                    
                    <div class="kv-item ue-clear">
                     <label><span class="impInfo"></span>口才评价</label>
                	<div class="kv-item-content">
                    	<select name="nativeLanguageDegree">
                        	<option>A</option>
                            <option>B</option>
                            <option>C</option>
                            <option>D</option>
                        </select>
                     </div>
                     </div>
                     
                     <div class="kv-item ue-clear">
                     <label><span class="impInfo"></span>外语口语评价</label>
                	<div class="kv-item-content">
                    	<select name="foreignLanguageDegree">
                        	<option>A</option>
                            <option>B</option>
                            <option>C</option>
                            <option>D</option>
                        </select>
                     </div>
                     </div>
                     
                     <div class="kv-item-content">
                     <label>应变能力</label>
                	<div class="kv-item-content">
                    	<select name="responseSpeedDegree">
                        	<option>A</option>
                            <option>B</option>
                            <option>C</option>
                            <option>D</option>
                        </select>
                     </div>
                     </div>
                     
                     <div class="kv-item ue-clear">
                     <label>EQ</label>
                	<div class="kv-item-content">
                    	<select name="eqDegree">
                        	<option>A</option>
                            <option>B</option>
                            <option>C</option>
                            <option>D</option>
                        </select>
                     </div>
                     </div>
                     
                     <div class="kv-item ue-clear">
                     <label>IQ</label>
                	<div class="kv-item-content">
                    	<select name="iqDegree">
                        	<option>A</option>
                            <option>B</option>
                            <option>C</option>
                            <option>D</option>
                        </select>
                     </div>
                     </div>
                     
                     <div class="kv-item ue-clear">
                     <label>综合素质</label>
                	<div class="kv-item-content">
                    	<select name="">
                        	<option>A</option>
                            <option>B</option>
                            <option>C</option>
                            <option>D</option>
                        </select>
                     </div>
                     </div>
             </div>
             
             <h2 class="subfild">
            	<span>面试信息</span>
             </h2>
                
                <div class="kv-item ue-clear time">
                    <label><span class="impInfo"></span>面试人</label>
                	<div class="kv-item-content">
                    	<input type="text" value="${loginUI.userName}" name="register"/>
                    </div>
                	<label><span class="impInfo"></span>面试时间</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="选择时间" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" name="registeTime"/>
                        <i class="time-icon"></i>
                    </div>
                </div>
             
                
                
                <div class="kv-item ue-clear">
                	<label>面试意见</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need" />
                                <span class="radio"></span>
                            </span>
                            <span class="text">建议面试</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need" />
                                <span class="radio"></span>
                            </span>
                            <span class="text">建议笔试</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need" />
                                <span class="radio"></span>
                            </span>
                            <span class="text">建议录用</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need" />
                                <span class="radio"></span>
                            </span>
                            <span class="text">删除简历</span>
                        </span>
                        
                    </div>                    
                </div>
                
                
            </div>
            
            <h2 class="subfild">
            	<span>面试评价</span>
            </h2>
            
            <div class="subfild-content remarkes-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo"></span>评价内容</label>
                	<div class="kv-item-content">
                    	<textarea placeholder="评价内容" id="content" style="width:800px;height:240px;" name="interviewComment"></textarea>
                    </div>
                </div>
            </div>
            
            <div class="buttons">
                <input class="button" type="submit" value="确认提交" />
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
