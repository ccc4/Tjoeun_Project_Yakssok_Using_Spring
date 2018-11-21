package com.yakssok.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yakssok.model.Member;
import com.yakssok.service.MemberService;

@RestController
public class MemberRestController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping(value = "member/checkId/{id}", method=RequestMethod.POST)
    public  int idCheck(Model model, @PathVariable String id) {
		
		int result = service.checkId(id);
		
        return result;
	}
	
        @RequestMapping(value = "member/checkNick/{nickname}", method=RequestMethod.POST)
        public  int nickCheck(Model model, @PathVariable String nickname) {
    		
    		int result = service.checkNick(nickname);
    		
            return result;   
    }	
}
