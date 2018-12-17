package com.shm.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.shm.beans.Goods;
import com.shm.biz.IGoodsBiz;
import com.shm.dao.IGoodsDao;

@Scope("prototype")
@Service("iGoodsBiz")
public class GoodsBizImpl implements IGoodsBiz {
	
	@Resource(name="iGoodsDao")
	private IGoodsDao iGoodsDao;

	@Override
	public int addOneGoods(Goods goods) {
		return iGoodsDao.addOneGoods(goods);
	}

	@Override
	public List<Goods> getGoodsList() {
		return iGoodsDao.getGoodsList();
	}

	@Override
	public int editShowStatus(int gid) {
		return iGoodsDao.editShowStatus(gid);
	}

	@Override
	public int editBuyStatus(int gid) {
		return iGoodsDao.editBuyStatus(gid);
	}

	@Override
	public Goods getOneGoods(int gid) {
		return iGoodsDao.getOneGoods(gid);
	}

	@Override
	public List<Goods> searchGoods(String keyWord) {
		return iGoodsDao.searchGoods(keyWord);
	}

	@Override
	public Goods seeOneGoods(int gid) {
		return iGoodsDao.seeOneGoods(gid);
	}

	@Override
	public List<Goods> getGoodsByType(int tid) {
		return iGoodsDao.getGoodsByType(tid);
	}

}
