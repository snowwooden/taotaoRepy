<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>闲货 - 我的闲货</title>
	<link rel="shortcut icon" type="image/x-icon" href="../img/titleicon.ico" media="screen" />
	<link rel="stylesheet" type="text/css" href="../css/page_base.css"/>
	<link rel="stylesheet" href="../css/mygs.css" />
</head>
<body>
	<input id="account" type="hidden" value="${sessionScope.currentUser.account }">
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
				<img alt="首页" src="../img/index_black.png" />
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
	<div id="all-back"></div>
	<div id='my-info'>
		<p style="text-align: right;margin-top: -20px;margin-right: -10px;"><a id="close-a-btn" href="javascript:;" title="关闭">×</a></p>
		<p style="font-size: 14px;">Tips：填写真实的资料，有助于商品快速通过审核哦。</p>
		<form action="" method="post">
			<p class="my-info-p">
				<label style="position: absolute;">头像：</label>
				<ul id='uh_ls'>
					<li><img id='checked-ico' src="../img/checked.png"></li>
					<li><img alt="头像" src="../img/uheads/header_1.jpg"></li>
					<li><img alt="头像" src="../img/uheads/header_2.jpg"></li>
					<li><img alt="头像" src="../img/uheads/header_3.jpg"></li>
					<li><img alt="头像" src="../img/uheads/header_4.jpg"></li>
				</ul>
			</p>
			<p class='my-info-p'><label for='call_name'>昵称：</label><input id='call_name' type="text"/></p>
			<p class='my-info-p' style="line-height:20px;color: #999999;font-size: 12px;">*昵称填写须知：与闲货业务或卖家品牌冲突的昵称，闲货将有可能收回</p>
			<p class='my-info-p'><label for='real_name'>真实姓名：</label><input id='real_name' type="text" value="${sessionScope.currentUser.realName }"/></p>
			<p class='my-info-p'><label>性别：</label>
				<input type="radio" name="sex" value="male"/>男&nbsp;&nbsp;&nbsp;
				<input type="radio" name="sex" value="female"/>女
			</p>
			<p class='my-info-p'><label for='dorm'>宿舍：</label><input id="dorm" type="text" value="${sessionScope.currentUser.dorm }"/></p>
			<p class='my-info-p'><label>生日：</label>
				<select id="u_Year"><option>年</option></select>
				<select id="u_Month"><option>月</option></select>
				<select id="u_Date"><option>日</option></select>
			</p>
			<p class='my-info-p'><label for="tel">联系方式：</label><input id="tel" type="text" value="${sessionScope.currentUser.tel }"/></p>
			<p class='my-info-p'><label for="QQ">QQ：</label><input id="QQ" type="text" value="${sessionScope.currentUser.QQ }"/></p>
			<p class='my-info-p'><label for="intro">一句话介绍：</label><input id="intro" type="text"/></p>
			<p style="margin-top: 20px;"><input type="button" value="保存" onclick="editInfo()"/></p>
		</form>
	</div>
	<div id="content">
		<div style="min-height: 300px;width: 80%;">
			<div id="per-pub">
				<p class="gs-head">我的闲置</p>
				<table>
					<tr class="head-tr">
						<td>
							图片
						</td>
						<td>
							标题
						</td>
						<td>
							价格
						</td>
						<td>
							成色
						</td>
						<td>
							审核状态
						</td>
						<td>
						</td>
					</tr>
					<tr>
						<td>
							<img style="width:80px" src="../img/goods/goodsinfo_0.jpg">
						</td>
						<td>
							日本原装丝蓓绮TSUBAKI资生堂洗发水白椿洗护套装
						</td>
						<td>
							150.00
						</td>
						<td>
							全新
						</td>
						<td>
							审核通过
						</td>
						<td>
							<a style="text-decoration: underline;" href="goodsinfo.jsp">前往查看</a>&nbsp;
							<a style="text-decoration: underline;" href="publish.jsp">编辑</a>
						</td>
					</tr>
					<tr>
						<td>
							<img style="width:80px" src="../img/goods/goodsinfo_0.jpg">
						</td>
						<td>
							日本原装丝蓓绮TSUBAKI资生堂洗发水白椿洗护套装
						</td>
						<td>
							150.00
						</td>
						<td>
							全新
						</td>
						<td>
							审核通过
						</td>
						<td>
							<a style="text-decoration: underline;" href="goodsinfo.jsp">前往查看</a>&nbsp;
							<a style="text-decoration: underline;" href="publish.jsp">编辑</a>
						</td>
					</tr>
					<tr>
						<td>
							<img style="width:80px" src="../img/goods/goodsinfo_0.jpg">
						</td>
						<td>
							日本原装丝蓓绮TSUBAKI资生堂洗发水白椿洗护套装
						</td>
						<td>
							150.00
						</td>
						<td>
							全新
						</td>
						<td>
							审核通过
						</td>
						<td>
							<a style="text-decoration: underline;" href="goodsinfo.jsp">前往查看</a>&nbsp;
							<a style="text-decoration: underline;" href="publish.jsp">编辑</a>
						</td>
					</tr>
					<tr>
						<td>
							<img style="width:80px" src="../img/goods/goodsinfo_0.jpg">
						</td>
						<td>
							日本原装丝蓓绮TSUBAKI资生堂洗发水白椿洗护套装
						</td>
						<td>
							150.00
						</td>
						<td>
							全新
						</td>
						<td>
							审核通过
						</td>
						<td>
							<a style="text-decoration: underline;" href="goodsinfo.jsp">前往查看</a>&nbsp;
							<a style="text-decoration: underline;" href="publish.jsp">编辑</a>
						</td>
					</tr>
					<tr>
						<td>
							<img style="width:80px" src="../img/goods/goodsinfo_0.jpg">
						</td>
						<td>
							日本原装丝蓓绮TSUBAKI资生堂洗发水白椿洗护套装
						</td>
						<td>
							150.00
						</td>
						<td>
							全新
						</td>
						<td>
							审核通过
						</td>
						<td>
							<a style="text-decoration: underline;" href="goodsinfo.jsp">前往查看</a>
							<a style="text-decoration: underline;" href="publish.jsp">编辑</a>
						</td>
					</tr>
				</table>
			</div>
			<div id="per-info">
				<p class="gs-head" style="position: relative;">我的资料<a id="edit-info" href="javascript:openPanel();">编辑详细资料</a></p>
				<ul id="per-info-list">
					<li><img id="u-head" src="../img/uheads/header_${sessionScope.currentUser.headImg }.jpg"></li>
					<li><p><input id="u-callname" type='text' value='${sessionScope.currentUser.callName }'/></p></li>
					<li>
						<p>
							<input id="u-sex" type="text" value='${sessionScope.currentUser.sex }'/>
							<input id="u-dorm" type="text" value='${sessionScope.currentUser.dorm }'/>
						</p>
					</li>
					<li><p><input id="u-intro" type='text' value='${sessionScope.currentUser.intro }'/></p></li>
					<li>&nbsp;</li>
				</ul>
			</div>
		</div>
	</div>
	<footer>
		<p style="text-align: center;font-size: 12px;padding-bottom: 50px;">
			Copyright &copy;2017 SecondHandMarket Corporation, All Rights Reserved
		</p>
	</footer>
</body>
<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../js/base_menu.js"></script>
<script type="text/javascript" src="../js/date.js" ></script>
<script type="text/javascript" src="../js/mygs.js" ></script>
<script type="text/javascript" >
	$(function() {
		if($('#account').val() == '') {
			alert('请先登录!');
			location.href = 'user.jsp?op=login';
		}
	});
</script>
</html>
