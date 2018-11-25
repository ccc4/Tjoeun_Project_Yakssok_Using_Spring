package com.yakssok.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yakssok.service.BoardNoticeService;

@Controller
@SessionAttributes("loginMember")
public class MainController {
	
	@Autowired
	private BoardNoticeService b_notice_service;
	
	
	
	@RequestMapping(value="/ ", method=RequestMethod.GET)
	public String main(Model model) {
		model.addAttribute("bNotice", b_notice_service.main());
		
		return "index";
	}
	
}
