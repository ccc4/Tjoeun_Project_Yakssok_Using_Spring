package com.yakssok.controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.yakssok.model.member.Member;

@RestController
@RequestMapping("/mobile")
@SessionAttributes("loginMember")
public class MobileController {

	
	@RequestMapping(value="/get_loginMember", method=RequestMethod.POST, 
			produces="application/text; charset=utf8")
	public String get_loginMember(@ModelAttribute("loginMember") Member loginMember ) {
		String strJson = "";
		if(loginMember != null) {
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
			strJson = gson.toJson(loginMember); 
		}
		return strJson;
	}
}
