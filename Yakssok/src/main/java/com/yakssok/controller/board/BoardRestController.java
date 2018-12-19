package com.yakssok.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.yakssok.model.board.Board;
import com.yakssok.service.board.BoardFreeService;
import com.yakssok.service.board.BoardNoticeService;
import com.yakssok.service.board.BoardShareService;

@RestController
@RequestMapping("/mBoard")
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
		List<Board> list;
		
		if(type.equals("notice")) {
			list = noticeService.all_mList();
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
			strJson = gson.toJson(list); 
		} else if(type.equals("share")) {
			list = shareService.all_mList();
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
			strJson = gson.toJson(list); 
		} else if(type.equals("free")) {
			list = freeService.all_mList();
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
			strJson = gson.toJson(list); 
		}
		
		return strJson;
	}
	
	@RequestMapping(value="/{type}/view/{b_idx}", method=RequestMethod.GET, 
			produces="application/text; charset=utf8")
	public String view(@PathVariable String type, @PathVariable int b_idx) {
		System.out.println("view controller 들어옴");
		System.out.println("type: " + type);
		System.out.println("b_idx: " + b_idx);
		String strJson = "";
		Board board;
		
		if(type.equals("notice")) {
			board = noticeService.view(b_idx);
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
			strJson = gson.toJson(board); 
		} else if(type.equals("share")) {
			board = shareService.view(b_idx);
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
			strJson = gson.toJson(board); 
		} else if(type.equals("free")) {
			board = freeService.view(b_idx);
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
			strJson = gson.toJson(board); 
		}
		
		return strJson;
	}
	
	

}
