package com.yakssok.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.yakssok.model.Board;
import com.yakssok.model.Member;
import com.yakssok.service.BoardService;


@Controller
@RequestMapping("/board")
@SessionAttributes("loginMember")
public class BoardController {
	
	private static final String RESULT_CHECK = "check/board";
	 
	@Autowired
	private BoardService service;
	
	public void setService(BoardService service) {
		this.service = service;
	}

	@RequestMapping(value="", method=RequestMethod.GET)
	public String list(Model model, 
			@RequestParam(name="page", defaultValue="1", required=false) int page,
			@RequestParam(defaultValue="title") String searchOption,
			@RequestParam(defaultValue="") String keyword)throws Exception {
		
		List<Board> list = service.searchList(page, searchOption, keyword);
		int count = service.searchCount(searchOption, keyword);
		
		Object result = service.list(page, count);

		model.addAttribute("p", result);		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("searchOption", searchOption);
		model.addAttribute("keyword", keyword);
			
		return "board/main";
	}
	
	@RequestMapping(value="/view/{idx}", method=RequestMethod.GET)
	public String view(Model model, @PathVariable int idx) {
		
		Object result = service.view(idx);
		model.addAttribute("board", result);
		
		return "board/view";
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public String modify(Model model, @RequestParam int idx) {
		
		Board result = service.view(idx);
		model.addAttribute("board", result);
		
		return "board/modify";
	}
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modify(Model model, Board board) {
		
		Object result = service.modify(board);
		model.addAttribute("modify", result);
		model.addAttribute("modifyIdx", board.getIdx());
		
		return RESULT_CHECK;
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String delete(Model model, @RequestParam int idx) {
		
		Object result = service.delete(idx);
		model.addAttribute("delete", result);
		
		return RESULT_CHECK;
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String insert() {		
		
		return "board/write";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String insert(
			@ModelAttribute("loginMember")Member loginMember, 
			Model model, Board board) {
				
        board.setM_idx(loginMember.getM_idx());		
		Object result = service.write(board);
		model.addAttribute("write", result);		
		
		return RESULT_CHECK;
	}
	
	

}
