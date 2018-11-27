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
	public String list(Model model, @RequestParam(name="page", defaultValue ="1", required = false) int page) {

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
	
	//글삭제
	@RequestMapping(value = "/share/delete/{b_idx}", method = RequestMethod.GET)
	public String delete(Model model, @PathVariable int b_idx) {
		
		//삭제하시겠습니까 네 => 삭제 아니오=>리턴

		System.out.println(b_idx);

		model.addAttribute("delete",service.delete(b_idx));
		
		return CHECK_RESULT;
	}
	
	//글수정 
	@RequestMapping(value = "/share/edit/{b_idx}", method = RequestMethod.GET)
	public String GetEdit(Model model, @PathVariable int b_idx) {
		Board result = service.view(b_idx);
		model.addAttribute("result", result);
		
		return "/board/share/edit";
	}
	
	@RequestMapping(value = "/share/edit", method = RequestMethod.POST)
	public String PostEdit(Model model, Board board) {
		
			model.addAttribute("edit", service.edit(board));
			System.out.println(board.getTitle());
			
		return CHECK_RESULT;
	}
	
}












