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
<script type="text/javascript" src="js/progress.js"></script>
 </head> 
 <body> 
<s:include value="front/header.jsp"></s:include>

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
});
</script>
 </body>
</html>