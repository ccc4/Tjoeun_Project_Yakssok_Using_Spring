package com.yakssok.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yakssok.model.P_detail_1;
import com.yakssok.model.P_detail_2;
import com.yakssok.model.P_effect;
import com.yakssok.model.P_ingredient;
import com.yakssok.model.Pill;


@Repository
public class PillDAO {
	
	private String strNameSpace = "PillMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
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
