package com.yakssok.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

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
	
	//전체 글 목록
	@RequestMapping(value="/share", method = RequestMethod.GET)
	public String list(Model model) {
		List<Board> board = service.allList();

		model.addAttribute("list", board);
		
		return "/board/share/list";
	}
	
	//글작성
	@RequestMapping(value = "/share/write", method =RequestMethod.GET)
	public String write() {
		return "/board/share/write";
	}
	
	@RequestMapping(value="/share/write", method = RequestMethod.POST)
	public String write(Model model, Board inputBoard,
						@ModelAttribute("loginMember") Member loginMember) {
		//제목이 null이거나 내용이 null 이면 실패
		
		int result = 0;
		
		if(inputBoard.getTitle() == null || inputBoard.getContents() == null) {
			model.addAttribute("write",result);
		}else {
			inputBoard.setM_idx(loginMember.getM_idx());
			service.write(inputBoard);
			model.addAttribute("write",1);
		}
		return CHECK_RESULT;
	}
	@RequestMapping(value ="/share/view/{b_idx}", method = RequestMethod.GET)
	public String view(Model model, @PathVariable int b_idx) {
		
		model.addAttribute("result",service.view(b_idx));
		
		return "board/share/view";
	}
}












