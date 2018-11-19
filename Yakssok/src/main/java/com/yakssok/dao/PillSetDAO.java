package com.yakssok.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class PillSetDAO {
	
	private String strNameSpace = "PillSetMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int test1(String value) {
		return sqlSession.insert(strNameSpace + ".test1", value);
	}
	
	public int test2(String value) {
		return sqlSession.insert(strNameSpace + ".test2", value);
	}
	
	public int test3(String value) {
		return sqlSession.insert(strNameSpace + ".test3", value);
	}
	
	public int test4(String value) {
		return sqlSession.insert(strNameSpace + ".test4", value);
	}
	
	public int test5(String value) {
		return sqlSession.insert(strNameSpace + ".test5", value);
	}
	
	public int test6(String value) {
		return sqlSession.insert(strNameSpace + ".test6", value);
	}
	
	public int test7(String value) {
		return sqlSession.insert(strNameSpace + ".test7", value);
	}
	
}
