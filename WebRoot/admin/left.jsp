<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"   prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
 
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="admin/css/style.css" />
	<link rel="stylesheet" href="admin/css/zTreeStyle/zTreeStyle.css" type="text/css">
	<link rel="stylesheet" type="text/css" href="admin/css/skin_/nav.css" />
	<script type="text/javascript" src="admin/js/jquery.js"></script>
	<script type="text/javascript" src="admin/js/global.js"></script>
	<title>底部内容页</title>

  </head>
  
  <body>
 <div id="container">
	<div id="bd">
    	<div class="sidebar">
        	<div class="sidebar-bg"></div>
            <i class="sidebar-hide"></i>
            <h2><a href="javascript:;"><i class="h2-icon" title="切换到树型结构"></i><span>切换到树型结构</span></a></h2>
            <ul class="nav">
      
        
        
		       <li class="nav-li">
		                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">新闻管理</span></a>
		                    <ul class="subnav">
		                    	<li class="subnav-li" href="index.html" data-id="8"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">新闻视频管理</span></a></li>
		                        <li class="subnav-li" href="form.html" data-id="9"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">新闻频道管理</span></a></li>
		                        <li class="subnav-li" href="table.html" data-id="10"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">地方新闻管理</span></a></li>
		                        <li class="subnav-li" data-id="11"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">自定义设置1</span></a></li>
		                    </ul>
		                </li>

			<c:forEach var="map" items="${mapTree}">  

                <li class="nav-li last-nav-li">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">${map.key}</span></a>
                    <ul class="subnav">
                    	<c:forEach var="m" items="${map.value}" varStatus="vs">
                    	 <li class="subnav-li"  href="${m.rightUrl}"  data-id="${m.rightCode}"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">${m.rightText }</span></a></li>
                        </c:forEach>
                    </ul>
                </li>
              </c:forEach>   
                
            </ul>
            <div class="tree-list outwindow">
            	<div class="tree ztree"></div>
            </div>
        </div>
        <div class="main">
        	<div class="title">
                <i class="sidebar-show"></i>
                <ul class="tab ue-clear">
                   
                </ul>
                <i class="tab-more"></i>
                <i class="tab-close"></i>
            </div>
            <div class="content">
            </div>
        </div>
    </div>
</div>

<div class="more-bab-list">
	<ul></ul>
    <div class="opt-panel-ml"></div>
    <div class="opt-panel-mr"></div>
    <div class="opt-panel-bc"></div>
    <div class="opt-panel-br"></div>
    <div class="opt-panel-bl"></div>
</div>
</body>
<script type="text/javascript" src="admin/js/nav.js"></script>
<script type="text/javascript" src="admin/js/Menu.js"></script>
<script type="text/javascript" src="admin/js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript">
	var menu = new Menu({
		defaultSelect: $('.nav').find('li[data-id="1"]')	
	});
	
	// 左侧树结构加载
	var setting = {};

		var zNodes =[
			
			  { "id":"11", "pId":"0", "name":"菜单1"},
			  { "id":"111", "pId":"11", "name":"菜单11", "page":"xx.action"},
			  { "id":"112", "pId":"11", "name":"菜单12","page":"xx.action"},
			  { "id":"113", "pId":"11", "name":"菜单13", "page":"xx.action"},
			  { "id":"114", "pId":"11", "name":"菜单14","page":"xx.action"},
			  { "id":"12", "pId":"0", "name":"菜单2"},
			  { "id":"121", "pId":"12", "name":"菜单21" ,"page":"xx.action"},
			  { "id":"122", "pId":"12", "name":"菜单22" ,"page":"xx.action"},
			  { "id":"123", "pId":"12", "name":"菜单23" ,"page":"xx.action"},
			  { "id":"13", "pId":"0", "name":"菜单3"},
			  { "id":"131", "pId":"13", "name":"菜单31","page":"xx.action"},
			  { "id":"132", "pId":"13", "name":"菜单32","page":"xx.action"}
			
			
		];

	$.fn.zTree.init($(".tree"), setting, zNodes);
	
	
	$('.sidebar h2').click(function(e) {
        $('.tree-list').toggleClass('outwindow');
		$('.nav').toggleClass('outwindow');
    });
	
	$(document).click(function(e) {
		if(!$(e.target).is('.tab-more')){
			 $('.tab-more').removeClass('active');
			 $('.more-bab-list').hide();
		}
    });
</script>

</html>
