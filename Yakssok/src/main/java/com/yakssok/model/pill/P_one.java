package com.yakssok.model.pill;

import java.util.List;

public class P_one {
	private int p_idx;
	private String name;
	private String imgPath;
	
	private int rating;
	private int total;
	
	private List<P_ingredient> ingredients;
	
	private String effect_main;
	private String effect_etc;
	
	private String company_name;
	private String company_address;
	private String company_tel;
	private String company_fax;
	private String company_url;
	
	private String sg;
	private String route;
	private String look;
	private String packing;
	
	private String p_dont_idx;
	private String p_saveHow_idx;
	private String p_sideEffect_idx;
	private String p_useHow_idx;
	private String p_food_idx;
	private String p_form_idx;
	private String p_caution_idx;
	
	private List<String> detail_2;
	
	public void setRating(int rating) {
		this.rating = rating;
	}
	public List<String> getDetail_2() {
		return detail_2;
	}
	public void setDetail_2(List<String> detail_2) {
		this.detail_2 = detail_2;
	}
	public int getRating() {
		return rating;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public void setRating(double rating) {
		this.rating = (int)rating;
	}
	public List<P_ingredient> getIngredients() {
		return ingredients;
	}
	public void setIngredients(List<P_ingredient> ingredients) {
		this.ingredients = ingredients;
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
	public String getEffect_main() {
		return effect_main;
	}
	public void setEffect_main(String effect_main) {
		this.effect_main = effect_main;
	}
	public String getEffect_etc() {
		return effect_etc;
	}
	public void setEffect_etc(String effect_etc) {
		this.effect_etc = effect_etc;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getCompany_address() {
		return company_address;
	}
	public void setCompany_address(String company_address) {
		this.company_address = company_address;
	}
	public String getCompany_tel() {
		return company_tel;
	}
	public void setCompany_tel(String company_tel) {
		this.company_tel = company_tel;
	}
	public String getCompany_fax() {
		return company_fax;
	}
	public void setCompany_fax(String company_fax) {
		this.company_fax = company_fax;
	}
	public String getCompany_url() {
		return company_url;
	}
	public void setCompany_url(String company_url) {
		this.company_url = company_url;
	}
	public String getSg() {
		return sg;
	}
	public void setSg(String sg) {
		this.sg = sg;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	public String getLook() {
		return look;
	}
	public void setLook(String look) {
		this.look = look;
	}
	public String getPacking() {
		return packing;
	}
	public void setPacking(String packing) {
		this.packing = packing;
	}
	public String getP_dont_idx() {
		return p_dont_idx;
	}
	public void setP_dont_idx(String p_dont_idx) {
		this.p_dont_idx = p_dont_idx;
	}
	public String getP_saveHow_idx() {
		return p_saveHow_idx;
	}
	public void setP_saveHow_idx(String p_saveHow_idx) {
		this.p_saveHow_idx = p_saveHow_idx;
	}
	public String getP_sideEffect_idx() {
		return p_sideEffect_idx;
	}
	public void setP_sideEffect_idx(String p_sideEffect_idx) {
		this.p_sideEffect_idx = p_sideEffect_idx;
	}
	public String getP_useHow_idx() {
		return p_useHow_idx;
	}
	public void setP_useHow_idx(String p_useHow_idx) {
		this.p_useHow_idx = p_useHow_idx;
	}
	public String getP_food_idx() {
		return p_food_idx;
	}
	public void setP_food_idx(String p_food_idx) {
		this.p_food_idx = p_food_idx;
	}
	public String getP_form_idx() {
		return p_form_idx;
	}
	public void setP_form_idx(String p_form_idx) {
		this.p_form_idx = p_form_idx;
	}
	public String getP_caution_idx() {
		return p_caution_idx;
	}
	public void setP_caution_idx(String p_caution_idx) {
		this.p_caution_idx = p_caution_idx;
	}
	
	
}
