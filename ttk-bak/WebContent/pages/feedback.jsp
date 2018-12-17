<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>闲货 - 留言反馈</title>
	<link rel="shortcut icon" type="image/x-icon" href="../img/titleicon.ico" media="screen"/>
	<link rel="stylesheet" type="text/css" href="../css/feedback.css"/>
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
	<div id="fb">
		<form id="fbf" action="" method="post">
			<p><label for="ftitle">标题：</label></p>
			<input type="text" id="ftitle" ><input type="hidden" value="${sessionScope.currentUser.userId }" id="userId">
			<p><label for="content">反馈内容：</label></p>
			<textarea id="content"></textarea>
			<p style="margin-top:30px;"><input type="button" value="确认" onclick="addFb()"><input type="reset" value="清空"></p>
		</form>
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
<script type="text/javascript" src="../js/feedback.js"></script>
<script type="text/javascript">
	$(function() {
		if($('#cu').val() == '') {
			alert('请先登录!');
			location.href = 'user.jsp?op=login';
		}
	});
</script>
</html>
