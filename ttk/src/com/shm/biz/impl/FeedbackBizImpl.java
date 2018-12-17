package com.shm.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.shm.beans.Feedback;
import com.shm.biz.IFeedbackBiz;
import com.shm.dao.IFeedbackDao;

@Scope("prototype")
@Service("iFeedbackBiz")
public class FeedbackBizImpl implements IFeedbackBiz {
	@Resource(name="iFeedbackDao")
	private IFeedbackDao iFeedbackDao;

	@Override
	public List<Feedback> getFbList() {
		return iFeedbackDao.getFbList();
	}

	@Override
	public int deleteOneFb(int fid) {
		return iFeedbackDao.deleteOneFb(fid);
	}

	@Override
	public int addOneFb(Feedback feedback) {
		return iFeedbackDao.addOneFb(feedback);
	}

}
