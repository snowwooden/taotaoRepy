<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<%@include file="back/header.jsp"%>
<title>网络聊天室</title>
<link rel="shortcut icon" type="image/x-icon" href="../img/titleicon.ico" media="screen" />
<link rel="stylesheet" type="text/css" href="css/chat.css">
<script src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	$(function(){
		if($("#currentUser").val() == "") {
			alert("请登录!");
			window.location.href = "../pages/user.jsp";
		}
		
		window.setInterval("reflush()", 1000);
	});
	
	/*页面关闭，清除用户*/
	function checkLeave() {
		$.post("chat/exit_index");
	}
	
	function reflush() {
		$("#chat_body_left").load("back/userlist.jsp");
	}
</script>
<script src="js/chat.js"></script>
</head>

<body onbeforeunload="checkLeave()">
	<input type="hidden" id="currentUser" value="${sessionScope.currentUser.callName }">
	<div id="chat_header">
    	<p>你不主动，我们怎么会有故事...</p>
    </div>
    <div id="chat_body">
    	<div id="chat_body_left">
            <%@include file="back/userlist.jsp"%>
        </div>
       	<div id="chat_body_right">
            <div class="start_chat">
                <div class="start_chat_window">
                	<div class="message_win">
                		<%@include file="back/content.jsp"%>
                    </div>
                    <div class="send_win">
                    	<div class="send_win_tools">
                        	<a>表情</a><a>图片</a><a onclick="clearMsg()">清屏</a>
                        </div>
                        <div class="send_win_area">
                        	<form action="../chat/talk_chat" method="post" id="myf">
	                        	<textarea name="content" id="send_message_textarea" rows="4" placeholder="在这里输入消息"></textarea>
	                            <p>
	                                <input type="button" value="退出聊天" onClick="exitChat()"/>
	                                <input type="button" value="清空" onClick="cancelMsg()"/>
	                                <input type="button" value="发送(Enter)" onClick="sendMsg()"/>
	                            </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr class="body_bottom_hr" style="margin-top:15px;"/>
    <div id="chat_footer">
    	<p style="text-align: center;">Copyright &copy;2017 SecondHandMarket Corporation, All Rights Reserved</p>
    </div>
</body>
</html>
