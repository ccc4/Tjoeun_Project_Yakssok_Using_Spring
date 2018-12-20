package com.yakssok.controller.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.yakssok.model.board.Board;
import com.yakssok.model.member.Member;
import com.yakssok.service.board.BoardFreeService;
import com.yakssok.service.board.BoardNoticeService;
import com.yakssok.service.board.BoardShareService;

@RestController
@RequestMapping("/mBoard")
@SessionAttributes("loginMember")
public class BoardRestController {
	
	@Autowired
	private BoardNoticeService noticeService;
	@Autowired
	private BoardShareService shareService;
	@Autowired
	private BoardFreeService freeService;
	
	@RequestMapping(value="/{type}", method=RequestMethod.GET, 
			produces="application/text; charset=utf8")
	public String getList(@PathVariable String type) {
		String strJson = "";
		List<Board> list = null;
		
		if(type.equals("notice")) {
			list = noticeService.all_mList();
		} else if(type.equals("share")) {
			list = shareService.all_mList();
		} else if(type.equals("free")) {
			list = freeService.all_mList();
		}
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
		strJson = gson.toJson(list); 
		
		return strJson;
	}
	
	@RequestMapping(value="/{type}/view/{b_idx}", method=RequestMethod.GET, 
			produces="application/text; charset=utf8")
	public String view(@PathVariable String type, @PathVariable int b_idx) {
		System.out.println("view controller 들어옴");
		System.out.println("type: " + type);
		System.out.println("b_idx: " + b_idx);
		String strJson = "";
		Board board = null;
		
		if(type.equals("notice")) {
			board = noticeService.view(b_idx);
		} else if(type.equals("share")) {
			board = shareService.view(b_idx);
		} else if(type.equals("free")) {
			board = freeService.view(b_idx);
		}
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
		strJson = gson.toJson(board); 
		
		return strJson;
	}
	
	@RequestMapping(value="/{type}/write", method=RequestMethod.POST)
	public String write(@PathVariable String type, Board board) {
		
		System.out.println("write 들어옴");
		String strJson = "";
		System.out.println(board.getTitle());
		System.out.println(board.getContents());
		System.out.println(board.getM_idx());
		
		Map<String, Integer> result = new HashMap<>();
		
		if(type.equals("notice")) {
			result.put("result", noticeService.write(board));
		} else if(type.equals("share")) {
			result.put("result", shareService.write(board));
		} else if(type.equals("free")) {
			result.put("result", freeService.write(board));
		}
		Gson gson = new Gson();
		strJson = gson.toJson(result); 
		
		return strJson;
	}

}
