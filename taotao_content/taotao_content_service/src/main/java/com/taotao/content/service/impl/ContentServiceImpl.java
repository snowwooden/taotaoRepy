package com.taotao.content.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taotao.content.service.ContentService;
import com.taotao.mapper.TbContentMapper;
import com.taotao.pojo.TbContent;
import com.taotao.pojo.TbContentExample;
import com.taotao.pojo.TbContentExample.Criteria;

import taotao_manager_pojo.TaotaoResult;

@Service
public class ContentServiceImpl implements ContentService {

	@Autowired
	private TbContentMapper contentMapper;
	
	@Override
	public TaotaoResult addContent(TbContent content) {
		//补全属性
		content.setCreated(new Date());
		content.setUpdated(new Date());
		//插入数据
		contentMapper.insert(content);
		return TaotaoResult.ok();
	}
    /*首页轮播图==大广告位
     * (non-Javadoc)
     * @see com.taotao.content.service.ContentService#geyContentByCid(long)
     */
	@Override
	public List<TbContent> geyContentByCid(long cid) {
		
		//根据cid查询内容列表
				TbContentExample example = new TbContentExample();
				//设置查询条件
				Criteria criteria = example.createCriteria();
				criteria.andCategoryIdEqualTo(cid);
				//执行查询
				List<TbContent> list = contentMapper.selectByExample(example);
				return list;

	}

}
