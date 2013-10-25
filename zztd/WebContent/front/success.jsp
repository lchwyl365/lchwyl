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
<title>Demo - 注册成功</title>
<link rel="stylesheet" href="${contextPath}/css/register/style.css" type="text/css" media="all" />
<link href="${contextPath}/css/register/demo.css" type="text/css" rel="stylesheet" />
<style type="text/css">
td{line-height:38px;}
.registerform .inputxt,
.registerform textarea{
	padding:10px;
	width:245px;
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
    width: 17px;
}
.dec .dec1 {
    color: #ccc;
}
.dec .dec2 {
    color: #fff;
    left: 1px;
}
</style>
</head>
<body>  


<script type="text/javascript" src="${contextPath}/js/jquery-1.7.2.min.js"></script>

</body>
</html>