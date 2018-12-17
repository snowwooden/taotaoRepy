$(function() {
	selectHeadImg();
	
	$('#close-a-btn').click(closePanel);
	
	$.date_picker({  
		YearSelector:  "#u_Year",  
		MonthSelector: "#u_Month",  
		DaySelector:   "#u_Date"  
	});  
	
	inputStyle();
	
	$.each($('#my-info input[type=text]'),function() {
		$(this).focus(function() {
			$(this).select();
		});
	});
});

function selectHeadImg() {
	var lis = $('#uh_ls li');
	for(var i = 1; i < lis.length; i ++) {
		$(lis[i]).click(function() {
			for(var j = 1; j < lis.length; j ++) {
				if(this == lis[j]) {
					$(this).find('img').css('borderColor','#272636');
					$('#checked-ico').attr('class','checked-ico-' + j);
				} else {
					$(lis[j]).find('img').css('borderColor','#cccccc');
				}
			}
		});
	}
}

function closePanel() {
	$('#all-back').hide();
	$('#my-info').hide();
}

function openPanel() {
	$('#all-back').css('height',document.body.scrollHeight).show();
	$('#my-info').show();
	getPerInfo();
}

function inputStyle() {
	var ins = $('#per-info-list input[type=text]');
	$.each(ins, function() {
		$(this).attr('disabled','disabled');
	});
}

function getPerInfo() {
	var n = $('#u-head').attr('src').match(/\d/g)[0];
	$.each($('#uh_ls li'), function(i, item) {
		n==i?$(item).find('img').css('borderColor','#272636'):$(item).find('img').css('borderColor','#CCCCCC');
	});
	$('#checked-ico').attr('class','checked-ico-' + n);
	$('#call_name').val($('#u-callname').val());
	$.each($('input[type=radio]'), function() {
		if(this.value == $('#u-sex').val()) this.checked = 'checked';
	});
	$('#dorm').val($('#u-dorm').val());
	$('#intro').val($('#u-intro').val());
}

function editInfo() {
	var account = $.trim($('#account').val());
	var headImg = $('#checked-ico').attr('class').match(/\d/g)[0];
	var callName = $.trim($('#call_name').val());
	var realName = $.trim($('#real_name').val());
	var sex = $('input[type=radio]:checked').val();
	var birth ='';
	var dorm = $.trim($('#dorm').val());
	var QQ = $.trim($('#QQ').val());
	var tel = $.trim($('#tel').val());
	var intro = $.trim($('#intro').val());
	
	$.ajax({
		url: '../json/User_edit',
		async: true, 
		dataType: 'json',
		type: "POST", 
		data: {
			'user.account': account,
			'user.headImg': headImg,
			'user.callName' :callName,
			'user.realName' :realName,
			'user.sex' :sex,
			'user.birth': birth,
			'user.dorm': dorm,
			'user.intro': intro,
			'user.tel': tel,
			'user.QQ': QQ
		},
		success : function(data) {
			alert("修改成功!");
			location.reload();
		}
	});

}
