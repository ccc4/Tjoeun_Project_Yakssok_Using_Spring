package com.yakssok.service.board;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import com.yakssok.dao.board.BoardShareDAO;
import com.yakssok.model.board.Board;


@Service
public class BoardShareService {
	
	private static final int ONE_PAGE = 5;
	private static final int ONE_SECTION = 5;
	
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
	
	public Board view(int b_idx) {
		return dao.view(b_idx);
	}
	
}
