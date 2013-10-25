<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>AutoJCode-Java代码在线自动生成</title>
<link type="text/css" rel="stylesheet" href="${contextPath}/css/bootstrap.min.css" >
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/buttons.css" />
<style type="text/css">
a:hover{color:white;text-decoration:none;}
table{border-collapse:separate;}
#header {
    box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}
#dropShadowWrapper {
    background-image: url("${contextPath}/img/page_shadow_1014px.png");
    background-position: left center;
    background-repeat: repeat-y;
    border: 0 dashed pink;
    display: block;
    margin: auto;
    position: relative;
    width: 1014px;
    z-index: 2;
}
#footerWrapper{
    background-color: #fff;
    background-repeat: repeat-x;
    border: 0 dashed orange;
    color: #FFFFFF;
    margin: auto;
    min-height: 200px;
    width: 990px;
}
#headerWrapper {
    border: 0 dashed red;
    height: 100px;
    margin: auto;
    position: relative;
    width: 990px;
    z-index: 1000;
}
#logoWrapper {
    float: left;
    height: 90px;
    padding: 20px 0 0 22px;
    width: 308px;
}
#logoImg {
    border: 0 none;
}
#navigationWrapper {
    border: 0 dashed blue;
    float: right;
    height: 30px;
    margin-top: 21px;
    padding: 0;
    text-align: right;
    width: 630px;
}
#nav {
    border: 0 dashed red;
    list-style: none outside none;
    margin: 0;
    padding: 0;
    z-index: 450;
}
#nav li {
    display: block;
    float: left;
    margin: 0;
    position: relative;
    z-index: 500;
}
li.main_nav li {
    background: none repeat scroll 0 0 #C25E00;
    border: 0 dashed black;
}
.main_nav {
    border: 0 dashed pink;
}
#nav li a {
    border: 0 dashed purple;
    color: #333333;
    display: block;
    font-family: "Microsoft Yahei",Helvetica,Arial,Verdana,Sans-Serif;
    font-size: 18px;
    padding: 8px 24px 7px;
    text-align: left;
    text-decoration: none;
}
#nav li a:hover {
    background-color: #1F7D9C;
    color: #FFFFFF;
}
#nav a.selected {
    color: #FF0000;
}
#nav ul {
    display: none;
    left: 0;
    list-style: none outside none;
    padding: 0;
    position: absolute;
}
#nav ul li {
    float: left;
    text-align: left;
    width: 200px;
}
#nav ul a {
    border: 0 dashed green;
    color: #FFFFFF;
    display: block;
    padding: 2px 24px;
}
#nav ul a:hover {
    text-decoration: none;
}
#pageWrapper {
    background: none repeat scroll 0 0 transparent;
    border: 0 dashed red;
    margin: 30px auto auto;
    min-height: 500px;
    position: relative;
    width: 990px;
}
#bannerWrapper{
	height: 316px;
    width: 990px;
}
h2 {
    background: url("img/line.gif") repeat-x scroll center center transparent;
    margin: 15px 0 10px;
    text-align: center;
    color:#1F7D9C;
    font-family: "Microsoft Yahei",Helvetica,Arial,Verdana,Sans-Serif;
    font-size: 24px;
    font-weight:400;
    font-style:normal;
}
h2 span {
    background: none repeat scroll 0 0 #FFFFFF;
    padding: 0 20px;
}

.thumbnails {
    list-style: none outside none;
    margin-left: 5px;
}
.thumbnails:before, .thumbnails:after {
    content: "";
    display: table;
    line-height: 0;
}
.thumbnails:after {
    clear: both;
}
.row-fluid .thumbnails {
    margin-left: 0;
}
.thumbnails > li {
    float: left;
    margin-bottom: 20px;
    margin-left: 20px;
}
.thumbnail {
    border: 1px solid #DDDDDD;
    border-radius: 4px 4px 4px 4px;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.055);
    display: block;
    line-height: 20px;
    padding: 4px;
    transition: all 0.2s ease-in-out 0s;
}
a.thumbnail:hover {
    border-color: #0088CC;
    box-shadow: 0 1px 4px rgba(0, 105, 214, 0.25);
}
.thumbnail > img {
    display: block;
    margin-left: auto;
    margin-right: auto;
    max-width: 100%;
}
.thumbnail .caption {
    color: #555555;
    padding: 9px;
}

.thumbnail {
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
    padding: 15px;
}
.thumbnail:hover {
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.5);
}
.thumbnail a img {
    height: auto;
    width: 100%;
}
.portfolio .thumbnail {
    padding: 8px;
}
</style>
</head>
<body>
 	<div id="dropShadowWrapper">
 		<div id="headerWrapper">
		    <div id="logoWrapper"><a href="${contextPath}/autocode.html"><img src="img/jcode-logo.gif" id="logoImg"></a></div>
		    <!-- begin navigation -->
		    <div id="navigationWrapper">
		        <ul id="nav">
				  <li class="main_nav"><a href="${contextPath}/code/index.jsp"><span style="cursor:default">自动生成代码</span></a></li>
				  <li class="main_nav"><a><span style="cursor:default">开发文档</span></a></li>
				  <li class="main_nav"><a><span style="cursor:default">讨论区</span></a></li>
				  <li class="main_nav"><a><span style="cursor:default">登录</span></a></li>
				  <li class="main_nav"><a><span style="cursor:default">注册</span></a></li>
			    </ul>
			</div>
		    <!-- end navigation --> 
    	</div>
    	<div id="pageWrapper">
    		<div id="bannerWrapper">
    			<img src="img/banner2.png" id="bannerImg" />
    		</div>
    		<h2><span>分分钟实现模块 增、删、改、查</span></h2>
    		<ul class="thumbnails portfolio">
    			<li class="span3">
    				<div class="thumbnail">
    					<a href="/successful">
    					<img alt="服务端开发" src="img/server.png"></a>
    					<h5>服务端开发</h5>
    					<h6>Java、Node.js</h6>
    				</div>
    			</li>
    			<li class="span3">
    				<div class="thumbnail">
    					<a href="/successful">
    						<img alt="移动终端开发" src="img/mobile.png">
    					</a>
    					<h5>移动终端开发</h5>
    					<h6>IOS、Android</h6>
    				</div>
    			</li>
    			<li class="span3">
    				<div class="thumbnail">
    					<a href="/successful">
    						<img alt="数据库设计与开发" src="img/db.png">
    					</a>
    					<h5>数据库设计与开发</h5>
    					<h6>Oracle、MySQL、DB2、NoSQL</h6>
    				</div>
    			</li>
   				<li class="span3">
   					<div class="thumbnail">
   					<a href="/successful">
   						<img alt="系统移植与二次开发" src="img/transplant.png">
   					</a>
   					<h5>系统移植与二次开发</h5>
   					<h6>WEB、IOS、Android</h6>
   					</div>
   				</li>
    		</ul>
    	</div>
 		<div id="footerWrapper">&nbsp;</div>
 	</div>
<script type="text/javascript" src="${contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/bootstrap.min.js"></script>
<script>
</script>
</body>
</html>