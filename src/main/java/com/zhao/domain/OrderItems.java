package com.zhao.domain;

public class OrderItems {
	private String oid;
	private Integer gid;
	private Integer buynum;
	private Goods goods;
	
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public Integer getBuynum() {
		return buynum;
	}
	public void setBuynum(Integer buynum) {
		this.buynum = buynum;
	}
	

}
