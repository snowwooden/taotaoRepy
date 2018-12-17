function AddFavorite(sURL, sTitle) {
    try {
        window.external.addFavorite(sURL, sTitle);
    } catch (e)	{
    	try {
            window.sidebar.addPanel(sTitle, sURL, "");
       } catch (e) {
            alert("你的浏览器不支持这个功能，请使用Ctrl+D进行添加");
        }
    }
}

window.onload = function() {
	var addFav = document.getElementById("addFav");
	addFav.onclick = function() {
		AddFavorite(window.location, document.title);
	}
}


function search() {
	var u = location.href.substr(39);
	if($('#cu').val() != '') {
		if($('.search_in').val() != '') {
			$.ajax({
			    url: u == ""||u == "index.jsp"?"json/Goods_searchGoods":"../json/Goods_searchGoods",
			    dataType: "json",   
			    async: true, 
			    type: "POST",
			    data:{
			    	"goods.temp1": $.trim($('.search_in').val())
			    },
			    success: function(data) {
			    	if(data.rows != null) {
			    		if(u == "pages/search.jsp") {
			    			location.reload();
			    		} else {
			    			location.href = location.href.substr(0, 39) + "pages/search.jsp";
			    		}
			    	}
			    }
			});
		} else {
			alert("请输入搜索条件!");
		}
	} else {
		alert("请先登录!");
		location.href = location.href.substr(0, 39) + "pages/user.jsp";
	}
}
