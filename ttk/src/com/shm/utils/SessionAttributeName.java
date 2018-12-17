package com.shm.utils;

import org.springframework.stereotype.Service;

@Service("sessionAttributeName")
public class SessionAttributeName {
	
	public final static String REGCODE = "regCode";  			//注册验证码
	public final static String CURRENTUSER = "currentUser"; 	//当前登录用户
	public final static String ADMIN = "admin";  				//管理员
	public final static String WORDS = "words"; 				//聊天记录
	public static final String USERLIST = "userList";			//用户列表
	public static final String GOODSINFO = "goodsInfo";			//商品信息
	public static final String GoodsList = "goodsList";			//搜索商品信息

}

