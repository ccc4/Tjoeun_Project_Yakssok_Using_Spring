package com.yakssok.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yakssok.model.member.Member;
import com.yakssok.service.member.MemberService;

@RestController
public class MemberRestController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping(value = "/member/checkId/{id}", method=RequestMethod.POST)
    public  int idCheck(Model model, @PathVariable String id) {
		int result = service.checkId(id);
        return result;
	}
	
    @RequestMapping(value = "/member/checkNick/{nickname}", method=RequestMethod.POST)
    public  int nickCheck(Model model, @PathVariable String nickname) {
		int result = service.checkNick(nickname);
        return result;   
    }
        
//    @RequestMapping(value="/mId_check", method=RequestMethod.POST)
//    public int mJoin(String id) {
//    	return service.checkId(id);
//    }
//    
//    @RequestMapping(value="/mJoin", method=RequestMethod.POST)
//    public String mJoin(Member member) {
//    	
//    	return 
//    }
}
