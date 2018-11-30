package com.yakssok.model.suggest;

import java.util.List;

public class S_paging {
	private List<Suggest> list;
	private int page;
	private int totalPage;
	private int startPage;
	private int endPage;
	
	public S_paging(List<Suggest> list, int page, int totalPage, int startPage, int endPage) {
		this.list = list;
		this.page = page;
		this.totalPage = totalPage;
		this.startPage = startPage;
		this.endPage = endPage;
	}
	public List<Suggest> getList() {
		return list;
	}
	public void setList(List<Suggest> list) {
		this.list = list;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
	
}
