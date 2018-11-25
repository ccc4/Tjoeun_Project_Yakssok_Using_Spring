package com.yakssok.model.pill;

import java.util.List;

public class P_paging {
	private List<P_list> list;
	private int page;
	private int totalPage;
	private int startPage;
	private int endPage;
	private String option;
	private String keyword;
	
	public P_paging(List<P_list> list, int page, int totalPage, int startPage, int endPage) {
		this.list = list;
		this.page = page;
		this.totalPage = totalPage;
		this.startPage = startPage;
		this.endPage = endPage;
	}
	
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public List<P_list> getList() {
		return list;
	}
	public void setList(List<P_list> list) {
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
