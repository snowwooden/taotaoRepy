package com.shm.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.shm.beans.Goods;
import com.shm.dao.IGoodsDao;

@Service("iGoodsDao")
public class GoodsDaoImpl implements IGoodsDao {
	
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	@Override
	public Goods seeOneGoods(int gid) {
		return sqlSession.selectOne("seeOneGoods", gid);
	}

	@Override
	public int addOneGoods(Goods goods) {
		return sqlSession.insert("addOneGoods", goods);
	}

	@Override
	public List<Goods> getGoodsList() {
		return sqlSession.selectList("getGoodsList");
	}

	@Override
	public int editShowStatus(int gid) {
		return sqlSession.update("editShowStatus", gid);
	}

	@Override
	public int editBuyStatus(int gid) {
		return sqlSession.update("editBuyStatus", gid);
	}

	@Override
	public Goods getOneGoods(int gid) {
		return sqlSession.selectOne("getOneGoods", gid);
	}

	@Override
	public List<Goods> searchGoods(String keyWord) {
		return sqlSession.selectList("searchGoods", keyWord);
	}

	@Override
	public List<Goods> getGoodsByType(int tid) {
		return sqlSession.selectList("getGoodsByType", tid);
	}

}
