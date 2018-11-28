package com.yakssok.dao.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yakssok.model.Search_helper;
import com.yakssok.model.board.B_paging;
import com.yakssok.model.board.Board;

@Repository
public class BoardFreeDAO {

		@Autowired
		private SqlSessionTemplate sqlSession;
		
		private String strNameSpace = "BoardFreeMapper";
		
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
		
		public int searchCount(Search_helper search_helper) {	
	 		return sqlSession.selectOne(strNameSpace + ".searchCount", search_helper);
		}
		
		public List<Board> searchList(Search_helper search_helper) {				
			return sqlSession.selectList(strNameSpace + ".searchList", search_helper);
		}

		
	}

