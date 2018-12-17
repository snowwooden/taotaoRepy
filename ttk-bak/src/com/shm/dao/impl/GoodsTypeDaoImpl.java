package com.shm.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.shm.beans.GoodsType;
import com.shm.dao.IGoodsTypeDao;

@Service("iGoodsTypeDao")
public class GoodsTypeDaoImpl implements IGoodsTypeDao {
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	@Override
	public List<GoodsType> getTypeList() {
		return sqlSession.selectList("getTypeList");
	}

}
