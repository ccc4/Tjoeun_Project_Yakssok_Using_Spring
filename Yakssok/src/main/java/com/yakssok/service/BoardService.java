package com.yakssok.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yakssok.dao.BoardDAO;
import com.yakssok.model.Board;
import com.yakssok.model.Member;
import com.yakssok.model.B_paging;

@Service
public class BoardService {
	
	private static final int ONE_PAGE = 10;
	private static final int ONE_SECTION = 10;

		@Autowired
		private BoardDAO dao;
		
		public void setDao(BoardDAO dao) {
			this.dao = dao;
		}
		
		public Board view(int idx) {
			dao.read_cnt_plus(idx);
			return dao.view(idx);
		}
		
		public int write(Board board) {
			return this.dao.write(board);
		}
		
		public int modify(Board board) {
			return dao.modify(board);
		}
		
		public int delete(int idx) {
			return dao.delete(idx);
		}

		public B_paging list(int page, int count) {
			
			int allCount = count;
			int onePage = ONE_PAGE;
			int oneSection = ONE_SECTION;
			
			int totalPage = allCount / onePage + (allCount % onePage != 0 ? 1 : 0);			
			if(page < 1 || page > totalPage) {
				return null;
			}
				
			int startPage = ((page - 1) / oneSection) * oneSection + 1 ;
			if(startPage % oneSection == 0) startPage += 1;

			int endPage = startPage + oneSection - 1;
			if(endPage > totalPage) endPage = totalPage;

			Map<String, Integer> map = new HashMap<>();
			map.put("p1", (page - 1) * onePage);
			map.put("p2", onePage);
			
			return new B_paging(dao.list(map), page, totalPage, startPage, endPage);
		}
		
		public int searchCount(String searchOption, String keyword) {	
			return dao.searchCount(searchOption, keyword);
			
		}
		
		public List<Board> searchList(int page, String searchOption, String keyword) {
			int allCount = dao.searchCount(searchOption, keyword);
			int onePage = ONE_PAGE;
			int oneSection = ONE_SECTION;
			
			int totalPage = allCount / onePage + (allCount % onePage != 0 ? 1 : 0);			
			if(page < 1 || page > totalPage) {
				return null;
			}
				
			int startPage = ((page - 1) / oneSection) * oneSection + 1 ;
			if(startPage % oneSection == 0) startPage += 1;

			int endPage = startPage + oneSection - 1;
			if(endPage > totalPage) endPage = totalPage;

			Map<String, Object> map = new HashMap<>();
			
			map.put("p1", (page - 1) * onePage);
			map.put("p2", onePage);
			map.put("searchOption", searchOption);
			map.put("keyword", keyword);
			
			return dao.searchList(map);
		}


	
	}
	
	
