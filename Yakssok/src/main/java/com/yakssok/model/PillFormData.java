package com.yakssok.model;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

public class PillFormData {
	
	private String company_name;
	private MultipartFile file;
	
	private String[] dont;
	private String[] saveHow;
	private String[] sideEffect;
	private String[] useHow;
	private String[] food;
	private String[] form;
	private String[] caution;
	
	private String ingredient_eng_1;
	private String ingredient_kor_1;
	private String ingredient_content_1;
	private String ingredient_eng_2;
	private String ingredient_kor_2;
	private String ingredient_content_2;
	private String ingredient_eng_3;
	private String ingredient_kor_3;
	private String ingredient_content_3;
	
	
	public void saveImg(String realPath) {
		File dir = new File(realPath);
		
		if(!dir.exists()) {
			dir.mkdirs();
		}
		
		File f = new File(dir, file.getOriginalFilename());
		
		try {
			file.transferTo(f);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getIngredient_eng_1() {
		return ingredient_eng_1;
	}

	public void setIngredient_eng_1(String ingredient_eng_1) {
		this.ingredient_eng_1 = ingredient_eng_1;
	}

	public String getIngredient_kor_1() {
		return ingredient_kor_1;
	}

	public void setIngredient_kor_1(String ingredient_kor_1) {
		this.ingredient_kor_1 = ingredient_kor_1;
	}

	public String getIngredient_content_1() {
		return ingredient_content_1;
	}

	public void setIngredient_content_1(String ingredient_content_1) {
		this.ingredient_content_1 = ingredient_content_1;
	}

	public String getIngredient_eng_2() {
		return ingredient_eng_2;
	}

	public void setIngredient_eng_2(String ingredient_eng_2) {
		this.ingredient_eng_2 = ingredient_eng_2;
	}

	public String getIngredient_kor_2() {
		return ingredient_kor_2;
	}

	public void setIngredient_kor_2(String ingredient_kor_2) {
		this.ingredient_kor_2 = ingredient_kor_2;
	}

	public String getIngredient_content_2() {
		return ingredient_content_2;
	}

	public void setIngredient_content_2(String ingredient_content_2) {
		this.ingredient_content_2 = ingredient_content_2;
	}

	public String getIngredient_eng_3() {
		return ingredient_eng_3;
	}

	public void setIngredient_eng_3(String ingredient_eng_3) {
		this.ingredient_eng_3 = ingredient_eng_3;
	}

	public String getIngredient_kor_3() {
		return ingredient_kor_3;
	}

	public void setIngredient_kor_3(String ingredient_kor_3) {
		this.ingredient_kor_3 = ingredient_kor_3;
	}

	public String getIngredient_content_3() {
		return ingredient_content_3;
	}

	public void setIngredient_content_3(String ingredient_content_3) {
		this.ingredient_content_3 = ingredient_content_3;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String[] getDont() {
		return dont;
	}

	public void setDont(String[] dont) {
		this.dont = dont;
	}

	public String[] getSaveHow() {
		return saveHow;
	}

	public void setSaveHow(String[] saveHow) {
		this.saveHow = saveHow;
	}

	public String[] getSideEffect() {
		return sideEffect;
	}

	public void setSideEffect(String[] sideEffect) {
		this.sideEffect = sideEffect;
	}

	public String[] getUseHow() {
		return useHow;
	}

	public void setUseHow(String[] useHow) {
		this.useHow = useHow;
	}

	public String[] getFood() {
		return food;
	}

	public void setFood(String[] food) {
		this.food = food;
	}

	public String[] getForm() {
		return form;
	}

	public void setForm(String[] form) {
		this.form = form;
	}

	public String[] getCaution() {
		return caution;
	}

	public void setCaution(String[] caution) {
		this.caution = caution;
	}

}
