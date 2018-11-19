package com.yakssok.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yakssok.model.Pill;
import com.yakssok.service.PillService;

@Controller
@RequestMapping("/pill")
public class PillController {
	
	@Autowired
	private PillService service;
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String add(Model model) {
		
		Map<String, List<String>> map = service.getDetail_2();
		model.addAttribute("map", map);
		
		return "pill/add";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(Model model, Pill pill) {
		
		
		return "pill/add";
	}
	
}
