package com.taotao.service.impl;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.taotao.common.utils.IDUtils;
import com.taotao.mapper.TbItemDescMapper;
import com.taotao.mapper.TbItemMapper;
import com.taotao.pojo.TbItem;
import com.taotao.pojo.TbItemDesc;
import com.taotao.pojo.TbItemExample;
import com.taotao.service.ItemService;

import taotao_manager_pojo.EasyUIDataGridResult;
import taotao_manager_pojo.TaotaoResult;

/**
 * 商品管理服务
 * 
 * @author Administrator
 *
 */
@Service
public class ItemServiceImpl implements ItemService {
	@Autowired
	private TbItemMapper itemMapper;
	@Autowired
	private  TbItemDescMapper itemDescMapper ;

	@Override
	public TbItem gItemByID(long itemId) {
		TbItem item = itemMapper.selectByPrimaryKey(itemId);
		return item;
	}

	@Override
	public EasyUIDataGridResult getItemList(int page, int rows) {
		// //设置分页信息
		// PageHelper.startPage(page, rows);
		// //执行查询
		// TbItemExample example = new TbItemExample();
		// List<TbItem> list = itemMapper.selectByExample(example);
		// //取分页信息
		// PageInfo<TbItem> pageInfo = new PageInfo<>(list);
		//
		// //创建返回结果对象
		// EasyUIDataGridResult result = new EasyUIDataGridResult();
		//
		// result.setRows(list);
		// result.setTotal(pageInfo.getTotal());
		//
		// return result;
		PageHelper.startPage(page, rows);
		TbItemExample example = new TbItemExample();
		List<TbItem> list = (List<TbItem>) itemMapper.selectByExample(example);
		PageInfo<TbItem> pageInfo = new PageInfo<>(list);
		EasyUIDataGridResult result = new EasyUIDataGridResult();
		result.setRows(list);
		result.setTotal((int) pageInfo.getTotal());
		return result;

	}

	@Override
	public TaotaoResult addItem(TbItem item, String desc) {
		// 1、生成商品id
				long itemId = IDUtils.genItemId();
				// 2、补全TbItem对象的属性
				item.setId(itemId);
				//商品状态，1-正常，2-下架，3-删除
				item.setStatus((byte) 1);
				Date date = new Date();
				item.setCreated(date);
				item.setUpdated(date);
				// 3、向商品表插入数据
				itemMapper.insert(item);
				// 4、创建一个TbItemDesc对象
				TbItemDesc itemDesc = new TbItemDesc();
				// 5、补全TbItemDesc的属性
				itemDesc.setItemId(itemId);
				itemDesc.setItemDesc(desc);
				itemDesc.setCreated(date);
				itemDesc.setUpdated(date);
				// 6、向商品描述表插入数据
				itemDescMapper.insert(itemDesc);
				// 7、TaotaoResult.ok()
				return TaotaoResult.ok();
	}

}
