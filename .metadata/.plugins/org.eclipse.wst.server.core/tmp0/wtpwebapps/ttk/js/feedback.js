function addFb() {
	var userId = $.trim($('#userId').val());
	var title = $.trim($('#ftitle').val());
	var content = $.trim($('#content').val());
	
	if(title == '' && content == '') {
		alert('标题或者内容不能为空!');
	} else {
		$.ajax({
			url: "../json/Feedback_addFb",
		    dataType: "json",   
		    async: true, 
		    type: "POST",
		    data:{
		    	"feedback.userId": userId,
		    	"feedback.fbTitle": title,
		    	"feedback.fbContent": content,
		    },
		    success: function(data) {
		    	if(parseInt(data.result) > 0) {
		    		alert('感谢您的反馈!');
		    		$('#ftitle').val("");
		    		$('#content').val("");
		    	} else {
		    		alert('反馈失败!');
		    	}
		    }
		});
	}
}