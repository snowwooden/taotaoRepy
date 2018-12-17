package com.taotao.service;

import com.taotao.pojo.TbItem;

import taotao_manager_pojo.EasyUIDataGridResult;
import taotao_manager_pojo.TaotaoResult;

public interface ItemService {
	
   TbItem gItemByID(long itemId);
   EasyUIDataGridResult getItemList(int page ,int rows);
   TaotaoResult addItem(TbItem item,String desc);
}
