package com.yakssok.model;

public class Search_helper {
	private int p1;
	private int p2;
	private String option;
	private String keyword;
	private int p_idx;
	private int p_review_idx;
	
	// android pill list option
	private int current_page;
	private String choice;
	
	
	
	
	public Search_helper() {
	}
	
	public Search_helper(String option, String keyword) {
		this.option = option;
		this.keyword = keyword;
	}

	public Search_helper(int p1, int p2) {
		this.p1 = p1;
		this.p2 = p2;
	}
	
	public Search_helper(int p_idx, int p1, int p2) {
		this.p_idx = p_idx;
		this.p1 = p1;
		this.p2 = p2;
	}	
	
	public Search_helper(int current_page, String choice) {
		super();
		this.current_page = current_page;
		this.choice = choice;
	}

	
	
	
	public int getCurrent_page() {
		return current_page;
	}

	public void setCurrent_page(int current_page) {
		this.current_page = current_page;
	}

	public String getChoice() {
		return choice;
	}

	public void setChoice(String choice) {
		this.choice = choice;
	}

	public int getP_review_idx() {
		return p_review_idx;
	}

	public void setP_review_idx(int p_review_idx) {
		this.p_review_idx = p_review_idx;
	}

	public int getP_idx() {
		return p_idx;
	}

	public void setP_idx(int p_idx) {
		this.p_idx = p_idx;
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
