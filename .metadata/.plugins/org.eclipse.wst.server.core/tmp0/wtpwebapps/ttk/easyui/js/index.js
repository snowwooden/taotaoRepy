$(function(){
	$('#center_content').tabs('add',{   
		title : '-- 欢迎  --',   
		closable : true,
		href : "welcome.html"
	});

	$('#menu_tree').tree({
		onClick : function(node) {
			if(node.id == "user-manage"){
				var obj = $("#center_content");		//获取中间内容区对象
				if(obj.tabs("exists","用户信息管理")){	//如果存在这个面板，则选中
					obj.tabs("select","用户信息管理");
				} else {
					obj.tabs('add',{ 
						title:'用户信息管理',   
						closable:true,
						href:"user-manage.html"
					});
				}
			} else if(node.id == "goods-manage"){
				var obj = $("#center_content");		//获取中间内容区对象
				if(obj.tabs("exists","商品信息管理")){	//如果存在这个面板，则选中
					obj.tabs("select","商品信息管理");
				} else {
					obj.tabs('add',{ 
						title:'商品信息管理',   
						closable:true,
						href:"goods-manage.html"
					});
				}
			} else if(node.id == "goodstype-manage") {
				var obj = $("#center_content");		//获取中间内容区对象
				if(obj.tabs("exists","商品分类管理")){	//如果存在这个面板，则选中
					obj.tabs("select","商品分类管理");
				} else {
					obj.tabs('add',{ 
						title:'商品分类管理',   
						closable:true,
						href:"goodstype-manage.html"
					});
				}
			} else if(node.id == "feedback-manage") {
				var obj = $("#center_content");		//获取中间内容区对象
				if(obj.tabs("exists","反馈留言管理")){	//如果存在这个面板，则选中
					obj.tabs("select","反馈留言管理");
				} else {
					obj.tabs('add',{ 
						title:'反馈留言管理',   
						closable:true,
						href:"feedback-manage.html"
					});
				}
			}
		}
	});
});




