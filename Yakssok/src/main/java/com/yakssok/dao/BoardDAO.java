package com.yakssok.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yakssok.model.board.Board;

@Repository
public class BoardDAO {

		@Autowired
		private SqlSessionTemplate sqlSession;
		
		private String strNameSpace = "board.model.Board.BoardMapper";
		
		public int allCount() {
			return sqlSession.selectOne(strNameSpace + ".allCount");
		}
		
		public List<Board> list(Map<String, Integer> map) {
			return sqlSession.selectList(strNameSpace + ".list", map);
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
			return sqlSession.delete(strNameSpace + ".delete", b_idx);
		}
		
		public int write(Board board) {
			return sqlSession.insert(strNameSpace + ".write", board);
		}
		
		public int searchCount(String option, String keyword) {
			
			Map<String, String> map = new HashMap<String, String>();
			map.put("option", option);
			map.put("keyword", keyword);			
			
	 		return sqlSession.selectOne(strNameSpace + ".searchCount", map);
		}
		
		public List<Board> searchList(Map<String, Object> map) {			
			return sqlSession.selectList(strNameSpace + ".searchList", map);
		}


		
	}

