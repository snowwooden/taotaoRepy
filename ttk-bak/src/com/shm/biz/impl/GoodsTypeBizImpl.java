package com.shm.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.shm.beans.GoodsType;
import com.shm.biz.IGoodsTypeBiz;
import com.shm.dao.IGoodsTypeDao;

@Scope("prototype")
@Service("iGoodsTypeBiz")
public class GoodsTypeBizImpl implements IGoodsTypeBiz {
	@Resource(name="iGoodsTypeDao")
	private IGoodsTypeDao iGoodsTypeDao;
	
	@Override
	public List<GoodsType> getTypeList() {
		return iGoodsTypeDao.getTypeList();
	}

}
