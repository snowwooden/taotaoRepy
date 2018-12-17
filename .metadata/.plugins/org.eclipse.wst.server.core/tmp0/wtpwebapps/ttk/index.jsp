<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>闲货 - 湖工二手交易网</title>
	<link rel="shortcut icon" type="image/x-icon" href="img/titleicon.ico" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/page_base.css" />
	<link rel="stylesheet" type="text/css" href="css/index.css" />
</head>

<body>
	<input id="cu" type="hidden" value="${sessionScope.currentUser }">
	<div id="top_bar">
		<ul>
			<li><a href="javascript:;" id="addFav">收藏本站</a></li>
			<li><a href="" id="scanicon">关注闲货</a></li>
			<c:choose>
				<c:when test="${empty sessionScope.currentUser}">   
					<li>你好，<a href="pages/user.jsp?op=login">请登录</a></li>
					<li><a href="pages/user.jsp?op=reg">免费注册</a></li>
				</c:when> 
				<c:otherwise>   
					<li>你好，<a href="pages/mygs.jsp">${sessionScope.currentUser.callName }</a></li>
					<li><a href="User_exit">退出</a></li>
				</c:otherwise> 
			</c:choose> 
			<li><a href="pages/feedback.jsp">意见反馈</a></li>
		</ul>
	</div>
	<div id="menu">
		<a id="to_top" href="javascript:topButton();" title="返回顶部"></a>
	</div>
	<header>
		<nav class="header_nav">
			<div class="index_img">
				<a href="index.jsp">
					<img alt="首页.jpg" src="img/index_black.png" />
					<p>你有什么闲货呢?</p>
				</a>
			</div>
			<ul>
				<li><a href="index.jsp">首页</a></li>
				<li><a href="pages/publish.jsp">发布二手</a></li>
				<li><a href="pages/mygs.jsp">我的二手</a></li>
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
		<div class="content_top">
			<nav class="content_nav">
				<ul>
					<li>
						<a href="">日常生活</a>&nbsp;&nbsp;
						<span><span>日用</span></span>
					</li>
					<li><a href="">鞋服配饰</a>&nbsp;&nbsp;
						<span>
							<span>女装</span>
						<span>女鞋</span>
						<span>配饰</span>
						</span>
					</li>
					<li><a href="">闲置书籍</a>&nbsp;&nbsp;
						<span>
							<span>教材</span>
						<span>小说</span>
						<span>杂志</span>
						</span>
					</li>
					<li><a href="">闲置数码</a>&nbsp;&nbsp;
						<span>
							<span>手机</span>
						<span>电脑</span>
						<span>电子配件</span>
						</span>
					</li>
					<li><a href="">闲置箱包</a>&nbsp;&nbsp;
						<span>
							<span>男包</span>
						<span>女包</span>
						<span>旅行箱</span>
						</span>
					</li>
				</ul>
			</nav>
			<div class="scroll">
				<img class="atuo_img" src="img/ad1.jpg" />
			</div>
			<div class="user_menu">
				<div>
				<c:choose>
					<c:when test="${empty sessionScope.currentUser}">   
						<div class="user_head"><img src="img/uheads/no_user.jpg"></div>
						<p class="foreword">
							Hi!请先<a style="color: #42A0FF;" href="pages/user.jsp?op=login"> 登录 </a>!<br /> 登录享受更多功能!
							<br/>
						</p>
					</c:when> 
					<c:otherwise>   
						<div class="user_head"><img src="img/uheads/header_${sessionScope.currentUser.headImg}.jpg"></div>
						<p class="foreword">
							Hi! ${sessionScope.currentUser.callName}
							<br/>
							<c:choose>
								<c:when test="${!empty sessionScope.currentUser.intro }">   
									${sessionScope.currentUser.intro}
								</c:when> 
								<c:otherwise>   
									<span style="color:#999999;">请完善个人资料!</span>
								</c:otherwise> 
							</c:choose> 
							
						</p>
					</c:otherwise> 
				</c:choose> 
					
					<div class="menu_bars">
						<ul>
							<li>
								<a href="pages/publish.jsp">
									<p>发布闲货 <span class="icon"></span></p>
									<p>闲置换钱 快速出手</p>
								</a>
							</li>
							<li>
								<a href="pages/mygs.jsp">
									<p>我的闲货 <span class="icon"></span></p>
									<p>查看闲货、个人资料</p>
								</a>
							</li>
						</ul>
					</div>
				</div>

			</div>
		</div>
		<div class="content_bottom">
			<div class="column recent">
				<div class="column_title">
					<p>最新发布</p>
				</div>
				<div class="column_info">
					<ul class="recent_img">
						<li>
							<a href=""><img src="img/uheads/header_1.jpg" /></a>
						</li>
						<li>
							<a href=""><img src="img/uheads/header_2.jpg" /></a>
						</li>
						<li>
							<a href=""><img src="img/uheads/header_3.jpg" /></a>
						</li>
						<li>
							<a href=""><img src="img/uheads/header_4.jpg" /></a>
						</li>
						<li>
							<a href=""><img src="img/index_black.png" /></a>
						</li>
						<li>
							<a href=""><img src="img/header.jpg" /></a>
						</li>
					</ul>
					<ul class="recent_text">
						<li>
							<p>[手机/数码] <a href="pages/goodsinfo.jsp">特价出售全新港行原装iPhone7plus</a> 03-08</p>
						</li>
						<li>
							<p>[手机/数码] <a href="">特价出售全新港行原装iPhone7plus</a> 03-08</p>
						</li>
						<li>
							<p>[手机/数码] <a href="">特价出售全新港行原装iPhone7plus</a> 03-08</p>
						</li>
						<li>
							<p>[手机/数码] <a href="">特价出售全新港行原装iPhone7plus</a> 03-08</p>
						</li>
						<li>
							<p>[手机/数码] <a href="">特价出售全新港行原装iPhone7plus</a> 03-08</p>
						</li>
						<li>
							<p>[手机/数码] <a href="">特价出售全新港行原装iPhone7plus</a> 03-08</p>
						</li>
						<li>
							<p>[手机/数码] <a href="">特价出售全新港行原装iPhone7plus</a> 03-08</p>
						</li>
						<li>
							<p>[手机/数码] <a href="">特价出售全新港行原装iPhone7plus</a> 03-08</p>
						</li>
					</ul>
				</div>
			</div>
			<div class="column">
				<div class="column_title">
					<p>书籍资料<a class="more" href="">更多></a></p>
				</div>
				<div class="column_info">
					<ul class="obj_list"  id="obj_list_3">
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
					</ul>
				</div>
			</div>
			<div class="column">
				<div class="column_title">
					<p>数码电子<a class="more" href="">更多></a></p>
				</div>
				<div class="column_info">
					<ul class="obj_list"  id="obj_list_4">
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
					</ul>
				</div>
			</div>
			<div class="column">
				<div class="column_title">
					<p>鞋服配饰<a class="more" href="">更多></a></p>
				</div>
				<div class="column_info">
					<ul class="obj_list" id="obj_list_2">
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
					</ul>
				</div>
			</div>
			<div class="column">
				<div class="column_title">
					<p>日常生活<a class="more" href="">更多></a></p>
				</div>
				<div class="column_info">
					<ul class="obj_list" id="obj_list_1">
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
					</ul>
				</div>
			</div>
			<div class="column">
				<div class="column_title">
					<p>闲置箱包<a class="more" href="">更多></a></p>
				</div>
				<div class="column_info">
					<ul class="obj_list"  id="obj_list_5">
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
						<li>· &nbsp;&nbsp;&nbsp;<a href="">特价出售全新港行原装iPhone7plus</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div style="clear: both;height: 10px;"></div>
	<footer>
		<div class="mokuai">
			<dl>
				<dt>关于我们</dt>
				<dd><a href="pages/aboutus.jsp?id=0">网站简介</a></dd>
				<dd><a href="pages/aboutus.jsp?id=3">服务协议</a></dd>
				<dd><a href="pages/aboutus.jsp?id=2">联系我们</a></dd>
			</dl>
			<dl>
				<dt>帮助中心</dt>
				<dd><a href="">本站地图</a></dd>
				<dd><a href="">友情链接</a></dd>
			</dl>
			<dl>
				<dt>商务合作</dt>
				<dd><a href="pages/aboutus.jsp?id=1">广告服务</a></dd>
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
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/base_menu.js"></script>
<script type="text/javascript" src="js/index.js"></script>
</html>
