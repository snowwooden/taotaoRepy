<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>闲货 - 搜索商品</title>
	<link rel="shortcut icon" type="image/x-icon" href="../img/titleicon.ico" media="screen" />
	<link rel="stylesheet" type="text/css" href="../css/page_base.css"/>
	<link rel="stylesheet" type="text/css" href="../css/search.css"/>
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
			<li><a id="to-chat" href="javascript:;">聊一聊</a></li>
		</ul>
		<div class="search">
			<input class="search_in" type="text" placeholder="搜闲货" />
			<button class="search_btn" onclick="search()">搜索</button>
		</div>
	</nav>
	</header>
	<div id="content">
		<p style="height: 30px;line-height: 30px;">搜索结果</p>
		<table>
			<tr style="height:40px;">
				<td>
					名称
				</td>
				<td>
					图片
				</td>
				<td>
					价格
				</td>
				<td>
					成色
				</td>
			</tr>
			<c:forEach items="${sessionScope.goodsList }" var="gs">
				<tr>
					<td>
						<a href="javascript:showGoodsInfo(${gs.gid });">${gs.gsTitle }</a>
					</td>
					<td>
						<c:set value="${fn:split(gs.imgUrl, ';') }" var="imgs"/>
						<c:forEach items="${imgs }" var="img">
							<img style="width:80px" src="${img }"/>
						</c:forEach>
					</td>
					<td>
						${gs.discount }
					</td>
					<td>
						${gs.color }
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<footer>
		<p style="text-align: center;font-size: 12px;margin-bottom: 50px;">
			Copyright &copy;2017 SecondHandMarket Corporation, All Rights Reserved
		</p>
	</footer>
</body>
<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../js/base_menu.js"></script>
<script type="text/javascript">
	function showGoodsInfo(gid) {
		$.ajax({
			url: "../json/Goods_seeGoodsInfo",
		    dataType: "json",   
		    async: true, 
		    type: "POST",
		    data:{
		    	"goods.gid": gid
		    },
		    success: function(data) {
		    	if(parseInt(data.obj) != null) {
		    		location.href = "goodsinfo.jsp";
		    	}
		    }
		});
	}
</script>
<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../js/base_menu.js"></script>
</html>
