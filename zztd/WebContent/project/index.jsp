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
<title>Project</title>
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
		    <legend>Project</legend>
		    <div>
		    	<a id="add-btn" href="#" class="button button-rounded button-flat-action">添加</a>
		    </div>
		    <table class="table table-hover">
              <thead>
                <tr>
					<th>tbid</th>
					<th>name</th>
					<th>money</th>
					<th>deadline</th>
					<th>rate</th>
                </tr>
              </thead>
              <tbody>
              	<s:iterator var="item" value="#request.pager.datas">
                	<tr>
					<td>${tbid}</td>
					<td>${name}</td>
					<td>${money}</td>
					<td>${deadline}</td>
					<td>${rate}</td>
	                  	<td>
	                  		<a href="#" tbid="${tbid}" class="button button-rounded button-flat-primary">修改</a>
	                  		<a href="#" tbid="${tbid}" class="button button-rounded button-flat-highlight">删除</a>
	                  	</td>
                	</tr>
                 </s:iterator>
              </tbody>
            </table>
            <s:if test="%{#request.pager.total > 0}">
					<!-- 分页 -->
					<div id="pagination" class="pagination" >
						<ul>
							<pg:pager url="${contextPath}/front/project_index.action" items="${pager.total}"	
								export="currentPageNumber=pageNumber">
								<pg:first>
										<li class="" ><a  id="firstPage" href="${pageUrl}" >首页</a></li>
								</pg:first>
								<pg:prev>
									<li ><a id="nextPage" href="${pageUrl}" >上一页</a></li>
								</pg:prev>
								<pg:pages>
									<c:choose> 
										<c:when test="${currentPageNumber == pageNumber}">
											<li class="active"><a href="#"><s:property value="pageNumber"/>${pageNumber} </a></li>
										</c:when>
										<c:otherwise>
											<li class=""><a href="${pageUrl}">${pageNumber}</a></li>
										</c:otherwise>
									</c:choose>
								</pg:pages>
								<pg:next>
									<li><a id="nextPage" href="${pageUrl}" >下一页</a></li>
								</pg:next>
								<pg:last>
										<li><a id="endPage" href="${pageUrl}" >尾页</a></li>
								</pg:last>
							</pg:pager>
						</ul>
					</div>
				   <!-- /分页 -->
				</s:if>
		  </fieldset>
   </div><!-- container end -->
<script type="text/javascript" src="${contextPath}/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${contextPath}/plugin/lhgdialog/lhgdialog.js?skin=mac"></script>
<script>
$(function(){
	$("#add-btn").click(function(){
		window.self.location = "${contextPath}/project/add.jsp";
	});
	$(".button-flat-highlight").click(function(){
		var tbid = $(this).attr("tbid");
		$.dialog({
			title:"确认删除",
			id:"delDialog",
		    lock: true,
		    content: '删除后信息后，信息将不再列表中显示。',
		    icon: 'prompt.gif',
		    time: 18,
		    ok: function () {
		    	/**确认信息*/
		    	$.post("${contextPath}/front/project_delete.action",{
					"project.tbid":tbid
				},function(msg){
					if(msg == 1){
						refresh();
					}
				});
		    },
		    cancel: true,
		    width:280
		});
	});
	$(".button-flat-primary").click(function(){
		var tbid = $(this).attr("tbid");
		window.self.location = "${contextPath}/front/project_intoUpdate.action?project.tbid="+tbid;
	});
});
//刷新当前页面
function refresh(){
	window.self.location = "${contextPath}/front/project_index.action?pager.offset=${pager.offset}";
}
</script>
</body>
</html>