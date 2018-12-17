// JavaScript Document
var xmlHttp;

$(function(){
	document.onkeydown = function(e){
		if(e.keyCode == 13){
			sendMsg();
			$("#send_message_textarea").focus();
			e.returnValue = false;
			return false;
		}
	}
	
	window.setInterval("startRequest()", 1000);
});

/*发送消息*/
function sendMsg(){
	var msg = $("#send_message_textarea").val();
	if(msg == "" || msg == null){
		alert("消息不能为空!");
		$("#content").selet();
		return false;
	}else{
        $("#myf").submit();
	}
}

function createXMLHttpRequest() {
	if(window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}

function startRequest() {
	createXMLHttpRequest();
	xmlHttp.onreadystatechange = handleStateChange;
	xmlHttp.open("POST", "back/dodata.jsp");
	xmlHttp.send(null);
}

function handleStateChange() {
	if(xmlHttp.readyState == 4) {
		if(xmlHttp.status == 200) {
			$(".message_win").html(xmlHttp.responseText);
			down();
		}
	}
}

function down(){
	var parent_top = $("#parent").height();
	var child_top = $("#message_win_show").height();
	if(child_top >= parent_top) {
		$("#parent").scrollTop(child_top-parent_top);
	}
}

/*取消发送*/
function cancelMsg(){
	var text=$("#send_message_textarea");
	text.val("");
	text.select();
}

/*清除聊天窗口信息*/
function clearMsg(){
	$("#message_win_show").html("");
}

/*退出聊天*/
function exitChat() {
	location.href = "chat/exit_index";
}

