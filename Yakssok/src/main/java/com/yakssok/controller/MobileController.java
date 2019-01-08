package com.yakssok.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/mobile")
public class MobileController {

	@RequestMapping(value="/API_Daum_Address", method=RequestMethod.GET)
	public String API_Daum_Address() {
		return "API/API_Daum_Address";
	}
	
	@RequestMapping(value="/API_Daum_Map_Drugstore/{lat}/{lon}", method=RequestMethod.GET)
	public String API_Daum_Map_Drugstore(Model model, @PathVariable double lat, @PathVariable double lon) {
		System.out.println("접속한 위치 : " + lat + ", " + lon);
		model.addAttribute("latitude", lat);
		model.addAttribute("logitude", lon);
		return "API/API_Daum_Map_Drugstore";
	}
	
	@RequestMapping(value="/API_Tawk", method=RequestMethod.GET)
	public String API_Tawk() {
		return "API/API_Tawk";
	}
	
	
	
	
}
