package com.shm.dao;

import com.shm.beans.Admin;

public interface IAdminDao {
	
	public Admin getAdmin(Admin ad);
	
	public int editAdminPwd(Admin ad);

}
