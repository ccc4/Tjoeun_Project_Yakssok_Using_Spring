package com.yakssok.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yakssok.model.Drugstore;
import com.yakssok.model.DrugstoreFS;

@Repository
public class DrugstoreDAO {
	
	private String strNameSpace = "DrugstoreMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/*public List<Drugstore> firstList(String first) {
		return sqlSession.selectList(strNameSpace + ".firstList", first);
	}*/
	
	public List<Drugstore> secondList(DrugstoreFS fs) {
		return sqlSession.selectList(strNameSpace + ".secondList", fs);
	}
	
	public List<String> secondValues(String first) {
		return sqlSession.selectList(strNameSpace + ".secondValues", first);
	}
	
	public List<Drugstore> firstList(String second) {
		return sqlSession.selectList(strNameSpace + ".firstList", second);
	}
}
