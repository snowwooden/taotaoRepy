package com.shm.dao;

import java.util.List;

import com.shm.beans.Goods;

	public interface IGoodsDao {

	public int addOneGoods(Goods goods);
	
	public List<Goods> getGoodsList();
	
	public int editShowStatus(int gid);
	
	public int editBuyStatus(int gid);

	public Goods getOneGoods(int gid);

	public List<Goods> searchGoods(String keyWord);

	public Goods seeOneGoods(int gid);

	public List<Goods> getGoodsByType(int tid);
}
