package com.shm.dao;

import java.util.List;

import com.shm.beans.Feedback;

public interface IFeedbackDao {

	public List<Feedback> getFbList();
	
	public int deleteOneFb(int fid);

	public int addOneFb(Feedback feedback);
}
