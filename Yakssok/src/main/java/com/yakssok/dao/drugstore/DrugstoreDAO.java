package com.yakssok.dao.drugstore;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yakssok.model.drugstore.Drugstore;
import com.yakssok.model.drugstore.Drugstore_helper;

@Repository
public class DrugstoreDAO {
	
	private String strNameSpace = "DrugstoreMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<String> firstValues(Drugstore_helper drugstore_helper) {
		return sqlSession.selectList(strNameSpace + ".firstValues", drugstore_helper);
	}

	public List<Drugstore> secondListAll(Drugstore_helper drugstore_helper) {
/*		public List<Drugstore> secondListAll(String second) {
*/		return sqlSession.selectList(strNameSpace + ".secondListAll", drugstore_helper);
	}

	public List<String> secondValues(Drugstore_helper drugstore_helper) {
/*		public List<String> secondValues(String first) {
*/		return sqlSession.selectList(strNameSpace + ".secondValues", drugstore_helper);
	}
	
	public List<Drugstore> secondListOne(Drugstore_helper drugstore_helper) {
		return sqlSession.selectList(strNameSpace + ".secondListOne", drugstore_helper);
	}
	
	public Drugstore getModel(Drugstore_helper drugstore_helper) {
/*		public Drugstore getModel(int idx) {
*/		return sqlSession.selectOne(strNameSpace + ".getModel", drugstore_helper);
	}
	
	
	/*public int save_crawling(Drugstore drugstore) {
		return sqlSession.insert(strNameSpace + ".save_crawling", drugstore);
	}*/
	
	
}
