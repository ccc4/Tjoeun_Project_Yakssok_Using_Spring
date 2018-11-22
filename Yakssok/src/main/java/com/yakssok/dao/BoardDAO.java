package com.yakssok.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yakssok.model.Board;

@Repository
public class BoardDAO {

		@Autowired
		private SqlSessionTemplate sqlSession;
		
		private String strNameSpace = "board.model.Board.BoardMapper";
		
		public void setSqlSession(SqlSessionTemplate sqlSession) {
			this.sqlSession = sqlSession;
		}
		
		public int allCount() {
			return sqlSession.selectOne(strNameSpace + ".allCount");
		}
		
		public List<Board> list(Map<String, Integer> map) {
			return sqlSession.selectList(strNameSpace + ".list", map);
		}
		
		public int read_cnt_plus(int idx) {
			return sqlSession.update(strNameSpace + ".read_cnt_plus", idx);
		}
		
		public Board view(int idx) {
			return sqlSession.selectOne(strNameSpace + ".view", idx);
		}
		
		public int modify(Board board) {
			return sqlSession.update(strNameSpace + ".modify", board);
		}
		
		public int delete(int idx) {
			return sqlSession.delete(strNameSpace + ".delete", idx);
		}
		
		public int write(Board board) {
			return sqlSession.insert(strNameSpace + ".write", board);
		}
		
		public int searchCount(String searchOption, String keyword) {
			
			Map<String, String> map = new HashMap<String, String>();
			map.put("searchOption", searchOption);
			map.put("keyword", keyword);			
			
	 		return sqlSession.selectOne(strNameSpace + ".searchCount", map);
		}
		
		public List<Board> searchList(Map<String, Object> map) {			
			return sqlSession.selectList(strNameSpace + ".searchList", map);
		}


		
	}

