// JavaScript Document			
var d ;
function date() {
	var date = new Date();
	
	var year = date.getFullYear().toString();
	var mouth = (date.getMonth()+1).toString();
	var ri = date.getDate().toString();
	
	var day = date.getDay();
	
	var hour = date.getHours().toString();
	var minu = date.getMinutes().toString();
	var sec = date.getSeconds().toString();
	var dec = '';
	
	if(day == 0) {
		day = "日";
	} else if(day == 1) {
		day = "一";
	} else if(day == 2) {
		day = "二";
	} else if(day == 3) {
		day = "三";
	} else if(day == 4) {
		day = "四";
	} else if(day == 5) {
		day = "五";
	} else if(day == 6) {
		day = "六";
	}
	
	if(hour.length == 1) {
		hour = "0" + hour;
	}
	if(minu.length == 1) {
		minu = "0" + minu;
	}
	if(sec.length == 1) {
		sec = "0" + sec;
	}
	
	if(hour < 6){
		dec = "凌晨";
	}else if(hour < 12){
		dec = "上午";
	}else if(hour < 14){
		dec = "中午";
	}else if(hour < 18){
		dec = "下午";
	}else if(hour >= 0){
		dec = "晚上";
	}
	
	d = year + "年" + mouth + "月" + ri + "日&nbsp;"+ dec + "&nbsp;" + hour + ":" + minu + ":" + sec + "&nbsp;星期" + day;
}

function time() {
	date();
	$("#back_curent_time").html(d);
}

window.setInterval("time()",1000);