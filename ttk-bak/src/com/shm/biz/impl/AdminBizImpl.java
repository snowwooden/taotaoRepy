package com.shm.biz.impl;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.shm.beans.Admin;
import com.shm.biz.IAdminBiz;
import com.shm.dao.IAdminDao;

@Scope("prototype")
@Service("iAdminBiz")
public class AdminBizImpl implements IAdminBiz {
	@Resource(name="iAdminDao")
	public IAdminDao iAdminDao;

	@Override
	public Admin getAdmin(Admin ad) {
		return iAdminDao.getAdmin(ad);
	}

	@Override
	public int editAdminPwd(Admin ad) {
		return iAdminDao.editAdminPwd(ad);
	}

}
