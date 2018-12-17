$(function() {
	getGoodsType();
	$("#pub-btn").click(publish);
});

var userId = '';
var tid = 1;
var gsTitle = '';
var price = 0.0;
var discount = 0.0;
var color = '';
var gsIntro = '';
var deal = '';

function publish() {
	if(check()) {
		$.ajax({
			url: "../json/Goods_addOneGoods",
		    dataType: "json",   
		    async: true, 
		    type: "POST",
		    data:{
		    	'goods.userId' : userId,
		    	'goods.tid' : tid,
		    	'goods.gsTitle' : gsTitle,
		    	'goods.price' : price,
		    	'goods.discount' : price2,
		    	'goods.color' : color,
		    	'goods.gsIntro' : gsIntro,
		    	'goods.deal' : deal
		    },
		    success: function(data) {
		    	if(parseInt(data.result) > 0) {
		    		location.href = "mygs.jsp";
		    	} else {
		    		alert("发布失败!");
		    	}
		    }
		});
	} else {
		alert("数据不完整!");
	}
}

function check() {
	var result = 0;
	
	userId = $.trim($("#gs_3").val());
	gsTitle = getData('gs_1');
	tid = $("#gs_2 option:selected").val();
	price = getData('gs_4');
	price2 = getData('gs_5');
	color = getData('gs_6');
	gsIntro = getData('gs_7');
	deal = getData('gs_8');
	
	function getData(id) {
		var val =  $.trim($("#" + id).val());
		return val != '' ? val : result ++;
	}
	
	if(result > 0) {
		return false;
	} else {
		return true;
	}
}

function getGoodsType() {
	$.ajax({
		url: "../json/Goods_backGoodsType",
	    dataType: "json",   
	    async: true, 
	    type: "POST",
	    data:{ },
	    success: function(data) {
	    	if(data.rows != null) {
	    		var str = '<option>- 请选择 -</option>';
	    		$.each(data.rows, function(index) {
	    			var type = data.rows[index].tType;
	    			var val = data.rows[index].tid;
	    			str += '<option value=' + val + '>' + type + '</option>';
	    		});
	    		$('#gs_2').html(str);
	    	}
	    }
	});
}
