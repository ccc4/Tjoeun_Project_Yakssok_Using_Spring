package com.yakssok.model.pill;

import java.util.List;

public class P_mOne {
	
	private int p_idx;
	private String name;
	private String imgPath;
	
	private int rating;
	private int total;
	
	private List<P_review> review;
	private int review_all_count;
	
	public int getP_idx() {
		return p_idx;
	}
	public void setP_idx(int p_idx) {
		this.p_idx = p_idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<P_review> getReview() {
		return review;
	}
	public void setReview(List<P_review> review) {
		this.review = review;
	}
	public int getReview_all_count() {
		return review_all_count;
	}
	public void setReview_all_count(int review_all_count) {
		this.review_all_count = review_all_count;
	}
	
	
}
