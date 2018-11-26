package com.yakssok.dao.board;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import com.yakssok.model.board.Board;

@Repository
public class BoardShareDAO {
	
	private String strNameSpace = "BoardShareMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Board> allList(){
		return sqlSession.selectList(strNameSpace+".all_list");
	}
	
	public List<Board> main(){
		return sqlSession.selectList(strNameSpace+".main");
	}
	
	public int write(Board board) {
		return sqlSession.insert(strNameSpace+".write", board);
	}
	
	public Board view(int b_idx) {
		return sqlSession.selectOne(strNameSpace+".view", b_idx);
	}
	
}
