package com.shm.beans;

/**
 * Admin
 * @author Administrator
 *
 */
public class Admin {
	private int aId;		//管理员ID
	private String aName;	//管理员名称
	private String aPwd;	//密码
	
	public int getAId() {
		return aId;
	}
	public void setAId(int aId) {
		this.aId = aId;
	}
	public String getAName() {
		return aName;
	}
	public void setAName(String aName) {
		this.aName = aName;
	}
	public String getAPwd() {
		return aPwd;
	}
	public void setAPwd(String aPwd) {
		this.aPwd = aPwd;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + aId;
		result = prime * result + ((aName == null) ? 0 : aName.hashCode());
		result = prime * result + ((aPwd == null) ? 0 : aPwd.hashCode());
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
		Admin other = (Admin) obj;
		if (aId != other.aId)
			return false;
		if (aName == null) {
			if (other.aName != null)
				return false;
		} else if (!aName.equals(other.aName))
			return false;
		if (aPwd == null) {
			if (other.aPwd != null)
				return false;
		} else if (!aPwd.equals(other.aPwd))
			return false;
		return true;
	}
	public Admin(int aId, String aName, String aPwd) {
		super();
		this.aId = aId;
		this.aName = aName;
		this.aPwd = aPwd;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Admin [aId=" + aId + ", aName=" + aName + ", aPwd=" + aPwd + "]";
	}
	
}
