<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>闲货 - </title>
	<link rel="shortcut icon" type="image/x-icon" href="../img/titleicon.ico" media="screen"/>
	<link rel="stylesheet" type="text/css" href="../css/user.css"/>
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
					<img alt="闲货" src="../img/index_black.png"/>
				</a>
				<p>湖工二手交易网站</p>
			</div>
		</nav>
	</header>
	<div style="min-height:320px;width: 1000px; margin: 80px auto;">
		<ul id="head_nav" class="head-panel">
			<li>
				<a id="login-btn" class="ops" href="javascript:op('login');">用户登录</a>
				<div id="login-panel" class="info-panel">
					<form id="login_form" action="" method="post">
						<p><label for="login-uid">账&nbsp;&nbsp;&nbsp;号：</label><input name="luser.account" id="login-uid" type="text" /></p>
						<p><label for="login-pwd">密&nbsp;&nbsp;&nbsp;码：</label><input name="luser.pwd" id="login-pwd" type="password" /></p>
						<p><label for='login-code'>验证码：</label><input id='login-code' type="text"/>
							<a id="changeKey" title="不区分大小写" href="javascript:;"></a>
						</p>
						<p><input class="user-btn" type="button" value="登录" onclick="login()"/></p>
					</form>
				</div>
			</li>
			<li>
				<a id="reg-btn" class="ops" href="javascript:op('reg');">免费注册</a>
				<div id="reg-panel" class="info-panel">
					<form id="reg_form" action="" method="post">
						<p><label for="reg-uid">账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：</label><input onblur="checkAccount()" id="reg-uid" type="text"/><input type="text" id="account-info" disabled="disabled"></p>
						<p><label for="reg-pwd1">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label><input id="reg-pwd1" type="password"/></p>
						<p><label for="reg-pwd2">确认密码：</label><input id="reg-pwd2" type="password" /></p>
						<p><label for='reg-code'>验&nbsp;证&nbsp;码：</label>
							<input id='reg-code' type="text" maxlength="4"/><input id="regCode" maxlength="4" type="hidden"/>
							<input id="send-code" onclick="sengCode()" type="button" value="获取验证码"/>
						</p>
						<p><input class="user-btn" type="button" value="注册" onclick="reg()"/></p>
					</form>
				</div>
			</li>
			<li>
				<a id="forget-btn" class="ops" href="javascript:op('forget');">找回密码</a>
				<div id="forget-panel" class="info-panel">3</div>
			</li>
		</ul>
	</div>
	<footer style="clear: both;">
		<div class="copyright">
			<p>本站所有信息均为用户自由发布，本站不对信息的真实性负任何责任，交易时请注意识别信息的真假如有网站内容侵害了您的权益请联系我们删除，举报电话：18274763360</p>
			<p style="text-align: center;">技术支持:陈白　 　联系QQ:29447637 　邮箱：29447637@qq.com</p>
			<p style="text-align: center;">Copyright &copy;2017 SecondHandMarket Corporation, All Rights Reserved</p>
		</div>
	</footer>
</body>
<script type="text/javascript" src="../js/jquery-1.11.3.min.js" ></script>
<script type="text/javascript" src="../js/base_menu.js" ></script>
<script type="text/javascript" src="../js/user.js" ></script>
</html>
