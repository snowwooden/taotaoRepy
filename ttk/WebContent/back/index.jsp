<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<title>闲货 - 后台管理</title>
<link rel="shortcut icon" type="image/x-icon" href="../img/titleicon.ico" media="screen"/>
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css">
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css">
<link rel="stylesheet" type="text/css" href="../easyui/css/demo.css">
<link rel="stylesheet" type="text/css" href="../css/back_index.css">
</head>
<body class="easyui-layout">
	<input type="hidden" value="${sessionScope.admin }" id="admin">
	<div data-options="region:'north'" style="height:100px; border:none; background:#fff ;padding:10px;">
		<div class="back_head">
			<div class="back_header_left">
				<img style="height:100%;" src="../img/index_black.png">
			</div>
			<div class="back_header_right">
				<p>
					你好!&nbsp;[&nbsp;<span class="back_current_user">管理员</span> :
					<c:if test="${!empty sessionScope.admin }">
						${sessionScope.admin.AName}&nbsp;
					</c:if>]
					&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:update()" style="text-decoration: none;">修改密码</a>
					&nbsp;&nbsp;<a class="back_exit" href="javascript:exit();">退出系统</a>
				</p>
				<p id="back_curent_time">2000年1月1日 凌晨 00:00:00  星期一</p>
				<br/>
				
			</div>
		</div>
	</div>
	<div id="update_pwd" class="easyui-dialog" title="修改密码" style="width:300px;height:180px;"
	data-options="iconCls:'icon-edit',resizable:true,modal:true,closed:true">
		<form action="" method="post" id="edit_pwd">
			<br style="height: 20px" />
			<p style="height:40px;line-height:40px;text-align:center;">
				<label for="newPwd">新的密码：</label><input type="password" id="newPwd" maxlength="6"/>
			</p>
			<p style="height:40px;line-height:40px;text-align:center;">
				<label for="newPwd_1">确认密码：</label><input type="password" id="newPwd_1" maxlength="6"/>
			</p>
			<p style="height:40px;line-height:40px;text-align:center;">
				<input style="padding:5px 20px" type="button" value="修改" onclick="updatePwd()"/>
			</p>
		</form>
	</div>
	<div id="admin-login" class="easyui-dialog" title="管理员登录" style="width:300px;height:180px;"
	data-options="iconCls:'icon-tips',resizable:true,modal:true,closed:true">
		<form action="" method="post">
			<br style="height: 20px" />
			<p style="height:40px;line-height:40px;text-align:center;">
				<label for="admiId">账号：</label><input type="text" id="admiId" maxlength="6"/>
			</p>
			<p style="height:40px;line-height:40px;text-align:center;">
				<label for="adminPwd">密码：</label><input type="password" id="adminPwd" maxlength="6"/>
			</p>
			<p style="height:40px;line-height:40px;text-align:center;">
				<input style="padding:5px 20px" type="button" value="登录" onclick="adminLogin()"/>
			</p>
		</form>
	</div>
	<div data-options="region:'west',split:true,title:'导航'" style="width:160px;pading:10px;">
		<ul id="menu_tree" class="easyui-tree">
			<li><span>菜单</span>
				<ul>
					<li id="user-manage">用户信息管理</li>
					<li id="goods-manage">商品信息管理</li>
					<li id="goodstype-manage">商品分类管理</li>
					<li id="feedback-manage">反馈留言管理</li>
				</ul>
			</li>
		</ul>
	</div>
	<div data-options="region:'south',border:false" style="height:40px;background:#fff;padding:0px;">
		<p style="text-align: center; height: 40px; line-height: 40px">
			Copyright &copy;2017 SecondHandMarket Corporation, All Rights Reserved
		</p>
	</div>
	<div data-options="region:'center',title:'内容',tools:[{
			iconCls:'icon-full',
			handler:function(){full();}
		},{
			iconCls:'icon-unfull',
			handler:function(){unfull();}
		}]">
		<div id="center_content" class="easyui-tabs" data-options="fit:true">

		</div>
	</div>
</body>
<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../easyui/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="../easyui/js/index.js"></script>
<script type="text/javascript" src="../js/back_index_time.js"></script>
<script type="text/javascript" src="../js/ajaxfileupload.js"></script>
<script type="text/javascript">
$(function() {
	if($('#admin').val() == '') {
		$.messager.alert('提示','请先登录!','info',function() {
			$("#admin-login").dialog("open");
		});
	}
});

function update(){
	$("#update_pwd").dialog("open");
}

function updatePwd(){
	var newPwd=$("#newPwd").val();
	var pwd=$("#newPwd_1").val();
	if(newPwd=="" || pwd=="") {
		$.messager.alert('错误提示','请输入完整的数据!','error');
		return;
	}
	if(newPwd != pwd) {
		$.messager.alert('错误提示','两次密码不一致,请重新输入!','error');
		return;
	} else {
		$.ajax({
		    url: "../json/Login_updatePwd",    //请求的url地址
		    dataType: "json",   //返回格式为json
		    async: true, //请求是否异步，默认为异步，这也是ajax重要特性
		    type: "POST", 
		    data: { "adminPwd": pwd},    //参数值
		    success: function(data) {
		    	if(parseInt($.trim(data.obj))>=1){
		    		$("#update_pwd").dialog("close");
		    		$.messager.confirm("成功提示", "密码修改成功,请重新登录！", function (r) {  
		    	        if (r) {  
		    	        	location="../login.html";
		    	        }
		    	    });  
		    	}else{
		    		$.messager.alert('错误提示','网络错误,请稍后重试!','error');
		    	}
		    },
		});
	}
}

function adminLogin() {
	var aId = $("#admiId").val().trim();
	var aPwd = $("#adminPwd").val().trim();
	if(aId == "" || aPwd == "") {
		$.messager.alert('错误提示','请输入完整的数据!','error');
		return;
	} else {
		$.ajax({
		    url: "../json/Admin_login",		//请求的url地址
		    dataType: "json",  				//返回格式为json
		    async: true, 					//请求是否异步，默认为异步，这也是ajax重要特性
		    type: "POST", 
		    data: {"admin.aId": aId,"admin.aPwd": aPwd},  	//参数值
		    success: function(data) {
		    	if($.trim(data) != ""){
		    		$("#admin-login").dialog("close");
		    		$.messager.alert("成功提示", "登录成功!", 'info',function() {
		    			location.reload();
		    		});  
		    	}else{
		    		$.messager.alert('错误提示','网络错误,请稍后重试!','error');
		    	}
		    },
		});
	}
}

function exit(){
	$.messager.confirm("提示", "确认退出吗?", function (r) {  
        if (r) {
        	$.ajax({
			    url: "../json/Admin_exit",    //请求的url地址
			    dataType: "json",   //返回格式为json
			    async: true, //请求是否异步，默认为异步，这也是ajax重要特性
			    type: "POST", 
			    success: function(data) {
			    	if(parseInt($.trim(data.result)) > 0){
			    		location.href = "../index.jsp";
			    	}else{
			    		$.messager.alert('错误提示','网络错误,请稍后重试!','error');
			    	}
			    },
			});
        }
    });  
}
</script>
</html>

