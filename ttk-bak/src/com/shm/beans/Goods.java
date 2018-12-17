package com.shm.beans;

import java.util.Date;

/**
 * 商品信息
 * @author Administrator
 *
 */
public class Goods {
	private int gid;			//商品ID
	private int tid;			//分类ID
	private int userId;			//发表人
	private String gsTitle;		//商品标题
	private double price;		//原价
	private double discount;	//二手价
	private String color;		//成色
	private String gsIntro;		//商品简介
	private String deal;		//交易方式
	private Date pTime;			//发布时间
	private String imgUrl;		//图片路径
	private boolean show_status;//审核状态
	private boolean buy_status;	//售出状态	
	private String temp1;
	private String temp2;
	private String temp3;
	private String temp4;
	
	
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGsTitle() {
		return gsTitle;
	}
	public void setGsTitle(String gsTitle) {
		this.gsTitle = gsTitle;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getGsIntro() {
		return gsIntro;
	}
	public void setGsIntro(String gsIntro) {
		this.gsIntro = gsIntro;
	}
	public String getDeal() {
		return deal;
	}
	public void setDeal(String deal) {
		this.deal = deal;
	}
	public Date getpTime() {
		return pTime;
	}
	public void setpTime(Date pTime) {
		this.pTime = pTime;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public boolean isShow_status() {
		return show_status;
	}
	public void setShow_status(boolean show_status) {
		this.show_status = show_status;
	}
	public boolean isBuy_status() {
		return buy_status;
	}
	public void setBuy_status(boolean buy_status) {
		this.buy_status = buy_status;
	}
	public String getTemp1() {
		return temp1;
	}
	public void setTemp1(String temp1) {
		this.temp1 = temp1;
	}
	public String getTemp2() {
		return temp2;
	}
	public void setTemp2(String temp2) {
		this.temp2 = temp2;
	}
	public String getTemp3() {
		return temp3;
	}
	public void setTemp3(String temp3) {
		this.temp3 = temp3;
	}
	public String getTemp4() {
		return temp4;
	}
	public void setTemp4(String temp4) {
		this.temp4 = temp4;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (buy_status ? 1231 : 1237);
		result = prime * result + ((color == null) ? 0 : color.hashCode());
		result = prime * result + ((deal == null) ? 0 : deal.hashCode());
		long temp;
		temp = Double.doubleToLongBits(discount);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((gsIntro == null) ? 0 : gsIntro.hashCode());
		result = prime * result + ((gsTitle == null) ? 0 : gsTitle.hashCode());
		result = prime * result + gid;
		result = prime * result + ((imgUrl == null) ? 0 : imgUrl.hashCode());
		result = prime * result + ((pTime == null) ? 0 : pTime.hashCode());
		temp = Double.doubleToLongBits(price);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + (show_status ? 1231 : 1237);
		result = prime * result + ((temp1 == null) ? 0 : temp1.hashCode());
		result = prime * result + ((temp2 == null) ? 0 : temp2.hashCode());
		result = prime * result + ((temp3 == null) ? 0 : temp3.hashCode());
		result = prime * result + ((temp4 == null) ? 0 : temp4.hashCode());
		result = prime * result + tid;
		result = prime * result + userId;
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
		Goods other = (Goods) obj;
		if (buy_status != other.buy_status)
			return false;
		if (color == null) {
			if (other.color != null)
				return false;
		} else if (!color.equals(other.color))
			return false;
		if (deal == null) {
			if (other.deal != null)
				return false;
		} else if (!deal.equals(other.deal))
			return false;
		if (Double.doubleToLongBits(discount) != Double.doubleToLongBits(other.discount))
			return false;
		if (gsIntro == null) {
			if (other.gsIntro != null)
				return false;
		} else if (!gsIntro.equals(other.gsIntro))
			return false;
		if (gsTitle == null) {
			if (other.gsTitle != null)
				return false;
		} else if (!gsTitle.equals(other.gsTitle))
			return false;
		if (gid != other.gid)
			return false;
		if (imgUrl == null) {
			if (other.imgUrl != null)
				return false;
		} else if (!imgUrl.equals(other.imgUrl))
			return false;
		if (pTime == null) {
			if (other.pTime != null)
				return false;
		} else if (!pTime.equals(other.pTime))
			return false;
		if (Double.doubleToLongBits(price) != Double.doubleToLongBits(other.price))
			return false;
		if (show_status != other.show_status)
			return false;
		if (temp1 == null) {
			if (other.temp1 != null)
				return false;
		} else if (!temp1.equals(other.temp1))
			return false;
		if (temp2 == null) {
			if (other.temp2 != null)
				return false;
		} else if (!temp2.equals(other.temp2))
			return false;
		if (temp3 == null) {
			if (other.temp3 != null)
				return false;
		} else if (!temp3.equals(other.temp3))
			return false;
		if (temp4 == null) {
			if (other.temp4 != null)
				return false;
		} else if (!temp4.equals(other.temp4))
			return false;
		if (tid != other.tid)
			return false;
		if (userId != other.userId)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Goods [gid=" + gid + ", tid=" + tid + ", userId=" + userId + ", gTitle=" + gsTitle + ", price=" + price
				+ ", discount=" + discount + ", color=" + color + ", gIntro=" + gsIntro + ", deal=" + deal + ", pTime="
				+ pTime + ", imgUrl=" + imgUrl + ", show_status=" + show_status + ", buy_status=" + buy_status
				+ ", temp1=" + temp1 + ", temp2=" + temp2 + ", temp3=" + temp3 + ", temp4=" + temp4 + "]";
	}
	public Goods(int gid, int tid, int userId, String gTitle, double price, double discount, String color,
			String gIntro, String deal, Date pTime, String imgUrl, boolean show_status, boolean buy_status,
			String temp1, String temp2, String temp3, String temp4) {
		super();
		this.gid = gid;
		this.tid = tid;
		this.userId = userId;
		this.gsTitle = gTitle;
		this.price = price;
		this.discount = discount;
		this.color = color;
		this.gsIntro = gIntro;
		this.deal = deal;
		this.pTime = pTime;
		this.imgUrl = imgUrl;
		this.show_status = show_status;
		this.buy_status = buy_status;
		this.temp1 = temp1;
		this.temp2 = temp2;
		this.temp3 = temp3;
		this.temp4 = temp4;
	}
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}

}
