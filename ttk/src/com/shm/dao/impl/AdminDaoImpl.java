package com.shm.dao.impl;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.shm.beans.Admin;
import com.shm.dao.IAdminDao;

@Service("iAdminDao")
public class AdminDaoImpl implements IAdminDao {
	@Resource(name="sqlSession")
	private SqlSession sqlSession;

	@Override
	public Admin getAdmin(Admin ad) {
		return sqlSession.selectOne("getAdmin", ad);
	}

	@Override
	public int editAdminPwd(Admin ad) {
		return sqlSession.update("editAdminPwd", ad);
	}

}
