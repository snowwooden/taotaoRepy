$(function() {
	$("#changeKey").click(changeKey);
	
	selectCard();
	changeKey();
	
});

var ts = {'login':'会员登录','reg':'会员注册','forget':'找回密码'};

function selectCard() {
	var str = location.search;
	var op = str.substr(str.indexOf('=') + 1);
	op == ''?op = 'login':op;
	document.title = '闲货 - ' + ts[op];
	var a = $(".head-panel .ops");
	for(var i = 0; i < a.length; i ++) {
		if($(a[i]).attr('id') == op + '-btn') {
			$(a[i]).css({'color':'black','borderBottomColor':'white'});
			$(a[i]).next().show();
		} else {
			$(a[i]).css({'color':'white'});
			$(a[i]).parent().css({'background':'#42A0FF'});
			$(a[i]).next().hide();
		}
	}
}

function op(op) {
	location.search = '?op=' + op;
}

var key="";

//更换验证码
function changeKey() {
	key = "";
	//验证码产生的数组
	var k = new Array(
		"0","1","2","3","4","5","6","7","8","9",
		"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
		"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"
	);
	for(var i = 0; i < 4; i ++) {	//循环4次  
		var index = Math.floor(62 * Math.random());	//得到4个随机数
		key += k[index];		//拼接得到一个4位的验证码
	}
	$("#changeKey").html(key);	//将验证码在页面上显示
}


function login() {
	var account = $.trim($('#login-uid').val());
	var pwd = $.trim($('#login-pwd').val());
	var code = $.trim($('#login-code').val());
	if(account == '' || pwd == '') {
		alert("账号或密码不能为空!");
		return;
	} else if(code == '') {
		alert("请输入验证码!");
		return;
	} else if(code.toLowerCase() != key.toLowerCase()) {
		alert("验证码错误!");
		$('#login-code').val('');$('#login-code').select();
		changeKey();
		return;
	} else {
		$.ajax({
			url: "../json/User_login",    
		    dataType: "json",   
		    async: true, 
		    type: "POST",
		    data:{
		    	"user.account": account,
		    	"user.pwd": pwd,
		    },
		    success: function(data) {
		    	if(parseInt(data.result) > 0) {
		    		location.href = '../index.jsp';
		    	} else {
		    		alert(data.obj);
		    	}
		    }
		});
	}
	
}

function reg() {
	if(check()) {
		var code = $.trim($('#reg-code').val());
		var regCode = $("#regCode").val();
		if(code.toLowerCase() != regCode.toLowerCase()) {
			alert("验证码错误!"); 
			return;
		} else {
			$.ajax({
				url: "../json/User_reg",
			    dataType: "json",   
			    async: true, 
			    type: "POST",
			    data:{
			    	"user.account": $.trim($('#reg-uid').val()),
			    	"user.pwd": $.trim($('#reg-pwd1').val())
			    },
			    success: function(data) {
			    	if(data.result > 0) {
			    		alert('注册成功!');
			    		op(1);
			    	} else {
			    		alert('注册失败!');
			    	}
			    }
			});
		}
	}
}

function check() {
	var account = $.trim($('#reg-uid').val());
	var pwd1 = $.trim($('#reg-pwd1').val());
	var pwd2 = $.trim($('#reg-pwd2').val());
	var flag = $('#account-info').css('color');
	if(flag == 'green') {
		if(account == '' || pwd == '') {
			alert("账号或密码不能为空!");
			return false;
		} else if(pwd1 != pwd2) {
			alert("两次输入的密码不一致!");
			return false;
		}
	}
	return true;
}

function sengCode() {
	if(check()) {
		$.ajax({
			url: "../json/User_sendCode",
		    dataType: "json",   
		    async: true, 
		    type: "POST",
		    data:{
		    	"user.account": $.trim($('#reg-uid').val())
		    },
		    success: function(data) {
		    	if(data.result > 0) {
		    		alert('邮件发送成功!验证码为：'+data.obj);
		    		$("#regCode").val(data.obj);
		    		$('#send-code').attr('disabled','disabled');
		    	} else {
		    		alert('邮件发送失败!');
		    		$('#send-code').removeAttr('disabled');
		    	}
		    }
		});
	}
}

function checkAccount() {
	var account = $.trim($('#reg-uid').val());
	if(account != '') {
		$.ajax({
			url: "../json/User_checkAccount",
		    dataType: "json",
		    async: true,
		    type: "POST",
		    data: { 
		    	"user.account": account,
		    },
		    success: function(data) {
		    	if(parseInt(data.result) > 0) {
		    		$('#account-info').val('该账号已被注册').css({'color':'red'});
		    	} else {
		    		$('#account-info').val('该账号可用').css({'color':'green'});
		    	}
		    }
		});
	} else {
		$('#account-info').val('账号不能为空').css({'color':'red'});
	}
	window.setTimeout($('#account-info').val('').animate('slow'), 3000);
}
