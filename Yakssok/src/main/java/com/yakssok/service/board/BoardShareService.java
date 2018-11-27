package com.yakssok.service.board;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import com.yakssok.dao.board.BoardShareDAO;
import com.yakssok.model.board.B_paging;
import com.yakssok.model.board.Board;


@Service
public class BoardShareService {
	
	private static final int ONE_PAGE = 10;
	private static final int ONE_SECTION = 10;
	
	@Autowired
	private BoardShareDAO dao;
	
	public List<Board> main(){
		return dao.main();
	}
	
	public int write(Board board) {
		return dao.write(board);
	}
	
	public List<Board> allList(){
		return dao.allList();
	}
	
	@Transactional
	public Board view(int b_idx) {
		dao.read_cnt(b_idx);
		return dao.view(b_idx);
	}
	
	public int delete(int b_idx) {
		return dao.delete(b_idx);
	}
	
	public int edit(Board board) {	
		return dao.edit(board);
	}
	
	public B_paging list(int page) {
		
		int allCount = 0;
		int onePage = ONE_PAGE;
		int oneSection = ONE_SECTION;
		
		int totalPage = allCount/ onePage +(allCount % onePage != 0 ? 1 : 0);
		
		if(page<1 || page > totalPage) {
			return null;
		}
		
		int startPage = (page-1) / oneSection * oneSection;
		if(startPage % oneSection == 0) startPage += 1;
		
		int endPage = startPage + oneSection -1;
		if(endPage>totalPage) endPage = totalPage;
		
		
		List<Board> list = null;
		list = dao.allList();
		if(list == null) {
			return null;
		}
		return new B_paging(list, page, totalPage, startPage, endPage);
	}

	
}
