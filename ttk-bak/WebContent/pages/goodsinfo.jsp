<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<title>闲货 - 商品信息</title>
	<link rel="shortcut icon" type="image/x-icon" href="../img/titleicon.ico" media="screen" />
	<link rel="stylesheet" type="text/css" href="../css/page_base.css" />
	<link rel="stylesheet" type="text/css" href="../css/gsinfo.css" />
</head>
<body>
<input id="cu" type="hidden" value="${sessionScope.currentUser }">
	<div id="top_bar">
		<ul>
			<li><a href="javascript:;" id="addFav">收藏本站</a></li>
			<li><a href="" id="scanicon">关注闲货</a></li>
			<c:choose>
				<c:when test="${empty sessionScope.currentUser}">   
					<li>你好，<a href="user.jsp?op=login">请登录</a></li>
					<li><a href="user.jsp?op=reg">免费注册</a></li>
				</c:when> 
				<c:otherwise>   
					<li>你好，<a href="mygs.jsp">${sessionScope.currentUser.callName }</a></li>
					<li><a href="User_exit">退出</a></li>
				</c:otherwise> 
			</c:choose> 
			<li><a href="feedback.jsp">意见反馈</a></li>
		</ul>
	</div>
	<div id="menu">
		<a id="to_top" href="javascript:topButton();" title="返回顶部"></a>
	</div>
	<header>
		<nav class="header_nav">
			<div class="index_img">
				<a href="../index.jsp">
					<img alt="首页.jpg" src="../img/index_black.png" />
					<p>你有什么闲货呢?</p>
				</a>
			</div>
			<ul>
				<li><a href="../index.jsp">首页</a></li>
				<li><a href="publish.jsp">发布二手</a></li>
				<li><a href="mygs.jsp">我的二手</a></li>
				<li>|</li>
				<li><a id="to-chat" href="javascript:;">聊一聊</a></li>
			</ul>
			<div class="search">
				<input class="search_in" type="text" placeholder="搜闲货" />
				<button class="search_btn" onclick="search()">搜索</button>
			</div>
		</nav>
	</header>
	<div id="content">
		<div style="width:100%; padding: 10px 0;">
			<div id="left_gsinfo">
				<div class="gsimg" align="center">
					<img id='gsimg-img' src="../img/goods/goodsinfo_0.jpg" alt="商品图片_0" />
				</div>
				<ul class="gslis">
					<c:set value="${fn:split(sessionScope.goodsInfo.imgUrl, ';') }" var="imgs"/>
					<c:forEach items="${imgs }" var="img" varStatus="status">
						<li><img src="${img }" alt="商品图片-${status.index }" /></li>
					</c:forEach>
				</ul>
			</div>
			<div id="righ_gsinfo">
				<h2>${sessionScope.goodsInfo.gsTitle }</h2>
				<p style='position: relative;'>转&nbsp;&nbsp;卖&nbsp;&nbsp;价：
					<span class="price2"><b style="color: #999999;"> ¥ </b><span id="price">${sessionScope.goodsInfo.discount }</span></span>
					<span style="position:absolute;font-size:12px;color:#999;">&nbsp;&nbsp;&nbsp;该商品谢绝讲价！</span>
				</p>
				<p>原&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：<b style="color: #999999;font-weight: 400;"> ¥ </b>${sessionScope.goodsInfo.price }</p>
				<hr style="margin: 10px 0; border: none; border-top: 1px solid #CCCCCC;" />
				<p>成&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色：${sessionScope.goodsInfo.color }</p>
				<p>宿&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;舍：${sessionScope.goodsInfo.temp4 }</p>
				<p>联系方式：${sessionScope.goodsInfo.temp3 }</p>
				<p>交易方式：${sessionScope.goodsInfo.deal }</p>
				<p class="btn-p"><input type="button" value="立即购买" /></p>
			</div>
			<div class="gsintro">
				<p><span>宝贝介绍</span></p>
				<p>来自用户：<span id="come-user">${sessionScope.goodsInfo.temp1 }</span></p>
				<p>宝贝介绍：<span id="goods-intro">${sessionScope.goodsInfo.gsIntro }</span></p>
			</div>
		</div>
	</div>
	<footer>
		<div class="mokuai">
			<dl>
				<dt>关于我们</dt>
				<dd><a href="aboutus.jsp?id=0">网站简介</a></dd>
				<dd><a href="aboutus.jsp?id=3">服务协议</a></dd>
				<dd><a href="aboutus.jsp?id=2">联系我们</a></dd>
			</dl>
			<dl>
				<dt>帮助中心</dt>
				<dd><a href="">本站地图</a></dd>
				<dd><a href="">友情链接</a></dd>
			</dl>
			<dl>
				<dt>商务合作</dt>
				<dd><a href="aboutus.jsp?id=1">广告服务</a></dd>
			</dl>
		</div>
		<div class="intro">
			<p>闲货精心打造、运营的一个为大学生服务、节约资源的大学生二手网。在网站上，学生可以交易使用过的生活物品、学习用品，学习资料等。网站以“绿色校园，绿色生活”为文化宗旨，为湖工学子们提供一个安全、实用、方便、绿色的大学生网站。</p>
		</div>
		<div class="copyright">
			<p>本站所有信息均为用户自由发布，本站不对信息的真实性负任何责任，交易时请注意识别信息的真假如有网站内容侵害了您的权益请联系我们删除，举报电话：18274763360</p>
			<p style="text-align: center;">技术支持:陈白　 　联系QQ:29447637 　邮箱：29447637@qq.com</p>
			<p style="text-align: center;">Copyright &copy;2017 SecondHandMarket Corporation, All Rights Reserved</p>
		</div>
	</footer>
</body>
<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../js/base_menu.js"></script>
<script type="text/javascript" src="../js/gsinfo.js"></script>
</html>
