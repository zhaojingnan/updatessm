package com.zhao.domain;

import java.util.List;

public class Category {
	private Integer id;
	private String type;
	private int pid;
	private List<Category> categoryList;
	
	public List<Category> getCategoryList() {
		return categoryList;
	}
	public void setCategoryList(List<Category> categoryList) {
		this.categoryList = categoryList;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	@Override
	public String toString() {
		return "Category [id=" + id + ", type=" + type + ", pid=" + pid + ", categoryList=" + categoryList + "]";
	}
	
	
	
}
