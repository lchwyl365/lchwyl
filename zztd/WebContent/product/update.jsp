<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Product Update</title>
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
		    <legend>Product Update    <a id="index-btn" href="#" class="button button-rounded button-flat-action" style="margin-left:300px;margin-bottom:10px;"><i class="icon-home"></i>product list</a>
		    </legend>
		    	<form class="form-horizontal" action="${contextPath}/front/product_update.action">
				  <div class="control-group">
				    <label class="control-label" for="inputName">name</label>
				    <div class="controls">
				      <input type="text" id="inputName" name="product.name" value="${product.name}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputDescribe">describe</label>
				    <div class="controls">
				      <input type="text" id="inputDescribe" name="product.describe" value="${product.describe}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputMaxmoney">maxmoney</label>
				    <div class="controls">
				      <input type="text" id="inputMaxmoney" name="product.maxmoney" value="${product.maxmoney}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputMinmoney">minmoney</label>
				    <div class="controls">
				      <input type="text" id="inputMinmoney" name="product.minmoney" value="${product.minmoney}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputMaxlimit">maxlimit</label>
				    <div class="controls">
				      <input type="text" id="inputMaxlimit" name="product.maxlimit" value="${product.maxlimit}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputMinlimit">minlimit</label>
				    <div class="controls">
				      <input type="text" id="inputMinlimit" name="product.minlimit" value="${product.minlimit}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputVerifytime">verifytime</label>
				    <div class="controls">
				      <input type="text" id="inputVerifytime" name="product.verifytime" value="${product.verifytime}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputMaxrate">maxrate</label>
				    <div class="controls">
				      <input type="text" id="inputMaxrate" name="product.maxrate" value="${product.maxrate}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputMinrate">minrate</label>
				    <div class="controls">
				      <input type="text" id="inputMinrate" name="product.minrate" value="${product.minrate}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputTendertime">tendertime</label>
				    <div class="controls">
				      <input type="text" id="inputTendertime" name="product.tendertime" value="${product.tendertime}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputReplyway">replyway</label>
				    <div class="controls">
				      <input type="text" id="inputReplyway" name="product.replyway" value="${product.replyway}">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputFee">fee</label>
				    <div class="controls">
				      <input type="text" id="inputFee" name="product.fee" value="${product.fee}">
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
		window.self.location = "${contextPath}/front/product_index.action";
	});
	$("#index-btn").click(function(){
		window.self.location = "${contextPath}/front/product_index.action";
	});
	$("#update-btn").click(function(){
		$(".form-horizontal").submit();
	});
});
</script>
</body>
</html>