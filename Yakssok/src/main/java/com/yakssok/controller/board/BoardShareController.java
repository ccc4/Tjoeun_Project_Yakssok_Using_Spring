package com.yakssok.controller.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yakssok.model.board.B_paging;
import com.yakssok.model.board.Board;
import com.yakssok.model.member.Member;
import com.yakssok.service.board.BoardShareService;

@Controller
@RequestMapping("/board")
@SessionAttributes("loginMember")
public class BoardShareController {
	
	private static final String CHECK_RESULT = "check/board_share";
	
	@Autowired
	private BoardShareService service;
	
	
	
	
}
