package com.shm.beans;

/**
 * 商品类别
 * @author Administrator
 *
 */
public class GoodsType {
	private int tid;			//商品分类Id
	private String tType;		//分类名称
	private String tContent;	//详细说明
	
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String gettType() {
		return tType;
	}
	public void settType(String tType) {
		this.tType = tType;
	}
	public String gettContent() {
		return tContent;
	}
	public void settContent(String tContent) {
		this.tContent = tContent;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((tContent == null) ? 0 : tContent.hashCode());
		result = prime * result + tid;
		result = prime * result + ((tType == null) ? 0 : tType.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		GoodsType other = (GoodsType) obj;
		if (tContent == null) {
			if (other.tContent != null)
				return false;
		} else if (!tContent.equals(other.tContent))
			return false;
		if (tid != other.tid)
			return false;
		if (tType == null) {
			if (other.tType != null)
				return false;
		} else if (!tType.equals(other.tType))
			return false;
		return true;
	}
	public GoodsType(int tid, String tType, String tContent) {
		super();
		this.tid = tid;
		this.tType = tType;
		this.tContent = tContent;
	}
	public GoodsType() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "GoodsType [tid=" + tid + ", tType=" + tType + ", tContent=" + tContent + "]";
	}
}
