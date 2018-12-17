<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>闲货 - </title>
	<link rel="shortcut icon" type="image/x-icon" href="../img/titleicon.ico" media="screen"/>
	<link rel="stylesheet" type="text/css" href="../css/page_base.css"/>
	<link rel="stylesheet" type="text/css" href="../css/aboutus.css" />
</head>
<body>
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
	<header>
		<nav class="header_nav">
			<div class="index_img">
				<a href="../index.jsp">
					<img alt="首页.jpg" src="../img/index_black.png"/>
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
				<input class="search_in" type="text" placeholder="搜闲货"/>
				<button class="search_btn" onclick="search()">搜索</button>
			</div>
		</nav>
	</header>
	<div id="content">
		<ul id="left_nav">
			<li><a href="javascript:showPage(0);">网站简介</a></li>
			<li><a href="javascript:showPage(1);">广告服务</a></li>
			<li><a href="javascript:showPage(2);">联系我们</a></li>
			<li><a href="javascript:showPage(3);">服务协议</a></li>
		</ul>
		<div id="show_content">
			<ul>
				<li id="_id_0">
					<div>
						<h6>网站简介</h6>
						<p>闲货精心打造、运营的一个为大学生服务、节约资源的大学生二手网。在网站上，学生可以交易使用过的生活物品、学习用品，学习资料等。商家店铺可以推广自己的商店及产品，扩大在校园内的影响力。网站以“绿色校园，绿色生活”为文化宗旨，为湖工学子们提供一个安全、实用、方便、绿色的大学生网站。</p>
						<h6>网站文化宗旨</h6>
						<p>使&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;命：通过互联网让同学生活更简单</p>
						<p>愿&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;景：校内人人信赖的生活服务平台</p>
						<p>品牌定位：闲货，让生活更简单</p>
						<p>价&nbsp;&nbsp;值&nbsp;&nbsp;观：用户第一　主动协作 简单可信　创业精神　学习成长</p>
						<p>组织文化：创造、创新、创想</p>
					</div>
				</li>
				<li id="_id_1">
					<div>
						<h6>1、广告及品牌店铺</h6>
						<p>在湖工二手交易网站各个页面放置了商家广告，只要在湖工二手交易网站定制广告的商家我们会提供商家广告位一个及商家独立网站一个， (包含频道：商家简介，商家动态，商品展示，优惠打折，店铺形象，店铺视频，地图位置，店铺点评，联系方式。)</p> 
						<h6>2、商家快捷电话（便民电话）</h6>
						<p>首页独立设置商家快捷板块，可以放置各类商家电话(比如外面，小吃，KTV 等等吃喝玩乐相关)，方便学生快速联系商家。</p> 
						<h6>3、信息推荐置顶</h6>
						<p>信息上首页，通过付费直接把您的信息推送至网站首页；
						每个分类栏目页都可以进行信息推荐置顶。出价越高排位越靠前。</p>
						<p>&nbsp;</p>
						<p>联系我们：手机   18274763360</p>
						<p>QQ：294476387  （好友验证：闲货广告业务咨询）</p>
					</div>
				</li>
				<li id="_id_2">
					<div>
						<p>团队名称：闲货 - 湖工二手交易网</p>
						<p>团队地址：衡阳市珠晖区</p>
						<p>联系电话：18274763360</p>
						<p>电子邮箱：<a title="邮件联系" href="mailto:294476387@qq.com">294476387@qq.com</a></p>
						<p style="position: relative;">业务QQ：294476387<a id="QQ_chat" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=294476387&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:294476387:51" alt="QQ交谈" title="QQ交谈"/></a></p>
						<p>如果您对我们的网站有任何投诉建议可以直接联系我们。</p>
					</div>
				</li>
				<li id="_id_3">
					<div>
						<p>欢迎光临淘二淘网站。淘二淘致力于为您提供最优质、最便捷的服务。在访问淘二淘的同时，也请您仔细阅读我们的协议条款。您需要同意该条款才能注册成为我们的用户。一经注册，将视为接受并遵守该条款的所有约定。</p>
						<p>1．用户应按照淘二淘的注册、登陆程序和相应规则进行注册、登陆，注册信息应真实可靠，信息内容如有变动应及时更新。</p>
						<p>2．用户应在适当的栏目或地区发布信息，所发布信息内容必须真实可靠，不得违反淘二淘对发布信息的禁止性规定。用户对其自行发表、上传或传送的内容负全部责任。</p>
						<p>3．遵守中华人民共和国相关法律法规，包括但不限于《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》、《最高人民法院关于审理涉及计算机网络著作权纠纷案件适用法律若干问题的解释(法释[2004]1号)》、《互联网电子公告服务管理规定》、《互联网新闻信息服务管理规定》、《互联网著作权行政保护办法》和《信息网络传播权保护条例》等有关计算机互联网规定和知识产权的法律和法规、实施办法。</p>
						<p>4．所有用户不得在淘二淘任何版块发布、转载、传送含有下列内容之一的信息，否则淘二淘有权自行处理并不通知用户：</p>
						<p>(1)违反宪法确定的基本原则的； (2)危害国家安全，泄漏国家机密，颠覆国家政权，破坏国家统一的； (3)损害国家荣誉和利益的； (4)煽动民族仇恨、民族歧视，破坏民族团结的； (5)破坏国家宗教政策，宣扬邪教和封建迷信的； (6)散布淫秽、色情、赌博、暴力、恐怖或者教唆犯罪的； (7)侮辱或者诽谤他人，侵害他人合法权益的； (8)含有法律、行政法规禁止的其他内容的。</p>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<footer>
		<div class="copyright">
			<p>本站所有信息均为用户自由发布，本站不对信息的真实性负任何责任，交易时请注意识别信息的真假如有网站内容侵害了您的权益请联系我们删除，举报电话：18274763360</p>
			<p style="text-align: center;">技术支持:陈白　 　联系QQ:29447637 　邮箱：29447637@qq.com</p>
			<p style="text-align: center;">Copyright &copy;2017 SecondHandMarket Corporation, All Rights Reserved</p>
		</div>
	</footer>
</body>
</html>
<script type="text/javascript" src="../js/jquery-1.11.3.min.js" ></script>
<script type="text/javascript" src="../js/base_menu.js"></script>
<script type="text/javascript" src="../js/aboutus.js" ></script>

