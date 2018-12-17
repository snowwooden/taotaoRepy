package com.shm.biz;

import java.util.List;

import com.shm.beans.Feedback;

public interface IFeedbackBiz {

	public List<Feedback> getFbList();
	
	public int addOneFb(Feedback feedback);
	
	public int deleteOneFb(int fid);
}
