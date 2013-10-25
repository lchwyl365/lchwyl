<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Demo - 功能</title>
<link type="text/css" rel="stylesheet" href="${contextPath}/css/docs.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/buttons.css" />
<style type="text/css">
td{line-height:38px;}
.span-info{color:#545351;font: 12px arial,微软雅黑,黑体,文泉驿黑体,宋体,sans-serif;padding:5px;}
.registerform .inputxt,
.registerform textarea{
	padding:10px;
	width:260px;
}
.Validform_checktip{display:none; line-height:38px; height:38px;}
.Validform_wrong,
.Validform_right,
.Validform_loading{display:block;}
.info{
	margin-left:8px; 
	border:1px solid #ccc; 
	padding:8px 20px 8px 10px; 
	color:#666; 
	float:left;
	position:relative;
	display:none;
	line-height:20px;
}
.dec {
    top: 9px;
    display: block;
    height: 17px;
    overflow: hidden;
    position: absolute;
    left: -8px;
    width: 8px;
}
.dec s {
    font-family: simsun;
    font-size: 16px;
    height: 19px;
    left: 0;
    line-height: 21px;
    position: absolute;
    text-decoration: none;
    top: 0;
    width:17px;
}
.dec .dec1 {
    color: #ccc;
}
.dec .dec2 {
    color: #fff;
    left: 1px;
}
.logindiv{overflow:hidden;margin:20px;}
.lch-container{margin:20px;}
.lch-container h3{
	color: #212222;
    font-family: "microsoft yahei";
    font-size: 20px;
    font-weight: normal;
    line-height: 1.2em;
    margin-bottom: 15px;
    padding-left: 10px;
}
</style>
</head>
<body>
<div class="lch-container">
	<form class="bs-docs-example">
      <h3>用户登录</h3>
      <a id="login-ran" href="#" class="button button-rounded button-flat-action" style="padding:0px 40px;margin-right:14px;">运行</a>
	</form>
</div>
<script type="text/javascript" src="${contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${contextPath}/plugin/lhgdialog/lhgdialog.js?skin=mac"></script>
<script type="text/javascript" src="${contextPath}/plugin/jquery.placeholder.js"></script>
<script>
$(function(){
	$("#login-ran").click(function(){
		$.dialog({
			title:'登录',
		    width: '500px',
		    height: '330px',
		    content: 'url:${contextPath}/front/login.jsp',
		    lock:true
		});
	});
});
</script>
</body>
</html>