package com.zhao.domain;

import java.util.List;

public class Page {
	//pageNum：当前第几页
	private int pageNum;
	//size：长度 每页显示的条数
	private int size;
	//end:通过总记录数和长度计算获取
	private int end;
	//total：总记录数
	private int total;
	//data：商品列表
	private List<Goods> data;
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<Goods> getData() {
		return data;
	}
	public void setData(List<Goods> data) {
		this.data = data;
	}
	
}
