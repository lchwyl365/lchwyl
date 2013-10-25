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
<title>Demo - 注册</title>
<link type="text/css" rel="stylesheet" href="${contextPath}/css/register/style.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/css/register/demo.css"  />
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/buttons.css" />
<style type="text/css">
body{background-color:#F2F2F2; color: #515151;
    font-family: "微软雅黑","Microsoft Yahei",Arial,Helvetica,sans-serif,"宋体";
    font-size: 14px;}
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
.toplogo{
	height:70px;
	background-color:#ECECEC;
	border-bottom:1px solid #D9D9D9;
}
.h4_suc {
    color: #FF9630;
    font-size: 22px;
    font-weight: bold;
    margin: 0 0 10px 30px;
}
.suc_p {
    border-bottom: 1px dashed #E3E3E3;
    color: #999999;
    padding: 0 0 20px 30px;
}
a.cor_yellow {
    color: #FF7E00;
}
</style>
</head>
<body>
<div class="toplogo"></div>
<div class="main">
	<h4 class="h4_suc">注册账户</h4>
	<p class="suc_p">帐户能使用小米手机、米聊、MIUI和小米的其他服务。如果您已拥有小米帐户，则可<a class="cor_yellow" href="/pass/serviceLogin">在此登录</a></p>
    <div class="wraper">
        <form class="registerform" method="post" action="${contextPath}/front/user_insert.action">
            <table width="700px;" style="table-layout:fixed;margin-left:200px;">
            	<tr>
                    <td class="need" style="width:10px;">*</td>
                    <td style="width:70px;">邮箱：</td>
                    <td style="width:280px;"><input type="text" value="${sysUser.email}" name="sysUser.email" class="inputxt" 
                    	ajaxurl="${contextPath}/front/user_valid.action" datatype="e" nullmsg="请输入邮箱地址！" errormsg="邮箱的格式不正确！" /></td>
                    <td>
                    	<div class="Validform_checktip"></div>
                        <div class="info">有效的E-mail地址才能收到网站信息！<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                    </td>
                </tr>
                <tr>
                    <td class="need" style="width:10px;">*</td>
                    <td style="width:70px;">用户名：</td>
                    <td style="width:280px;"><input type="text" value="${sysUser.username}" name="sysUser.username" class="inputxt" 
                        ajaxurl="${contextPath}/front/user_valid.action" datatype="s6-18" nullmsg="请输入您的用户名！" errormsg="用户名至少6个字符,最多18个字符！" /></td>
                    <td>
                    	<div class="Validform_checktip"></div>
                        <div class="info">用户名至少6个字符,最多18个字符<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                    </td>
                </tr>
                <tr>
                    <td class="need" style="width:10px;">*</td>
                    <td style="width:70px;">密码：</td>
                    <td style="width:210px;">
                        <input type="password" value="" name="sysUser.password" class="inputxt" plugin="passwordStrength"  datatype="*6-18" nullmsg="请输入密码！" errormsg="密码至少6个字符,最多18个字符！" />
                    </td>
                    <td>
                        <div class="Validform_checktip"></div>
                        <div class="passwordStrength" style="display:none;"><b>密码强度：</b> <span>弱</span><span>中</span><span class="last">强</span></div>
                        <div class="info">密码至少6个字符,最多18个字符<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                    </td>
                </tr>
                <tr>
                    <td class="need">*</td>
                    <td>确认密码：</td>
                    <td><input type="password" value="" name="repassword" class="inputxt" recheck="sysUser.password"  datatype="*6-18" nullmsg="请确认密码！" errormsg="两次输入的密码不一致！" /></td>
                    <td>
                    	<div class="Validform_checktip"></div>
                    	<div class="info">请确认您的密码<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                    </td>
                </tr>
    			<tr>
                    <td class="need">*</td>
                    <td>验证码：</td>
                    <td><img src="${contextPath}/front/securityCode.action" id="Verify"  style="cursor:hand;vertical-align: middle;margin-top:-2px;*margin-top:-20px;!important;" alt="看不清，换一张"/>
                        <input type="test" value="" name="securityCode" class="inputxt" datatype="*1-5" nullmsg="请输入验证码！" style="width:130px;" /></td>
                    <td>
                    	<div id="validcodemsg" class="Validform_checktip"></div>
                    	<div class="info">请输入验证码<span class="dec"><s class="dec1">&#9670;</s><s class="dec2">&#9670;</s></span></div>
                    </td>
                </tr>
                <tr>
                    <td class="need"></td>
                    <td></td>
                    <td colspan="2" style="padding:10px 0 18px 0;">
                        <a href="#" id="register_a" class="button button-rounded button-flat-primary" style="padding:0px 50px;">立即注册</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

<script type="text/javascript" src="${contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/Validform_v5.3.2_min.js"></script>
<script type="text/javascript" src="${contextPath}/plugin/passwordStrength/passwordStrength-min.js"></script>

<script type="text/javascript">
$(function(){
	if("${result}" == 2){
		$("#validcodemsg").addClass("Validform_wrong");
		$("#validcodemsg").html("验证码错误");
		$("#validcodemsg").show();
	}
	
	//$(".registerform").Validform();  //就这一行代码！;
	//点击图片更换验证码
	$("#Verify").click(function(){
	    $(this).attr("src","${contextPath}/front/securityCode.action?timestamp="+new Date().getTime());
    });
	var getInfoObj=function(){
			return 	$(this).parents("td").next().find(".info");
		}
	
	$("[datatype]").focusin(function(){
		if(this.timeout){clearTimeout(this.timeout);}
		var infoObj=getInfoObj.call(this);
		if(infoObj.siblings(".Validform_right").length!=0){
			return;	
		}
		infoObj.show().siblings().hide();
		
	}).focusout(function(){
		var infoObj=getInfoObj.call(this);
		this.timeout=setTimeout(function(){
			infoObj.hide().siblings(".Validform_wrong,.Validform_loading").show();
		},0);
		
	});
	
	$(".registerform").Validform({
		tiptype:2,
		usePlugin:{
			passwordstrength:{
				minLen:6,
				maxLen:18,
				trigger:function(obj,error){
					if(error){
						obj.parent().next().find(".passwordStrength").hide().siblings(".info").show();
					}else{
						obj.removeClass("Validform_error").parent().next().find(".passwordStrength").show().siblings().hide();	
					}
				}
			}
		}
	});
	
	$("#register_a").click(function(){
		$(".registerform").submit();
		/*$.post("${contextPath}/front/user_insert.action",{
			"sysUser.email":$(),"distype.type":typeInfo.type,"distype.isleaf":typeInfo.isleaf
		},function(msg){
		});*/
	});
})
</script>
</body>
</html>