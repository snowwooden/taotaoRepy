package com.taotao.service;

import java.util.List;

import taotao_manager_pojo.EasyUIDataGridResult;
import taotao_manager_pojo.EasyUITreeNode;

public interface ItemCatService {
	
          List<EasyUITreeNode> getItemCatList(long parentId );
}
