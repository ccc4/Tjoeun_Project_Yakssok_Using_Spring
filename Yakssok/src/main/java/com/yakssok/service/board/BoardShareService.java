package com.yakssok.service.board;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yakssok.dao.board.BoardShareDAO;

@Service
public class BoardShareService {
	
	private static final int ONE_PAGE = 5;
	private static final int ONE_SECTION = 5;
	
	@Autowired
	private BoardShareDAO dao;
	
	
	
	
}
