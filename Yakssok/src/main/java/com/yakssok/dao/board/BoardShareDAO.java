package com.yakssok.dao.board;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class BoardShareDAO {
	
	private String strNameSpace = "BoardShareMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
}
