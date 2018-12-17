package com.shm.beans;

import java.util.Date;

import com.shm.utils.MD5Encryption;

/**
 * 用户信息
 * @author Administrator
 *
 */
public class User {
	private int userId;			//Id
	private String account;		//账号
	private String pwd;			//密码
	private String callName;	//昵称
	private String realName;	//真实姓名
	private int headImg;		//头像编号（1.2.3.4）
	private String sex;			//性别
	private Date birth;			//生日
	private String dorm;		//宿舍
	private String QQ;			//QQ
	private String tel;			//电话
	private String intro;		//简介
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getCallName() {
		return callName;
	}
	public void setCallName(String callName) {
		this.callName = callName;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBrith() {
		return birth;
	}
	public void setBrith(Date brith) {
		this.birth = brith;
	}
	public String getDorm() {
		return dorm;
	}
	public void setDorm(String dorm) {
		this.dorm = dorm;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String QQ) {
		this.QQ = QQ;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
//		this.pwd = MD5Encryption.createPassword(pwd);
		this.pwd = pwd;
	}
	public int getHeadImg() {
		return headImg;
	}
	public void setHeadImg(int headImg) {
		this.headImg = headImg;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((QQ == null) ? 0 : QQ.hashCode());
		result = prime * result + ((account == null) ? 0 : account.hashCode());
		result = prime * result + ((birth == null) ? 0 : birth.hashCode());
		result = prime * result + ((callName == null) ? 0 : callName.hashCode());
		result = prime * result + ((dorm == null) ? 0 : dorm.hashCode());
		result = prime * result + headImg;
		result = prime * result + ((intro == null) ? 0 : intro.hashCode());
		result = prime * result + ((realName == null) ? 0 : realName.hashCode());
		result = prime * result + ((sex == null) ? 0 : sex.hashCode());
		result = prime * result + ((tel == null) ? 0 : tel.hashCode());
		result = prime * result + ((pwd == null) ? 0 : pwd.hashCode());
		result = prime * result + userId;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (QQ == null) {
			if (other.QQ != null)
				return false;
		} else if (!QQ.equals(other.QQ))
			return false;
		if (account == null) {
			if (other.account != null)
				return false;
		} else if (!account.equals(other.account))
			return false;
		if (birth == null) {
			if (other.birth != null)
				return false;
		} else if (!birth.equals(other.birth))
			return false;
		if (callName == null) {
			if (other.callName != null)
				return false;
		} else if (!callName.equals(other.callName))
			return false;
		if (dorm == null) {
			if (other.dorm != null)
				return false;
		} else if (!dorm.equals(other.dorm))
			return false;
		if (headImg != other.headImg)
			return false;
		if (intro == null) {
			if (other.intro != null)
				return false;
		} else if (!intro.equals(other.intro))
			return false;
		if (realName == null) {
			if (other.realName != null)
				return false;
		} else if (!realName.equals(other.realName))
			return false;
		if (sex == null) {
			if (other.sex != null)
				return false;
		} else if (!sex.equals(other.sex))
			return false;
		if (tel == null) {
			if (other.tel != null)
				return false;
		} else if (!tel.equals(other.tel))
			return false;
		if (pwd == null) {
			if (other.pwd != null)
				return false;
		} else if (!pwd.equals(other.pwd))
			return false;
		if (userId != other.userId)
			return false;
		return true;
	}
	public User(int userId, String account, String uPwd, String callName, String realName, int headImg, String sex,
			Date brith, String dorm, String QQ, String tel, String intro) {
		super();
		this.userId = userId;
		this.account = account;
		this.pwd = uPwd;
		this.callName = callName;
		this.realName = realName;
		this.headImg = headImg;
		this.sex = sex;
		this.birth = brith;
		this.dorm = dorm;
		this.QQ = QQ;
		this.tel = tel;
		this.intro = intro;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", account=" + account + ", pwd=" + pwd + ", callName=" + callName
				+ ", realName=" + realName + ", headImg=" + headImg + ", sex=" + sex + ", brith=" + birth + ", dorm="
				+ dorm + ", QQ=" + QQ + ", tel=" + tel + ", intro=" + intro + "]";
	}
	
}
