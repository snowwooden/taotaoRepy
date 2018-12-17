package com.shm.beans;

import java.util.Date;

public class Feedback {
	private int fbId;			//反馈编号
	private String fbTitle;		//反馈标题
	private String fbContent;	//反馈内容
	private int userId;			//反馈人ID
	private Date fbTime;		//反馈时间
	

	public int getFbId() {
		return fbId;
	}
	public void setFbId(int fbId) {
		this.fbId = fbId;
	}
	public String getFbTitle() {
		return fbTitle;
	}
	public void setFbTitle(String fbTitle) {
		this.fbTitle = fbTitle;
	}
	public String getFbContent() {
		return fbContent;
	}
	public void setFbContent(String fbContent) {
		this.fbContent = fbContent;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Date getFbTime() {
		return fbTime;
	}
	public void setFbTime(Date fbTime) {
		this.fbTime = fbTime;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((fbContent == null) ? 0 : fbContent.hashCode());
		result = prime * result + fbId;
		result = prime * result + ((fbTime == null) ? 0 : fbTime.hashCode());
		result = prime * result + ((fbTitle == null) ? 0 : fbTitle.hashCode());
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
		Feedback other = (Feedback) obj;
		if (fbContent == null) {
			if (other.fbContent != null)
				return false;
		} else if (!fbContent.equals(other.fbContent))
			return false;
		if (fbId != other.fbId)
			return false;
		if (fbTime == null) {
			if (other.fbTime != null)
				return false;
		} else if (!fbTime.equals(other.fbTime))
			return false;
		if (fbTitle == null) {
			if (other.fbTitle != null)
				return false;
		} else if (!fbTitle.equals(other.fbTitle))
			return false;
		if (userId != other.userId)
			return false;
		return true;
	}
	public Feedback(int fbId, String fbTitle, String fbContent, int userid, Date fbTime) {
		super();
		this.fbId = fbId;
		this.fbTitle = fbTitle;
		this.fbContent = fbContent;
		this.userId = userid;
		this.fbTime = fbTime;
	}
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "FeedBack [fbId=" + fbId + ", fbTitle=" + fbTitle + ", fbContent=" + fbContent + ", userId=" + userId
				+ ", fbTime=" + fbTime + "]";
	}
	
}
