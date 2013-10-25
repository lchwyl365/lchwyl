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
<title>用户登录</title>
<link type="text/css" rel="stylesheet" href="${contextPath}/css/register/style.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/css/register/demo.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/css/docs.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/buttons.css" />
<style type="text/css">
body{padding-top:10px;}
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
#errormsg{color: #D64532; font-family: "微软雅黑","Microsoft Yahei",Arial,Helvetica,sans-serif,"宋体";font-size: 16px;}
.logindiv{width:300px;overflow:hidden;margin-left:auto;margin-right:auto;}
</style>
</head>
<body>
<div class="logindiv">
<form class="registerform" action="#">
    <table width="260px">
    	<tr>
            <td>
                <span id="errormsg" style="margin-left:40px;"></span>
            </td>
        </tr>
        <tr>
            <td style="width:260px;"><input placeholder="请输入邮箱 / 用户名" type="text" value="" name="name" id="username" class="inputxt" /></td>
        </tr>
        <tr>
            <td><input placeholder="请输入密码" type="password" value="" name="userpassword" autocomplete="off" id="password" class="inputxt" /></td>
        </tr>
        <tr>
            <td><input type="checkbox" id="auto"><span class="span-info">下次自动登录</span> <a href="#" style="float:right;">忘记密码？</a></td>
        </tr>
        <tr>
            <td style="padding:10px 0 18px 0;">
                <a href="#" id="login-ran" class="button button-rounded button-flat-action" style="padding:0px 40px;margin-right:14px;">立即登陆</a>
                <a target="_bank" href="${contextPath}/front/register.jsp" class="button button-rounded button-flat-primary" style="padding:0px 50px;">注册</a>
            </td>
        </tr>
    </table>
</form>
</div>
<script type="text/javascript" src="${contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${contextPath}/plugin/jquery.placeholder.js"></script>
<script>
$(function(){
	$("#login-ran").click(function(){
		var username = $.trim($("#username").val());
		var password = $("#password").val();
		if(username == ""){
			$("#errormsg").html("请输入用户名");
			return false;
		}
		if(password == ""){
			$("#errormsg").html("请输入密码");
			return false;
		}
		$.post("${contextPath}/front/user_login.action",{
			"sysUser.username":username,"sysUser.password":password
		},function(msg){
			if(msg == 5){
				$("#errormsg").html("邮箱不正确");
			}else if(msg == 2){
				$("#errormsg").html("密码不正确");
			}else if(msg == 1){
				$("#errormsg").html("登录成功");
				window.self.location="${contextPath}/${srcurl}";
			}else{
				$("#errormsg").html("用户名不正确");
			}
			
		});
	});
});
</script>
</body>
</html>