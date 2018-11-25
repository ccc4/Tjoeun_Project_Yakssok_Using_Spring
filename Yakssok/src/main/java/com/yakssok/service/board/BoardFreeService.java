package com.yakssok.service.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yakssok.dao.board.BoardFreeDAO;
import com.yakssok.model.board.B_paging;
import com.yakssok.model.board.Board;

@Service
public class BoardFreeService {
	
	private static final int ONE_PAGE = 5;
	private static final int ONE_SECTION = 5;

		@Autowired
		private BoardFreeDAO dao;
		
		public Board view(int b_idx) {
			dao.read_cnt_plus(b_idx);
			return dao.view(b_idx);
		}
		
		public int write(Board board) {
			return dao.write(board);
		}
		
		public int modify(Board board) {
			return dao.modify(board);
		}
		
		public int delete(int b_idx) {
			return dao.delete(b_idx);
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
		
		public List<Board> searchList(int page, String option, String keyword) {
			int allCount = dao.searchCount(option, keyword);
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
			map.put("option", option);
			map.put("keyword", keyword);
			
			return dao.searchList(map);
		}


	
	}
	
	
