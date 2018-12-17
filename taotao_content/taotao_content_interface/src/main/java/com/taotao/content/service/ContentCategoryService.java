package com.taotao.content.service;

import java.util.List;

import taotao_manager_pojo.EasyUITreeNode;
import taotao_manager_pojo.TaotaoResult;

public interface ContentCategoryService {
	List<EasyUITreeNode> getContentCategoryList(long parentId);
	TaotaoResult addContentCategory(long parentId,String name );

}
