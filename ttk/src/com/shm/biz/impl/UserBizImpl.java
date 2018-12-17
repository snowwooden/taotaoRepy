package com.shm.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.shm.beans.User;
import com.shm.biz.IUserBiz;
import com.shm.dao.IUserDao;


@Scope("prototype")
@Service("iUserBiz")
public class UserBizImpl implements IUserBiz {
	@Resource(name="iUserDao")
	private IUserDao iUserDao;
	
	@Override
	public List<User> getUserList() {
		return iUserDao.getUserList();
	}

	@Override
	public User getOneUser(User user) {
		return iUserDao.getOneUser(user);
	}

	@Override
	public int addOneUser(User user) {
		return iUserDao.addOneUser(user);
	}

	public void setiUserDao(IUserDao iUserDao) {
		this.iUserDao = iUserDao;
	}

	@Override
	public int editOneUser(User user) {
		return iUserDao.editOneUser(user);
	}

	@Override
	public User getUserByAccount(String account) {
		return iUserDao.getUserByAccount(account);
	}
}
