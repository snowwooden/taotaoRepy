package com.shm.dao;

import java.util.List;

import com.shm.beans.User;

public interface IUserDao {
	
	public User getOneUser(User user);

	public int addOneUser(User user);
	
	public int editOneUser(User user);
	
	public List<User> getUserList();

	public User getUserByAccount(String account);
}
