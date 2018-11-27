package com.yakssok.model.pill;

import java.util.List;

public class P_list {
	private int p_idx;
	private String name;
	private String imgPath;
	private String company_name;
	private String effect_main;
	
	private List<P_ingredient> p_ingredients;
	private int rating;
	private int total;
	
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
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
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getEffect_main() {
		return effect_main;
	}
	public void setEffect_main(String effect_main) {
		this.effect_main = effect_main;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = (int)rating;
	}
	public List<P_ingredient> getP_ingredients() {
		return p_ingredients;
	}
	public void setP_ingredients(List<P_ingredient> p_ingredients) {
		this.p_ingredients = p_ingredients;
	}
	
	
	
}
