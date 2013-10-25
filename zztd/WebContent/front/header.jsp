<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<s:if test="null == #session.sysUser">
	<ul class="login_div">
		<li class="login-btn"><a href="front/web_inputLogin.action?srcurl=index.jsp">登录</a></li>
		<li><a href="front/register.jsp">免费注册</a></li>
	</ul>
</s:if>
<s:else>
	<div class="login_div"><a href="#">${session.sysUser.username}</a></div>
</s:else>