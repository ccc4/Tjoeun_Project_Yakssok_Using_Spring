package com.yakssok.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yakssok.model.P_company;
import com.yakssok.model.P_detail_1;
import com.yakssok.model.P_detail_2;
import com.yakssok.model.P_effect;
import com.yakssok.model.P_ingredient;
import com.yakssok.model.P_list;
import com.yakssok.model.P_rating;
import com.yakssok.model.Pill;
import com.yakssok.model.P_list_helper;
import com.yakssok.model.P_one;


@Repository
public class PillDAO {
	
	private String strNameSpace = "PillMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public P_one one_view(int p_idx) {
		return sqlSession.selectOne(strNameSpace + ".one_view", p_idx);
	}
	
	public String get_p_dont(int p_dont_idx) {
		return sqlSession.selectOne(strNameSpace + ".get_p_dont", p_dont_idx);
	}
	public String get_p_saveHow(int p_saveHow_idx) {
		return sqlSession.selectOne(strNameSpace + ".get_p_saveHow", p_saveHow_idx);
	}
	public String get_p_sideEffect(int p_sideEffect_idx) {
		return sqlSession.selectOne(strNameSpace + ".get_p_sideEffect", p_sideEffect_idx);
	}
	public String get_p_useHow(int p_useHow_idx) {
		return sqlSession.selectOne(strNameSpace + ".get_p_useHow", p_useHow_idx);
	}
	public String get_p_food(int p_food_idx) {
		return sqlSession.selectOne(strNameSpace + ".get_p_food", p_food_idx);
	}
	public String get_p_form(int p_form_idx) {
		return sqlSession.selectOne(strNameSpace + ".get_p_form", p_form_idx);
	}
	public String get_p_caution(int p_caution_idx) {
		return sqlSession.selectOne(strNameSpace + ".get_p_caution", p_caution_idx);
	}
	
	public int all_list_count() {
		return sqlSession.selectOne(strNameSpace + ".all_list_count");
	}
	
	public List<P_list> all_list(P_list_helper p_list_helper) {
		return sqlSession.selectList(strNameSpace + ".all_list", p_list_helper);
	}
	
	public int type_list_count(String type, String keyword) {
		if(type.equals("약품명")) {
			return sqlSession.selectOne(strNameSpace + ".name_list_count", keyword);
		} else if(type.equals("효능/효과")) {
			return sqlSession.selectOne(strNameSpace + ".effect_list_count", keyword);
		} else if(type.equals("회사")) {
			return sqlSession.selectOne(strNameSpace + ".company_list_count", keyword);
		} else if(type.equals("성분(영문/한글)")) {
			return sqlSession.selectOne(strNameSpace + ".ingredient_list_count", keyword);
		} 
		return 0;
	}
	
	public List<P_list> type_list(String type, P_list_helper p_list_helper) {
		if(type.equals("약품명")) {
			return sqlSession.selectList(strNameSpace + ".name_list", p_list_helper);
		} else if(type.equals("효능/효과")) {
			return sqlSession.selectList(strNameSpace + ".effect_list", p_list_helper);
		} else if(type.equals("회사")) {
			return sqlSession.selectList(strNameSpace + ".company_list", p_list_helper);
		} else if(type.equals("성분(영문/한글)")) {
			return sqlSession.selectList(strNameSpace + ".ingredient_list", p_list_helper);
		} 
		return null;
	}
	
	
	
	public List<P_ingredient> pi_list(int p_idx) {
		return sqlSession.selectList(strNameSpace + ".pi_list", p_idx);
	}
	
	public P_rating checkRating(P_rating p_rating) {
		try {
			return sqlSession.selectOne(strNameSpace + ".checkRating", p_rating);
		} catch (Exception e) {
			return null;
		}
	}
	
	public int all_Good(int p_idx) {
		try {
			return sqlSession.selectOne(strNameSpace + ".all_Good", p_idx);
		} catch (Exception e) {
			return 0;
		}
	}
	public int all_Bad(int p_idx) {
		try {
			return sqlSession.selectOne(strNameSpace + ".all_Bad", p_idx);
		} catch (Exception e) {
			return 0;
		}
	}
	
	
	
	public int getCompany_idx(String name) {
		try {
			return sqlSession.selectOne(strNameSpace + ".getCompany_idx", name);
		} catch (Exception e) {
			return 0;
		}
	}
	
	public int add_p_effect(P_effect p_effect) {
		return sqlSession.insert(strNameSpace + ".add_p_effect", p_effect);
	}
	
	public int add_p_detail_1(P_detail_1 p_detail_1) {
		return sqlSession.insert(strNameSpace + ".add_p_detail_1", p_detail_1);
	}
		
	public int add_p_detail_2(P_detail_2 p_detail_2) {
		return sqlSession.insert(strNameSpace + ".add_p_detail_2", p_detail_2);
	}
	
	public int add_pill(Pill pill) {
		return sqlSession.insert(strNameSpace + ".add_pill", pill);
	}
	
	public int add_p_ingredient(P_ingredient p_ingredient) {
		return sqlSession.insert(strNameSpace + ".add_p_ingredient", p_ingredient);
	}
	
	public int add_company(P_company p_company) {
		return sqlSession.insert(strNameSpace + ".add_company", p_company);
	}
		
	
	
	
	public List<String> getCompanyNames() {
		return sqlSession.selectList(strNameSpace + ".getCompanyNames");
	}
	
	public List<String> getDont() {
		return sqlSession.selectList(strNameSpace + ".getDont");
	}
	
	public List<String> getSaveHow() {
		return sqlSession.selectList(strNameSpace + ".getSaveHow");
	}
	
	public List<String> getSideEffect() {
		return sqlSession.selectList(strNameSpace + ".getSideEffect");
	}
	
	public List<String> getUseHow() {
		return sqlSession.selectList(strNameSpace + ".getUseHow");
	}
	
	public List<String> getFood() {
		return sqlSession.selectList(strNameSpace + ".getFood");
	}
	
	public List<String> getForm() {
		return sqlSession.selectList(strNameSpace + ".getForm");
	}
	
	public List<String> getCaution() {
		return sqlSession.selectList(strNameSpace + ".getCaution");
	}
	
}
