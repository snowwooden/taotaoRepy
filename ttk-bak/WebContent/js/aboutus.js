$(function() {
	change();
});

var ts = ['网站简介','广告服务','联系我们','服务协议'];

function change() {
	var str = location.search;
	var num = str.substr(str.indexOf('=') + 1);
	if(num == '') num = 0;
	document.title = '闲货 - ' + ts[num];
	$("#left_nav li")[num].className = 'changeClass';
	for(var i = 0; i < 4; i++) {
		var obj = $("#_id_" + i);	
		if(i == num) {
			obj.show();
		} else {
			obj.hide()
		}
	}
}

function showPage(n) {
	location.search = '?id=' + n;
}
