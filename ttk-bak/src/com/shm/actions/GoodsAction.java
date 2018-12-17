package com.shm.actions;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.shm.beans.Goods;
import com.shm.beans.GoodsType;
import com.shm.biz.IGoodsBiz;
import com.shm.biz.IGoodsTypeBiz;
import com.shm.utils.JsonObject;
import com.shm.utils.SessionAttributeName;

@Scope("prototype")
@Controller("goodsAction")
public class GoodsAction extends InitAction {

	private static final long serialVersionUID = 1L;

	@Resource(name="iGoodsTypeBiz")
	private IGoodsTypeBiz iGoodsTypeBiz;
	
	@Resource(name="iGoodsBiz")
	private IGoodsBiz iGoodsBiz;
	
	private Goods goods;
	private JsonObject json;
	
	public String initPage() {
		int result = 0;
		List<Goods> gs = iGoodsBiz.getGoodsByType(goods.getTid());
		if(gs.size() > 0) {
			result = 1;
		}
		json = new JsonObject();
		json.setResult(result);
		json.setRows(gs);
		return SUCCESS;
	}
	
	public String oneGoodsInfo() {
		Goods gs = iGoodsBiz.getOneGoods(goods.getGid());
		if(gs != null) {
			session.setAttribute(SessionAttributeName.GOODSINFO, gs);
			json = new JsonObject();
			json.setObj(gs);
		}
		return SUCCESS;
	}
	
	public String addOneGoods() {
		System.out.println(goods);
		json = new JsonObject();
		json.setResult(iGoodsBiz.addOneGoods(goods));
		return SUCCESS;
	}
	
	public String editShowStatus() {
		boolean flag = iGoodsBiz.getOneGoods(goods.getGid()).isShow_status();
		int result = 0;
		if(!flag) {
			result = iGoodsBiz.editShowStatus(goods.getGid());
		}
		json = new JsonObject();
		json.setResult(result);
		return SUCCESS;
	}
	
	public String editBuyStatus() {
		boolean flag = iGoodsBiz.getOneGoods(goods.getGid()).isBuy_status();
		int result = 0;
		if(!flag) {
			result = iGoodsBiz.editBuyStatus(goods.getGid());
		}
		json = new JsonObject();
		json.setResult(result);
		return SUCCESS;
	}
	
	public String seeGoodsInfo() {
		Goods gs = iGoodsBiz.seeOneGoods(goods.getGid());
		if(gs != null) {
			session.setAttribute(SessionAttributeName.GOODSINFO, gs);
			json = new JsonObject();
			json.setObj(gs);
		}
		return SUCCESS;
	}
	
	public String searchGoods() {
		List<Goods> list = iGoodsBiz.searchGoods(goods.getTemp1());
		session.setAttribute(SessionAttributeName.GoodsList, list);
		json = new JsonObject();
		json.setRows(list);
		return SUCCESS;
	}
	
	public String backGoodsType() {
		List<GoodsType> list = iGoodsTypeBiz.getTypeList();
		json = new JsonObject();
		json.setRows(list);
		return SUCCESS;
	}
	
	public String backGoodsList() {
		List<Goods> list = iGoodsBiz.getGoodsList();
		json = new JsonObject();
		json.setRows(list);
		return SUCCESS;
	}

	public JsonObject getJson() {
		return json;
	}

	public void setJson(JsonObject json) {
		this.json = json;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}
}
