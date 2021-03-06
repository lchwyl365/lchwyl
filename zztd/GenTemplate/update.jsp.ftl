<#macro fieldInput fields>
	<#list fields as field>
				  <div class="control-group">
				    <label class="control-label" for="input${field.name?cap_first}">${field.name}</label>
				    <div class="controls">
				      <input type="text" id="input${field.name?cap_first}" name="${model.className?uncap_first}.${field.name}" value="${r"$"}{${model.className?uncap_first}.${field.name}}">
				    </div>
				  </div>
	</#list>
</#macro>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>${model.className} Update</title>
<link type="text/css" rel="stylesheet" href="${r"${contextPath}"}/css/bootstrap.min.css" >
<link type="text/css" rel="stylesheet" href="${r"${contextPath}"}/css/bootstrap-responsive.min.css" >
<link type="text/css" rel="stylesheet" href="${r"${contextPath}"}/plugin/buttons/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="${r"${contextPath}"}/plugin/buttons/css/buttons.css" />
<style type="text/css">
a:hover{color:white;text-decoration:none;}
table{border-collapse:separate;}
</style>
</head>
<body>
   <div class="container" style="margin-top:30px;">
    	<fieldset>
		    <legend>${model.className} Update    <a id="index-btn" href="#" class="button button-rounded button-flat-action" style="margin-left:300px;margin-bottom:10px;"><i class="icon-home"></i>${model.className?uncap_first} list</a>
		    </legend>
		    	<form class="form-horizontal" action="${r"${contextPath}"}/front/${model.className?uncap_first}_update.action">
				  <@fieldInput fields=model.normalColumn/>
				  <div class="control-group">
				    <div class="controls">
				      <a href="#" id="update-btn" class="button button-rounded button-flat-action">保存</a>
                  	  <a href="#" id="cancel-btn" class="button button-rounded button-flat-primary">取消</a>
				    </div>
				  </div>
				</form>
		</fieldset>
   </div><!-- container end -->
<script type="text/javascript" src="${r"${contextPath}"}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${r"${contextPath}"}/js/bootstrap.min.js"></script>
<script>
$(function(){
	$("#cancel-btn").click(function(){
		window.self.location = "${r"${contextPath}"}/front/${model.className?uncap_first}_index.action";
	});
	$("#index-btn").click(function(){
		window.self.location = "${r"${contextPath}"}/front/${model.className?uncap_first}_index.action";
	});
	$("#update-btn").click(function(){
		$(".form-horizontal").submit();
	});
});
</script>
</body>
</html>