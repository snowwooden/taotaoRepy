package com.taotao.content.service;

import java.util.List;

import com.taotao.pojo.TbContent;

import taotao_manager_pojo.TaotaoResult;

public interface ContentService {
	TaotaoResult addContent(TbContent content);
	List<TbContent> geyContentByCid(long cid);

}
