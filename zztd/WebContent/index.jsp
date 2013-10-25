<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<% 
   String contextPath = request.getContextPath(); 
   request.setAttribute("contextPath", contextPath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML Strict//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />   
  <title>zhongzhituandai网</title> 
  <style>

body, div, label, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, p, blockquote, th, td
{
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	text-decoration: none;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	list-style-type: none;
	list-style-position: outside;
	list-style-image: none;
}
body
{
	text-align: center;
	color: #333;
	line-height: 24px;
	font: 12px/24px Helvetica,Tahoma,Arial,sans-serif;
	font-style: normal;
	font-variant: normal;
	font-weight: normal;
	text-decoration: none;
	font-size-adjust: none;
	font-stretch: normal;
	background-image: none;
	background-attachment: scroll;
	background-repeat: repeat;
	background-position-x: 0%;
	background-position-y: 0%;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(255, 255, 255);
}
a
{
	cursor: pointer;
}
a:link, a:visited
{
	color: #333;
	text-decoration: none;
}
.nav
{
	height: 70px;
	overflow: hidden;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 15px;
	margin-left: 0px;
	background-image: url("img/nav_bg.png");
	background-attachment: scroll;
	background-repeat: repeat-x;
	background-position-x: center;
	background-position-y: top;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.nav .cx_tabmenu
{
	width: 960px;
	text-align: left;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
}
.nav .lev_1
{
	height: 43px;
	overflow: hidden;
	display: block;
}
.nav .lev_1::after
{
	height: 0px;
	clear: both;
	display: block;
	visibility: hidden;
	content: ".";
}
.nav .lev_1 li
{
	float: left;
}
.nav .lev_1 li a
{
	width: auto;
	height: 38px;
	color: #fff;
	line-height: 38px;
	padding-top: 0px;
	padding-right: 25px;
	padding-bottom: 5px;
	padding-left: 25px;
	font-family: Helvetica, Tahoma, Arial, sans-serif;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: bold;
	text-decoration: none;
	display: inline-block;
	font-size-adjust: none;
	font-stretch: normal;
}
.nav .lev_1 li a.current {
    background: url("img/arrow_nav_drop.gif") no-repeat scroll center 0 transparent !important;
    padding: 0 25px 5px !important;
}
.nav .lev_1 li a:hover {
    background: url("img/arrow_nav_drop.gif") no-repeat scroll center 0 transparent;
    padding: 0 25px;
}
.nav .lev_2
{
	height: 27px;
	line-height: 27px;
	overflow: hidden;
	display: block;
}
.nav .lev_2::after
{
	height: 0px;
	clear: both;
	display: block;
	visibility: hidden;
	content: ".";
}
.nav .lev_2 div
{
	display: block;
}
.nav .lev_2 li
{
	float: left;
}
.nav .lev_2 li a
{
	height: 27px;
	color: #333;
	padding-top: 0px;
	padding-right: 25px;
	padding-bottom: 0px;
	padding-left: 25px;
	text-decoration: none;
	display: inline-block;
}
.nav .lev_2 #sc2
{
	padding-left: 55px;
}
.nav .lev_2 #sc3
{
	padding-left: 165px;
}
.nav .lev_2 #sc4
{
	padding-left: 260px;
}
.nav .lev_2 #sc6
{
	padding-left: 460px;
}
.topDiv{
	margin:0px auto;
	width:980px;
}
.logoDiv{
	height:70px;
	overflow:hidden;
}
.qltd-logo {
	margin-top:5px;
    background-image: url("img/LogoMaker.png");
    background-repeat: no-repeat;
    height: 61px;
    margin-left: 10px;
    width: 190px;
	display: inline;
    float: left;
}
.login_div{
	float:right;
	margin-top:10px;
	margin-right:10px;
}
.login_div li{
    display: inline;
    float: left;
}
.login-btn{
background: url("img/top_bg.png") no-repeat scroll right -646px transparent;
}
.login_div a{
    float: left;
    height: 34px;
    padding: 0px 9px 0 8px;
	color: #43434E;
    font: 18px/36px "微软雅黑",tahoma;
}
.centerDiv{
	overflow: hidden;
	width: 980px;
	margin: 0px auto;
}
.leftDiv{
	float: left;
	width: 680px;
	overflow:hidden;
	display:inline;
}
.rightDiv{
	float: right;
	width: 282px;
	overflow:hidden;
}
.numDiv{
	overflow:hidden;
	width: 260px;
	padding:10px;
	border:1px solid #dadada;
	height:258px;
}
.tit_2 {
    border-bottom: 3px solid #D6D6D6;
    height: 35px;
    overflow: visible;
    padding: 0;
}
.tit_2 h3 {
	font: 20px/36px "Microsoft YaHei";
	border-bottom: 3px solid #AA0C12;
	height: 35px;
	float: left;
}
.borrowList{
	padding:10px 0px;
	overflow:hidden;	
}
.contentDiv{
	overflow:hidden;
}
.contentTitle{
	font: 20px/36px "微软雅黑",tahoma;
	text-align:left;
}
.contentBody{
	overflow:hidden;
	width:260px;
}
.cloumn1{
	overflow:hidden;
	width:260px;
}
.num{
	float:left;
	width:42px;
	height:50px;
	background-color:#F1F1F1;
	color:#AA0B12;
	font: 38px "微软雅黑",tahoma;
	margin-right:4px;
}
.symbol{
	float:left;
	width:22px;
	height:50px;
	color:#AA0B12;
	font: 38px "微软雅黑",tahoma;
	margin-right:4px;
}
.cloumn2{
	float:left;
}
.item{
	border-bottom:1px solid #dadada;
	height:80px;
	padding:10px;
	overflow:hidden;	
}
.item:hover{
	background-color:#FFFACD;	
}
.item_headimg{
	float:left;	
	width:70px;
	height:66px;

}
.item_headimg img{
	width:64px;	
	height:64px;
	border:1px solid #dadada;
	padding:1px;
}
.item_info{
	float:left;
	width:570px;
	text-align:left;
	padding:0px 10px;	
	color: #666666;
}
.item_row{
	overflow:hidden;
}
.item_row a{
	color:#990000;
	font: 16px/22px "Microsoft YaHei";	
}
.span1{
	float:left;width:200px;	
}
.span2{
	float:left;width:150px;	
}
.span3{
	float:left;width:300px;	
}
.mon{
	color: #FF6600;
    font-family: "微软雅黑","宋体",Arial;
    font-size: 14px;
    font-weight: bold;	
}
.rate{
    font-family: "微软雅黑","宋体",Arial;
    font-size: 14px;
    font-weight: bold;	
}
.span1 img{
	width:16px;vertical-align:middle;
}
.notice_list{
	overflow:hidden;padding:10px 0px 0px;	
	text-align:left;
}
.notice_list ul{
	margin-top:10px;	
}
.notice_list li {
    border-bottom: 1px dotted #CCCCCC;
    font: 16px/24px "Microsoft YaHei";
    margin-bottom: 8px;
    overflow: hidden;
    padding-bottom: 8px;
}
.notice_list .more {
    background: url("img/y.png") repeat scroll 35px -1200px #990000;
    color: #FFFFFF;
    display: inline-block;
    padding: 0 20px 0 10px;
    text-decoration: none;
	float:right;
}
.notice_list li:last-child {
    border: 0 none;
    padding: 0;
}
.notice_list .more:hover {
    background-color: #AA0000;
}
*{margin:0;padding:0;}
ul,li{list-style:none;}
img{border:0;}
h1{height:50px;line-height:50px;font-size:22px;font-weight:normal;font-family:"Microsoft YaHei",SimHei;margin-bottom:20px;}
/* focus */
#focus{width:680px;height:280px;overflow:hidden;position:relative;}
#focus ul{height:380px;position:absolute;}
#focus ul li{float:left;width:680px;height:280px;overflow:hidden;position:relative;background:#000;}
#focus ul li div{position:absolute;overflow:hidden;}
#focus .btnBg{position:absolute;width:680px;height:20px;left:0;bottom:0;background:#000;}
#focus .btn{position:absolute;width:580px;height:10px;padding:5px 10px;right:0;bottom:0;text-align:right;}
#focus .btn span{display:inline-block;_display:inline;_zoom:1;width:25px;height:10px;_font-size:0;;margin-left:5px;margin-bottom:4px;cursor:pointer;background:#fff;}
#focus .btn span.on{background:#fff;}
#focus .preNext{width:45px;height:100px;position:absolute;top:90px;background:url(img/sprite.png) no-repeat 0 0;cursor:pointer;}
#focus .pre{left:0;}
#focus .next{right:0;background-position:right top;}

img.percentImage1 {
 background: white url(img/percentImage_back1.png) top left no-repeat;
 padding: 0;
 margin: 5px 0 0 0;
 background-position: 1px 0;
}

img.percentImage2 {
 background: white url(img/percentImage_back2.png) top left no-repeat;
 padding: 0;
 margin: 5px 0 0 0;
 background-position: 1px 0;
}

img.percentImage3 {
 background: white url(img/percentImage_back3.png) top left no-repeat;
 padding: 0;
 margin: 5px 0 0 0;
 background-position: 1px 0;
}

img.percentImage4 {
 background: white url(img/percentImage_back4.png) top left no-repeat;
 padding: 0;
 margin: 5px 0 0 0;
 background-position: 1px 0;
}
.foot {
    background: none repeat scroll 0 0 #fff;
    border-top: 2px solid #A5080F;
    clear: both;
    padding: 15px 0;
	width:980px;
	margin:0px auto;
	margin-top: 15px;
}
.foot .new_footer {
    margin: auto;
    width: 980px;
}
.foot .new_footer p {
    margin: 3px 0;
    text-align: center;
}
.foot .new_footer p span {
    color: #CC0000;
    font-weight: bold;
    margin: 0 7px;
}
.foot .new_footer p span a {
    color: #FF6600;
    font-weight: bold;
}
.foot .new_footer p a {
    color: #666666;
    margin: 0 7px;
}
.foot .new_footer p a:hover {
    color: #FF6600;
    text-decoration: underline;
}
.foot .new_footer p b {
    font-weight: normal;
}
</style>
<script type="text/javascript" src="js/progress.js"></script>
 </head> 
 <body> 
<s:include value="front/header.jsp"></s:include>
 <!-- 
  <div class="topDiv"> 
   <div class="logoDiv">
	 <a class="qltd-logo" href="#"></a>
	 <ul class="login_div">
		<li class="login-btn"><a href="front/login.jsp">登录</a></li>
		<li><a href="front/register.jsp">免费注册</a></li>
	 </ul>
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
  <div class="centerDiv">
      <div class="leftDiv">
          <div id="focus">
                <ul>
                    <li><a href="#" target="_blank"><img src="img/slide-1.jpg" /></a></li>
                    <li><a href="#" target="_blank"><img src="img/slide-2.jpg"  /></a></li>
                </ul>
          </div>
          <div class="borrowList">
          	 <div class="tit_2"><h3>最新借款列表</h3></div>
             <div class="item">
             	<div class="item_headimg">
                	<img src="img/img1.jpg">
                </div>
                <div class="item_info">
                	<div class="item_row"><a href="#">天猫大卖家，资金周转</a></div>
                    <div class="item_row">
                    	<div class="span1">借款金额:<span class="mon">￥11000 元</span></div>
                        <div class="span2">年利率:<span class="rate">10%</span></div>
                        <div class="span2">借款期限:1个月</div>
                    </div>
                    <div class="item_row">
                    	<div class="span1">信用等级：<img src="img/medal1.gif" />&nbsp;<img src="img/medal1.gif" /></div>
                        <div class="span3">贷款进度:&nbsp;&nbsp;<script>display ('element4',80,4);</script>&nbsp;&nbsp;已完成7笔投标</div>
                    </div>
                </div>
             </div>
             <div class="item">
             	<div class="item_headimg">
                	<img src="img/img1.jpg">
                </div>
                <div class="item_info">
                	<div class="item_row"><a href="#">天猫大卖家，资金周转</a></div>
                    <div class="item_row">
                    	<div class="span1">借款金额:<span class="mon">￥11000 元</span></div>
                        <div class="span2">年利率:<span class="rate">10%</span></div>
                        <div class="span2">借款期限:1个月</div>
                    </div>
                    <div class="item_row">
                    	<div class="span1">信用等级：<img src="img/medal1.gif" />&nbsp;<img src="img/medal1.gif" /></div>
                        <div class="span3">贷款进度:&nbsp;&nbsp;<script>display ('element4',60,4);</script>&nbsp;&nbsp;已完成7笔投标</div>
                    </div>
                </div>
             </div>
             <div class="item">
             	<div class="item_headimg">
                	<img src="img/img1.jpg">
                </div>
                <div class="item_info">
                	<div class="item_row"><a href="#">天猫大卖家，资金周转</a></div>
                    <div class="item_row">
                    	<div class="span1">借款金额:<span class="mon">￥11000 元</span></div>
                        <div class="span2">年利率:<span class="rate">10%</span></div>
                        <div class="span2">借款期限:1个月</div>
                    </div>
                    <div class="item_row">
                    	<div class="span1">信用等级：<img src="img/medal1.gif" style="width:16px"/>&nbsp;<img src="img/medal1.gif" style="width:16px"/></div>
                        <div class="span3">贷款进度</div>
                    </div>
                </div>
             </div>
             <div class="item">
             	<div class="item_headimg">
                	<img src="img/img1.jpg">
                </div>
                <div class="item_info">
                	<div class="item_row"><a href="#">天猫大卖家，资金周转</a></div>
                    <div class="item_row">
                    	<div class="span1">借款金额:<span class="mon">￥11000 元</span></div>
                        <div class="span2">年利率:<span class="rate">10%</span></div>
                        <div class="span2">借款期限:1个月</div>
                    </div>
                    <div class="item_row">
                    	<div class="span1">信用等级：<img src="img/medal1.gif" style="width:16px"/>&nbsp;<img src="img/medal1.gif" style="width:16px"/></div>
                        <div class="span3">贷款进度</div>
                    </div>
                </div>
             </div>
             <div class="item">
             	<div class="item_headimg">
                	<img src="img/img1.jpg">
                </div>
                <div class="item_info">
                	<div class="item_row"><a href="#">天猫大卖家，资金周转</a></div>
                    <div class="item_row">
                    	<div class="span1">借款金额:<span class="mon">￥11000 元</span></div>
                        <div class="span2">年利率:<span class="rate">10%</span></div>
                        <div class="span2">借款期限:1个月</div>
                    </div>
                    <div class="item_row">
                    	<div class="span1">信用等级：<img src="img/medal1.gif" style="width:16px"/>&nbsp;<img src="img/medal1.gif" style="width:16px"/></div>
                        <div class="span3">贷款进度</div>
                    </div>
                </div>
             </div>
             <div class="item">
             	<div class="item_headimg">
                	<img src="img/img1.jpg">
                </div>
                <div class="item_info">
                	<div class="item_row"><a href="#">天猫大卖家，资金周转</a></div>
                    <div class="item_row">
                    	<div class="span1">借款金额:<span class="mon">￥11000 元</span></div>
                        <div class="span2">年利率:<span class="rate">10%</span></div>
                        <div class="span2">借款期限:1个月</div>
                    </div>
                    <div class="item_row">
                    	<div class="span1">信用等级：<img src="img/medal1.gif" style="width:16px"/>&nbsp;<img src="img/medal1.gif" style="width:16px"/></div>
                        <div class="span3">贷款进度</div>
                    </div>
                </div>
             </div>
             <div class="item">
             	<div class="item_headimg">
                	<img src="img/img1.jpg">
                </div>
                <div class="item_info">
                	<div class="item_row"><a href="#">天猫大卖家，资金周转</a></div>
                    <div class="item_row">
                    	<div class="span1">借款金额:<span class="mon">￥11000 元</span></div>
                        <div class="span2">年利率:<span class="rate">10%</span></div>
                        <div class="span2">借款期限:1个月</div>
                    </div>
                    <div class="item_row">
                    	<div class="span1">信用等级：<img src="img/medal1.gif" style="width:16px"/>&nbsp;<img src="img/medal1.gif" style="width:16px"/></div>
                        <div class="span3">贷款进度</div>
                    </div>
                </div>
             </div>
          </div>
	  </div>
	  <div class="rightDiv">
      	  <div class="numDiv">
                <div class="contentTitle">经验丰富的回报</div>
                <div class="contentBody">
                    <div class="cloumn1">
                        <div class="num">9</div>
                        <div class="symbol">.</div>
                        <div class="num">0</div>
                        <div class="num">9</div>
                        <div class="symbol">%</div>
                    </div>
                    <div>
                        <a href="#">了解更多</a>
                    </div>
                </div>
                <div class="contentTitle">最好的贷款利率</div>
                <div class="contentBody">
                    <div class="cloumn1">
                        <div class="num">9</div>
                        <div class="symbol">.</div>
                        <div class="num">0</div>
                        <div class="num">9</div>
                        <div class="symbol">%</div>
                    </div>
                </div>
            </div>
            <div class="notice_list">
            	<div class="tit_2"><h3>最新公告</h3></div>
                <ul>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="移动iOS 7的是与非">移动周报：疯狂吐槽还是更得欢非</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="国内开源项目集锦">国内最受欢迎的开源项目集锦</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="开注意的十件事">开始3D编程前需注意的十件事</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="，保养好，活得长，死得快">基因大数据将改变人类未来：死得快</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="频分享领域的鸡肋">短视频，并非是移动视领域的鸡肋</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="trunk-based开发">产品，LinkedIn的trunk-based开发</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="美国白宫任命Twitterong为副CTO">美国白tter法务ong为副CTO</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="移动竞争是：设计的竞争">移动互联网最核心的竞设计的竞争</a></li>
        		</ul>
                <a class="more" target="_blank" href="#">更多</a>
            </div>
            <div class="notice_list">
            	<div class="tit_2"><h3>资讯</h3></div>
                <ul>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="移动iOS 7的是与非">移动周报：疯狂吐槽还是更得欢非</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="国内开源项目集锦">国内最受欢迎的开源项目集锦</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="开注意的十件事">开始3D编程前需注意的十件事</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="，保养好，活得长，死得快">基因大数据将改变人类未来：死得快</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="频分享领域的鸡肋">短视频，并非是移动视领域的鸡肋</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="trunk-based开发">产品，LinkedIn的trunk-based开发</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="美国白宫任命Twitterong为副CTO">美国白tter法务ong为副CTO</a></li>
                    <li><a onclick="LogClickCount(this,330);" target="_blank" href="#" title="移动竞争是：设计的竞争">移动互联网最核心的竞设计的竞争</a></li>
        		</ul>
                <a class="more" target="_blank" href="#">更多</a>
            </div>
	  </div>
  </div>
  <div class="foot">
        <div class="new_footer">
            <p><span>400客服热线：4000-016-089</span><span><a href="#" target="_blank">点击进入企业在线QQ：800003737</a></span><b>服务时间：每天9:00-22:00</b></p>
            <p><a href="#">首页</a>|<a href="#">关于我们</a>|<a href="#">法律政策</a>|<a href="#">与我们联系</a>|<a href="#">网站地图</a>|<a href="#">客服中心</a></p>
            <p>众智团贷网版权所有. &copy; ICP证：鲁ICP备******号</p>
            <div style="display:none;" class="submenu">
                <ul>
                    <li><a href="#">首页</a></li>
                    <li><a href="#">关于我们</a></li>
                    <li><a href="#">法律政策</a></li>
                    <li><a href="#">与我们联系</a></li>
                    <li><a href="#">网站地图</a></li>
                    <li><a href="#">友情链接</a></li>
                    <li><a href="#">客服中心</a></li>
                </ul>
                <div class="copyright">
                    众智团贷网版权所有. &copy; ICP证：鲁ICP备10234900号</div>
            </div>
        </div>
</div>
 -->
<script type="text/javascript">
$(function() {
	var sWidth = $("#focus").width(); //获取焦点图的宽度（显示面积）
	var len = $("#focus ul li").length; //获取焦点图个数
	var index = 0;
	var picTimer;
	
	//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
	var btn = "<div class='btnBg'></div><div class='btn'>";
	for(var i=0; i < len; i++) {
		btn += "<span></span>";
	}
	btn += "</div><div class='preNext pre'></div><div class='preNext next'></div>";
	$("#focus").append(btn);
	$("#focus .btnBg").css("opacity",0.5);

	//为小按钮添加鼠标滑入事件，以显示相应的内容
	$("#focus .btn span").css("opacity",0.4).mouseover(function() {
		index = $("#focus .btn span").index(this);
		showPics(index);
	}).eq(0).trigger("mouseover");

	//上一页、下一页按钮透明度处理
	$("#focus .preNext").css("opacity",0.2).hover(function() {
		$(this).stop(true,false).animate({"opacity":"0.5"},300);
	},function() {
		$(this).stop(true,false).animate({"opacity":"0.2"},300);
	});

	//上一页按钮
	$("#focus .pre").click(function() {
		index -= 1;
		if(index == -1) {index = len - 1;}
		showPics(index);
	});

	//下一页按钮
	$("#focus .next").click(function() {
		index += 1;
		if(index == len) {index = 0;}
		showPics(index);
	});

	//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
	$("#focus ul").css("width",sWidth * (len));
	
	//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
	$("#focus").hover(function() {
		clearInterval(picTimer);
	},function() {
		picTimer = setInterval(function() {
			showPics(index);
			index++;
			if(index == len) {index = 0;}
		},4000); //此4000代表自动播放的间隔，单位：毫秒
	}).trigger("mouseleave");
	
	//显示图片函数，根据接收的index值显示相应的内容
	function showPics(index) { //普通切换
		var nowLeft = -index*sWidth; //根据index值计算ul元素的left值
		$("#focus ul").stop(true,false).animate({"left":nowLeft},300); //通过animate()调整ul元素滚动到计算出的position
		//$("#focus .btn span").removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果
		$("#focus .btn span").stop(true,false).animate({"opacity":"0.4"},300).eq(index).stop(true,false).animate({"opacity":"1"},300); //为当前的按钮切换到选中的效果
	}
});
</script>
 </body>
</html>