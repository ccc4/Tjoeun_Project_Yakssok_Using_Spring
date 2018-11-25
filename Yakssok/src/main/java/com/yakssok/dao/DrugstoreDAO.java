package com.yakssok.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yakssok.model.drugstore.Drugstore;
import com.yakssok.model.drugstore.DrugstoreFS;

@Repository
public class DrugstoreDAO {
	
	private String strNameSpace = "DrugstoreMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<String> firstValues() {
		return sqlSession.selectList(strNameSpace + ".firstValues");
	}

	public List<Drugstore> secondListAll(String second) {
		return sqlSession.selectList(strNameSpace + ".secondListAll", second);
	}

	public List<String> secondValues(String first) {
		return sqlSession.selectList(strNameSpace + ".secondValues", first);
	}
	
	public List<Drugstore> secondListOne(DrugstoreFS fs) {
		return sqlSession.selectList(strNameSpace + ".secondListOne", fs);
	}
	
	public Drugstore getModel(int idx) {
		return sqlSession.selectOne(strNameSpace + ".getModel", idx);
	}
	
	
}
