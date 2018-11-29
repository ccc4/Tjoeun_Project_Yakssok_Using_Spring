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

import com.yakssok.model.board.B_paging;
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
			@RequestParam(defaultValue="", required=false) String keyword)throws Exception {
		
		B_paging result = service.list(page, option, keyword);
		
		// option & keyword 가 존재하고 result 도 null 이 아니면 타입과 키워드를 지니게 한다.(페이징에서 활용)
		if(result != null && option != null && keyword != null) {
			result.setOption(option);
			result.setKeyword(keyword);
		}
		model.addAttribute("p", result);
			
		return "board/free/list";
	}
	
	@RequestMapping(value="/free/view/{b_idx}", method=RequestMethod.GET)
	public String view(Model model, @PathVariable int b_idx) {
		
		Board result = service.view(b_idx);
		result.setContents(result.getContents().replace("\r\n", "<br>"));
		result.setContents(result.getContents().replace("&amp", "&"));
		result.setContents(result.getContents().replace("&lt", "<"));
		result.setContents(result.getContents().replace(" ", "&nbsp"));
		
		model.addAttribute("board", result);
		
		return "board/free/view";
		
	}
	
	@RequestMapping(value="/free/modify/{b_idx}", method=RequestMethod.GET)
	public String modify(Model model, @PathVariable int b_idx) {
		
		Board result = service.view(b_idx);
		model.addAttribute("board", result);
		
		return "board/free/modify";
	}
	@RequestMapping(value="/free/modify", method=RequestMethod.POST)
	public String modify(Model model, Board board) {
		
		Object result = service.modify(board);
		
		//타이틀에 앞뒤로 띄어쓰기가 있으면 자동으로 트림하여 데이터로 보냄.
		board.setTitle(board.getTitle().trim());
		
		model.addAttribute("modify", result);
		model.addAttribute("b_idx", board.getB_idx());
		
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
		
		//타이틀에 앞뒤로 띄어쓰기가 있으면 자동으로 트림하여 데이터로 보냄.
		board.setTitle(board.getTitle().trim());
        board.setM_idx(loginMember.getM_idx());		
		model.addAttribute("write", service.write(board));		
		return RESULT_CHECK;
	}
	

}
