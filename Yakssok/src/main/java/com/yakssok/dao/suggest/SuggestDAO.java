package com.yakssok.dao.suggest;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yakssok.model.Search_helper;
import com.yakssok.model.suggest.Suggest;


@Repository
public class SuggestDAO {
	
	private String strNameSpace = "SuggestMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int confirm(int idx) {
		return sqlSession.update(strNameSpace + ".confirm", idx);
	}
	
	public Suggest view(int idx) {
		return sqlSession.selectOne(strNameSpace + ".view", idx);
	}
	
	public int all_count() {
		return sqlSession.selectOne(strNameSpace + ".all_count");
	}
	
	public List<Suggest> all_list(Search_helper search_helper) {
		return sqlSession.selectList(strNameSpace + ".all_list", search_helper);
	}
	
	public String get_pill_name(int p_idx) {
		return sqlSession.selectOne(strNameSpace + ".get_pill_name", p_idx);
	}
	
	public int write(Suggest suggest) {
		return sqlSession.insert(strNameSpace + ".write", suggest);
	}
}
