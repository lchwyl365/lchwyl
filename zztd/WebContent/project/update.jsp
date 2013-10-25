<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Project Update</title>
<link type="text/css" rel="stylesheet" href="${contextPath}/css/bootstrap.min.css" >
<link type="text/css" rel="stylesheet" href="${contextPath}/css/bootstrap-responsive.min.css" >
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="${contextPath}/plugin/buttons/css/buttons.css" />
<style type="text/css">
a:hover{color:white;text-decoration:none;}
table{border-collapse:separate;}
</style>
</head>
<body>
   <div class="container" style="margin-top:30px;">
    	<fieldset>
		    <legend>Project Update    <a id="index-btn" href="#" class="button button-rounded button-flat-action" style="margin-left:300px;margin-bottom:10px;"><i class="icon-home"></i>project list</a>
		    </legend>
		    	<form class="form-horizontal" action="${contextPath}/front/project_update.action">
				  <div class="control-group">
				    <label class="control-label" for="inputName">name</label>
				    <div class="controls">
				      <input type="text" id="inputName" name="project.name" value="${project.name}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputMoney">money</label>
				    <div class="controls">
				      <input type="text" id="inputMoney" name="project.money" value="${project.money}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputDeadline">deadline</label>
				    <div class="controls">
				      <input type="text" id="inputDeadline" name="project.deadline" value="${project.deadline}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputRate">rate</label>
				    <div class="controls">
				      <input type="text" id="inputRate" name="project.rate" value="${project.rate}">
				    </div>
				  </div>
				  <div class="control-group">
				    <div class="controls">
				      <a href="#" id="update-btn" class="button button-rounded button-flat-action">保存</a>
                  	  <a href="#" id="cancel-btn" class="button button-rounded button-flat-primary">取消</a>
				    </div>
				  </div>
				</form>
		</fieldset>
   </div><!-- container end -->
<script type="text/javascript" src="${contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/bootstrap.min.js"></script>
<script>
$(function(){
	$("#cancel-btn").click(function(){
		window.self.location = "${contextPath}/front/project_index.action";
	});
	$("#index-btn").click(function(){
		window.self.location = "${contextPath}/front/project_index.action";
	});
	$("#update-btn").click(function(){
		$(".form-horizontal").submit();
	});
});
</script>
</body>
</html>