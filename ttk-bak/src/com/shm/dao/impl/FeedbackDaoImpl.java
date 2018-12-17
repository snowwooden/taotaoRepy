package com.shm.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.shm.beans.Feedback;
import com.shm.dao.IFeedbackDao;

@Service("iFeedbackDao")
public class FeedbackDaoImpl implements IFeedbackDao {
	@Resource(name="sqlSession")
	private SqlSession sqlSession;

	@Override
	public List<Feedback> getFbList() {
		return sqlSession.selectList("getFbList");
	}

	@Override
	public int deleteOneFb(int fid) {
		return sqlSession.delete("deleteOneFb", fid);
	}

	@Override
	public int addOneFb(Feedback feedback) {
		return sqlSession.insert("addOneFb", feedback);
	}

}
