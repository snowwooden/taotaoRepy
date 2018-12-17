package com.shm.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.shm.beans.User;
import com.shm.dao.IUserDao;

@Service("iUserDao")
public class UserDaoImpl implements IUserDao {
	@Resource(name="sqlSession")
	private SqlSession sqlSession;

	@Override
	public User getOneUser(User user) {
		return sqlSession.selectOne("getOneUser", user);
	}
	
	@Override
	public int addOneUser(User user) {
		return sqlSession.insert("addOneUser", user);
	}

	@Override
	public int editOneUser(User user) {
		return sqlSession.update("editOneUser", user);
	}

	@Override
	public List<User> getUserList() {
		return sqlSession.selectList("getUserList");
	}

	@Override
	public User getUserByAccount(String account) {
		return sqlSession.selectOne("getUserByAccount", account);
	}
}
