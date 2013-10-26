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
<link href="${contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script  src="${contextPath}/js/progress.js" type="text/javascript"></script>
<style>
.menu-div{overflow:hidden;}
h2 {
    background: url("${contextPath}/img/menu_bg.png") repeat-x scroll center bottom rgba(0, 0, 0, 0);
    border: 1px solid #E3E3E3;
    color: #666666;
    height: 36px;
    line-height: 36px;
    margin: 0;
    padding: 0 0 0 10px;
    
}
.menu-div h2 {
    color: #454545;
    font: 16px/36px Microsoft YaHei,tahoma;
    font-weight: 500;
}
.menu-div .border {
    border-bottom-style: none;
    padding: 0;
}
.border {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-color: #E3E3E3;
    border-image: none;
    border-right: 1px solid #E3E3E3;
    border-style: none solid solid;
    border-width: 1px;
    height: 1%;
    padding: 10px;
}
.menu-div ul {
    padding: 3px 0;
}
.menu-div ul li {
}
.menu-div ul li img {
    vertical-align: middle;
}
.menu-div ul li a {
    border-bottom: 1px dashed #DCDCDC;
    color: #666666;
    display: block;
    height: 30px;
    margin: 0 3px;
    padding: 0 7px;
    font: 14px/30px Microsoft YaHei,tahoma;
}
.menu-div ul li a:hover {
    background: none repeat scroll 0 0 #F8F8F8;
    border-bottom: 1px dashed #FF6600;
    color: #FF6600;
}
.menu-div ul li a.Current {
    background: none repeat scroll 0 0 #FF6600;
    border-bottom: 1px solid #FF6600;
    color: #FFFFFF;
}
</style>
 </head> 
 <body> 
<s:include value="../front/header.jsp"></s:include>

  <div class="centerDiv">
      <div class="leftDiv" style="width:180px;min-height:400px;">
          <div id="no1" class="menu-div">
            <h2><span>投资管理</span></h2>
            <div class="border">
                <ul>
                    <li><a id="ctl00_ctl00_ContentPlaceHolder1_aInvest" href="/Loan/Default.aspx">我要投资</a></li>
                    <li><a id="ctl00_ctl00_ContentPlaceHolder1_aAutoBid" href="AutoBid.aspx">自动投标设置<img src="/images/new.png"></a></li>
                    <li><a id="ctl00_ctl00_ContentPlaceHolder1_AutoBidStats" href="AutoBidStats.aspx">自动投标统计</a></li>
                    <li><a id="ctl00_ctl00_ContentPlaceHolder1_aSucceedList" href="SucceedList.aspx">已成功投资的借款</a></li>
                    <li><a id="ctl00_ctl00_ContentPlaceHolder1_aCanSubjectTrans" href="CanSubjectTrans.aspx">待收款债权转让</a></li>
                    <li><a id="ctl00_ctl00_ContentPlaceHolder1_aAttentionList" href="AttentionList.aspx">我关注的借款</a></li>
                    <li><a id="ctl00_ctl00_ContentPlaceHolder1_aLeaveWordBorrower" href="LeaveWord_Borrower.aspx">贷款者回复</a></li>
                </ul>
            </div>
        </div>
	  </div>
	  <div class="rightDiv">
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
<script type="text/javascript" src="${contextPath}/js/jquery-1.7.2.min.js"></script>
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
	/**当前一级菜单**/
	$("#sclink4").addClass("current");
});
</script>
 </body>
</html>