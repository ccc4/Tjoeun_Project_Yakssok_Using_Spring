package com.yakssok.service.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yakssok.dao.board.BoardFreeDAO;
import com.yakssok.model.Search_helper;
import com.yakssok.model.board.B_paging;
import com.yakssok.model.board.Board;

@Service
public class BoardFreeService {
	
	private static final int ONE_PAGE = 5;
	private static final int ONE_SECTION = 5;

		@Autowired
		private BoardFreeDAO dao;
		
		public List<Board> all_mList() {
			return dao.all_mList();
		}
		
		public List<Board> main (){
			return dao.main();
		}
		
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

		public B_paging list(int page, String option, String keyword) {
			
			int allCount = 0;
			Search_helper search_helper = new Search_helper(option, keyword);
			allCount = dao.searchCount(search_helper);	// null 이든 아니든 해당 정보를 이용해 전체 필드 개수를 구한다.(mapper 참고)
			if(allCount == 0) {	
				return null;	//	해당 결과 존재하지 않을 시 null 리턴
			}
			
			int onePage = ONE_PAGE;
			int oneSection = ONE_SECTION;
			
			int totalPage = allCount / onePage + (allCount % onePage != 0 ? 1 : 0);
			
			if(page < 1 || page > totalPage) {
				return null;	// 잘못된 페이지를 고의로 입력했을 경우 null 리턴
			}
			
			int startPage = (page - 1) / oneSection * oneSection;
			if(startPage % oneSection == 0) startPage += 1;
			
			int endPage = startPage + oneSection - 1;
			if(endPage > totalPage) endPage = totalPage;
			
			search_helper.setP1((page - 1) * onePage);	// limit 에 넣을 값 입력
			search_helper.setP2(onePage);
			List<Board> list = null;
			list = dao.searchList(search_helper);
			if(list == null) {
				return null;	//	해당 결과 존재하지 않을 시 null 리턴
			}
			return new B_paging(list, page, totalPage, startPage, endPage);	// 게시판 구성에 필요한 게시글 리스트, 페이징 통째로 반환
		}
		
		public int searchCount(Search_helper search_helper) {	
			return dao.searchCount(search_helper);
			
		}
		
		public List<Board> searchList(Search_helper search_helper) {			
			return dao.searchList(search_helper);
		}

	
	}
	
	

	
