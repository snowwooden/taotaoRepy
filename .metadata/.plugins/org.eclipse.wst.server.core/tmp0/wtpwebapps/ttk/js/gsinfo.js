$(function() {
	changeGsImg();
});

function changeGsImg() {
	var lis = $('.gslis li');
	$(lis[0]).css('borderColor','#42A0FF');
	$.each(lis, function(i, item) {
		$(item).click(function() {
			for(var j = 0; j < lis.length; j ++) {
				if(i == j) {
					$(item).css('borderColor','#42A0FF');
					var imgpath = $(this).find('img').attr('src');
					$('#gsimg-img').animate({opacity:"0"}, 300, function() {
						$('#gsimg-img').attr('src', imgpath).animate({opacity:"1"}, 300);
					});
				} else {
					$(lis[j]).css('borderColor','#CCCCCC');
				}
			}
		});
	});
}
