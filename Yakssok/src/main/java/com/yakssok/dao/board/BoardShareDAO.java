package com.yakssok.dao.board;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.yakssok.model.Search_helper;
import com.yakssok.model.board.Board;

@Repository
public class BoardShareDAO {
	
	private String strNameSpace = "BoardShareMapper";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int write(Board board) {
		return sqlSession.insert(strNameSpace + ".write", board);
	}
	
	public int all_count(Search_helper search_helper) {
		return sqlSession.selectOne(strNameSpace + ".all_count", search_helper);
	}
	
	public List<Board> all_list(Search_helper search_helper) {
		return sqlSession.selectList(strNameSpace + ".all_list", search_helper);
	}
	
	public int read_cnt_plus(int b_idx) {
		return sqlSession.update(strNameSpace + ".read_cnt_plus", b_idx);
	}
	
	public Board view(int b_idx) {
		return sqlSession.selectOne(strNameSpace + ".view", b_idx);
	}
	
	public int modify(Board board) {
		return sqlSession.update(strNameSpace + ".modify", board);
	}
	
	public int delete(int b_idx) {
		return sqlSession.update(strNameSpace + ".delete", b_idx);
	}
	
	
	
	public List<Board> main() {
		return sqlSession.selectList(strNameSpace + ".main");
	}
	
}
