package com.yakssok.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yakssok.service.board.BoardNoticeService;
import com.yakssok.service.drugstore.DrugstoreService;


@Controller
@SessionAttributes("loginMember")
public class MainController {
	
	@Autowired
	private BoardNoticeService b_notice_service;
	
	@Autowired
	private DrugstoreService drugstore_service;
	
	
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main(Model model) {
		
		model.addAttribute("bNotice", b_notice_service.main());
		return "index";
	}
	
//	@RequestMapping(value="/save_crawling", method=RequestMethod.GET)
//	public String save_crawling(Model model) {
//		model.addAttribute("result", drugstore_service.save_crawling());
//		
//		return "check/crawling";
//	}
	
	
}
