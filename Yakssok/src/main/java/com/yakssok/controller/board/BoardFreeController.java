package com.yakssok.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yakssok.model.board.Board;
import com.yakssok.model.member.Member;
import com.yakssok.service.board.BoardFreeService;


@Controller
@RequestMapping("/board")
@SessionAttributes("loginMember")
public class BoardFreeController {
	
	private static final String RESULT_CHECK = "check/board_free";
	 
	@Autowired
	private BoardFreeService service;

	@RequestMapping(value="/free", method=RequestMethod.GET)
	public String list(Model model, 
			@RequestParam(name="page", defaultValue="1", required=false) int page,
			@RequestParam(defaultValue="title") String option,
			@RequestParam(defaultValue="") String keyword)throws Exception {
		
		List<Board> list = service.searchList(page, option, keyword);
		int count = service.searchCount(option, keyword);
		
		Object result = service.list(page, count);

		model.addAttribute("p", result);		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("option", option);
		model.addAttribute("keyword", keyword);
			
		return "board/free/list";
	}
	
	@RequestMapping(value="/free/view/{b_idx}", method=RequestMethod.GET)
	public String view(Model model, @PathVariable int b_idx) {
		
		Object result = service.view(b_idx);
		model.addAttribute("board", result);
		
		return "board/free/view";
	}
	
	@RequestMapping(value="/free/modify", method=RequestMethod.GET)
	public String modify(Model model, @RequestParam int b_idx) {
		
		Board result = service.view(b_idx);
		model.addAttribute("board", result);
		
		return "board/free/modify";
	}
	@RequestMapping(value="/free/modify", method=RequestMethod.POST)
	public String modify(Model model, Board board) {
		
		Object result = service.modify(board);
		model.addAttribute("modify", result);
		model.addAttribute("modifyIdx", board.getB_idx());
		
		return RESULT_CHECK;
	}
	
	@RequestMapping(value="/free/delete", method=RequestMethod.GET)
	public String delete(Model model, @RequestParam int b_idx) {
		
		Object result = service.delete(b_idx);
		model.addAttribute("delete", result);
		
		return RESULT_CHECK;
	}
	
	@RequestMapping(value="/free/write", method=RequestMethod.GET)
	public String write() {		
		return "board/free/write";
	}
	@RequestMapping(value="/free/write", method=RequestMethod.POST)
	public String write(Model model, Board board, 
			@ModelAttribute("loginMember") Member loginMember) {
		
        board.setM_idx(loginMember.getM_idx());		
		model.addAttribute("write", service.write(board));		
		return RESULT_CHECK;
	}
	

}
