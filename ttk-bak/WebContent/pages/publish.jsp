<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>闲货 - 发布闲货</title>
	<link rel="shortcut icon" type="image/x-icon" href="../img/titleicon.ico" media="screen" />
	<link rel="stylesheet" type="text/css" href="../css/page_base.css"/>
	<style>
		#content{
			padding: 15px 10%;
		}
		
		#pub-left{float: left;width: 40%;}
		
		.line-p{
			min-height:30px;
			line-height:30px;
			text-align:left;
			padding-left:20px;
			text-align: right;
			font-size: 12px;
		}
		
		input[type=text]{
			padding: 3px 8px;
			width: 220px;
		}
		
		#gs_2{
			width: 240px;
			height: 30px;
			font-size: 12px;
		}
		
		textarea{
			resize: none;
			padding: 3px 8px;
			width: 220px;
			height: 100px;
		}
	</style>
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
			<li><a href="">意见反馈</a></li>
		</ul>
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
			<li><a href="../chat/chat.jsp">聊一聊</a></li>
		</ul>
		<div class="search">
			<input class="search_in" type="text" placeholder="搜闲货" />
			<button class="search_btn" onclick="search()">搜索</button>
		</div>
	</nav>
	</header>
	<div id="content">
		<div id="pub-left">
			<p class="line-p">
				<label>商品名称：</label><input type="text" id="gs_1"/>
			</p>
			<p class="line-p">
				<label>商品分类：</label>
				<select id="gs_2">
					<option>- 请选择 -</option>
				</select>
			</p>
			<input type="hidden" id="gs_3" value="${sessionScope.currentUser.userId }"/>
			<p class="line-p">
				<label>原价：￥</label><input type="text" id="gs_4" value="0.0"/>
			</p>
			<p class="line-p">
				<label>二手价：￥</label><input type="text" id="gs_5" value="0.0"/>
			</p>
			<p class="line-p">
				<label>成色：</label><input type="text" id="gs_6"/>
			</p>
			<p class="line-p" style="position: relative;height:">
				<label style="position: absolute;left:110px;">商品描述：</label>
				<textarea id="gs_7"></textarea>
			</p>
			<p class="line-p">
				<label>交易方式：</label><input type="text" id="gs_8"/>
			</p>
			<p class="line-p"></p>
			<p class="line-p"><input id="pub-btn" value="发表" type="button"></p>
			<p class="line-p"></p>
		</div>
	</div>
	<footer>
		<p style="text-align: center;font-size: 12px;margin-bottom: 50px;">
			Copyright &copy;2017 SecondHandMarket Corporation, All Rights Reserved
		</p>
	</footer>
</body>
<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../js/base_menu.js"></script>
<script type="text/javascript" src="../js/publish.js"></script>
<script type="text/javascript">
$(function() {
	if($('#cu').val() == '') {
		alert('请先登录!');
		location.href = 'user.jsp?op=login';
	}
});
</script>
</html>
