<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<div class="topDiv"> 
   <div style="overflow:hidden;">
   	<s:if test="null == #session.sysUser">
	 <ul class="login_div">
	    <li class="login-btn" style="padding-right:10px;">您好，欢迎来到众智团贷网</li>
		<li class="login-btn"><a href="front/web_inputLogin.action?srcurl=index.jsp">登录</a></li>
		<li><a href="front/register.jsp">免费注册</a></li>
	 </ul>
	 </s:if>
	<s:else>
		<ul class="login_div">
		    <li class="login-btn" ><a href="#">${session.sysUser.username}</a></li>
			<li class="login-btn"><a href="front/web_inputLogin.action?srcurl=index.jsp">消息</a></li>
			<li class="login-btn"><a href="front/register.jsp">提醒</a></li>
			<li><a href="front/register.jsp">退出</a></li>
		 </ul>
	</s:else>
   </div>
   <div class="logoDiv">
	 <a class="qltd-logo" href="#"></a>
	 
	 <div class="right_xinxi">
         <!--<div class="right_xinxi_01">
           <a target="_blank" href="http://weibo.com/tuandai">
                 <img alt="众智团贷网微博" style="" src="http://image.tuandai.com/img/minweibo.jpg">&nbsp;众智团贷网微博</a>&nbsp;&nbsp;&nbsp;官方QQ群&nbsp;140467403</div> -->   
         <div class="right_xinxi_02">
             <img src="http://image.tuandai.com/img/mintel.jpg" alt="众智团贷网电话">&nbsp;4006410888
             &nbsp;工作时间：周一至周日 08:30-17:30</div>
     </div>
   </div> 
 	   <div class="nav" id="xcx_tabmenu"> 
    <div class="cx_tabmenu" id="cx_tabmenu"> 
     <div class="lev_1" id="ddimagetabs"> 
      <ul> 
       <li> <a id="sclink1" href="#" target="_blank">首页</a> </li> 
	   <li> <a id="sclink3" href="#" target="_blank">我要贷款</a> </li> 
       <li> <a id="sclink2" href="#" target="_blank">我要理财</a> </li> 
       <li> <a id="sclink4" href="#" target="_blank">我的账号</a> </li> 
       <li> <a id="sclink5" href="#" target="_blank">咨询服务</a> </li> 
       <li> <a id="sclink6" href="#" target="_blank">社区论坛</a> </li> 
      </ul> 
     </div> 
     <div class="lev_2" id="tabcontentcontainer"> 
      <div class="tabcontent" id="sc1"> 
       <ul> 
        <li> <a href="#" target="_blank">关于我们</a> </li> 
        <li> <a href="#" target="_blank">法律政策</a> </li> 
        <li> <a href="#" target="_blank">联系我们</a> </li> 
        <li> <a href="#" target="_blank">收费标准</a> </li> 
        <li> <a href="#" target="_blank">新闻动态</a> </li> 
       </ul> 
      </div> 
     </div> 
    </div> 
   </div>
  </div>