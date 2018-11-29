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
import com.yakssok.service.board.BoardNoticeService;

@Controller
@RequestMapping("/board")
@SessionAttributes("loginMember")
public class BoardNoticeController {
	
//	@ModelAttribute("realPath")
//	private String realPath(HttpServletRequest request) {
//		return request.getRealPath("WEB-INF/resources/board/img/notice");
//	}
//	
//	언젠가 나중에 파일과 이미지 업로드도 가능하게 할 것
	
	private static final String CHECK_RESULT = "check/board_notice";
	
	@Autowired
	private BoardNoticeService service;
	
	
	@RequestMapping(value="/notice", method=RequestMethod.GET)
	public String list(Model model, 
			@RequestParam(name="page", defaultValue="1", required=false) int page, 
			@RequestParam(name="option", required=false) String option, 
			@RequestParam(name="keyword", required=false) String keyword) {
		
		B_paging result = service.list(page, option, keyword);
		
		// option & keyword 가 존재하고 result 도 null 이 아니면 타입과 키워드를 지니게 한다.(페이징에서 활용)
		if(result != null && option != null && keyword != null) {
			result.setOption(option);
			result.setKeyword(keyword);
		}
		model.addAttribute("p", result);
		return "board/notice/list";
	}
	
	@RequestMapping(value="/notice/write", method=RequestMethod.GET)
	public String write() {
		return "board/notice/write";
	}
	@RequestMapping(value="/notice/write", method=RequestMethod.POST)
	public String write(Model model, Board board, 
			@ModelAttribute("loginMember") Member loginMember) {

		/*접속자 m_idx 값 삽입*/
		board.setM_idx(loginMember.getM_idx());
		model.addAttribute("write", service.write(board));
		return CHECK_RESULT;
	}
	
	@RequestMapping(value="/notice/view/{b_idx}", method=RequestMethod.GET)
	public String view(Model model, @PathVariable int b_idx) {
		
		Board result = service.view(b_idx);
		/*글을 쓰거나 수정저장될때 자바형식의\r\n 줄바꿈은 <br> 로 변경
		   나머지도 왼쪽의 것이 오른쪽것으로 변경
		  html에서 띄어쓰기는 &nbsp 으로 인식 하기 때문에 " " 한칸 띄어 쓴 것을 &nbsp 으로 변환 하여 보여준다.*/
		result.setContents(result.getContents().replace("\r\n", "<br>"));
		result.setContents(result.getContents().replace("&amp", "&"));
		result.setContents(result.getContents().replace("&lt", "<"));
		result.setContents(result.getContents().replace(" ", "&nbsp"));	
		
		/*게시글 보기위해 불러오면서 read_cnt 를 +1 해주는데, 안될 경우를 대비해 트랜잭션 사용. 걸리면 catch 로 넘어온다.(아마도?)*/
		try {
			model.addAttribute("result", result);
		} catch (Exception e) {
			model.addAttribute("result", null);
		}
		return "board/notice/view";
	}
	
	@RequestMapping(value="/notice/modify/{b_idx}", method=RequestMethod.GET)
	public String modifyGET(Model model, @PathVariable int b_idx) {
		
		Board result = service.view(b_idx);
		model.addAttribute("result", result);
		return "board/notice/modify";
	}
	@RequestMapping(value="/notice/modify", method=RequestMethod.POST)
	public String modifyPOST(Model model, Board board) {
		
		model.addAttribute("modify", service.modify(board));
		/*수정 성공하면 해당 게시글로 다시 돌아가기 위해 b_idx 전달*/
		model.addAttribute("b_idx", board.getB_idx());
		return CHECK_RESULT;
	}
	
	@RequestMapping(value="/notice/delete/{b_idx}", method=RequestMethod.GET)
	public String delete(Model model, @PathVariable int b_idx) {
		model.addAttribute("delete", service.delete(b_idx));
		return CHECK_RESULT;
	}
	
	
}
