package com.yakssok.model.pill;

import java.util.List;

public class P_review_paging {
	private List<P_review> review;
	private int page;
	private int totalPage;
	private int startPage;
	private int endPage;
	
	public P_review_paging(List<P_review> review, int page, int totalPage, int startPage, int endPage) {
		this.review = review;
		this.page = page;
		this.totalPage = totalPage;
		this.startPage = startPage;
		this.endPage = endPage;
	}
	
	public List<P_review> getReview() {
		return review;
	}

	public void setReview(List<P_review> review) {
		this.review = review;
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
