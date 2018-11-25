package com.yakssok.model;

public class Search_helper {
	private int p1;
	private int p2;
	private String option;
	private String keyword;
	
	public Search_helper(String option, String keyword) {
		this.option = option;
		this.keyword = keyword;
	}

	public Search_helper(int p1, int p2) {
		this.p1 = p1;
		this.p2 = p2;
	}

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

	public int getP1() {
		return p1;
	}
	public void setP1(int p1) {
		this.p1 = p1;
	}
	public int getP2() {
		return p2;
	}
	public void setP2(int p2) {
		this.p2 = p2;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
}
