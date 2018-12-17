$(function(){
	window.setInterval(autoImg, 5000);
	autoMenu();
	
	initPage();
	
	$('#to-chat').click(function() {
		if($('#cu').val() != '') {
			location.href = "chat/login_skip";
		} else {
			location.href = "chat/chat.jsp";
		}
	});
});

var i = 0;

var timer;

function autoImg() {
	var img = $(".atuo_img");
	$(img).animate({opacity:"0"}, 500, function() {
		$(img).attr("src","img/ad"+ (++ i%3+1) +".jpg").animate({opacity:"1"},500);
	});
}

function topButton() {
	timer = window.setInterval(action, 10); 
}

function action() {
	if($(document).scrollTop() != 0) {
			$(document).scrollTop($(document).scrollTop()-50);
	} else {
		window.clearInterval(timer);
	}
}

/*
function getScrollTop() {
    var scrollTop=0;
    if(document.documentElement&&document.documentElement.scrollTop) {
        scrollTop=document.documentElement.scrollTop;
    } else if(document.body) {
        scrollTop=document.body.scrollTop;
    }
    return scrollTop;
}
*/

function autoMenu() {
	$(document).scroll(function() {
		var height = $(document).scrollTop();
		if(height > 300) {
			$("#menu").css("display","block");
		} else {
			$("#menu").css("display","none");
		}
	});
}

function initPage() {
	for(var i = 1; i <= 5; i++) {
		getInitPage(i);
	}
}

function getInitPage(num) {
	$.ajax({
		url: "json/Goods_initPage",
	    dataType: "json",   
	    async: true, 
	    type: "POST",
	    data:{
	    	"goods.tid": num
	    },
	    success: function(data) {
	    	if(parseInt(data.result) > 0) {
	    		var str = '';
	    		$.each(data.rows, function(index) {
	    			var t = data.rows[index].gsTitle;
	    			var id = data.rows[index].gid;
	    			str += '<li>· &nbsp;&nbsp;&nbsp;<a href="javascript:showGoodsInfo('+id+');">'+ t +'</a></li>';
	    		});
	    		$('#obj_list_' + num).html(str);
	    	} else {
	    		$('#obj_list_' + num).html("<p style='text-align:center;font-size:12px;'>没有数据!</p>");
	    	}
	    }
	});
}

function showGoodsInfo(gid) {
	$.ajax({
		url: "json/Goods_seeGoodsInfo",
	    dataType: "json",   
	    async: true, 
	    type: "POST",
	    data:{
	    	"goods.gid": gid
	    },
	    success: function(data) {
	    	if(parseInt(data.obj) != null) {
	    		location.href = "pages/goodsinfo.jsp";
	    	}
	    }
	});
}


