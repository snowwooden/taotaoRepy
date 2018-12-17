package com.shm.biz;

import java.util.List;

import com.shm.beans.User;

public interface IUserBiz {
	
	public User getOneUser(User user);
	
	public User getUserByAccount(String account);

	public int addOneUser(User user);
	
	public int editOneUser(User user);
	
	public List<User> getUserList();
}
