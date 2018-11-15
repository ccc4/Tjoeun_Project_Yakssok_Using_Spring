package com.yakssok.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yakssok.model.Drugstore;
import com.yakssok.model.DrugstoreFS;
import com.yakssok.service.DrugstoreService;

@Controller
@RequestMapping("/drugstore")
public class DrugstoreController {
	
	@Autowired
	private DrugstoreService service;
	
	@RequestMapping(value="/current_loc", method=RequestMethod.GET)
	public String current_loc(Model model) {
		
		return "drugstore/find";
	}
	@RequestMapping(value="/allDay", method=RequestMethod.GET)
	public String allDay(Model model) {
		model.addAttribute("menu", "allDay");
		model.addAttribute("firstValues", service.firstValues());
		return "drugstore/wide";
	}
	@RequestMapping(value="/night", method=RequestMethod.GET)
	public String night(Model model) {
		model.addAttribute("menu", "night");
		return "drugstore/wide";
	}
	
	@RequestMapping(value="/allDay/{first}", method=RequestMethod.GET)
	public String allDayWide(Model model, @PathVariable String first) {
		
		List<String> secondValues = service.secondValues(first);
		Map<String, List<Drugstore>> map = service.secondListAll(secondValues);
		
		model.addAttribute("menu", "allDay");
		model.addAttribute("first", first);
		model.addAttribute("secondValues", secondValues);
		model.addAttribute("map", map);
		/*model.addAttribute("list", service.firstList(first));*/
		
		return "drugstore/view";
	}
	
	@RequestMapping(value="/allDay/{first}/{second}", method=RequestMethod.GET)
	public String allDayView(Model model, @PathVariable String first, @PathVariable String second) {
		DrugstoreFS fs = new DrugstoreFS();
		fs.setFirst(first);
		fs.setSecond(second);
		
		List<String> secondValues = service.secondValues(first);
		
		model.addAttribute("menu", "allDay");
		model.addAttribute("first", first);
		model.addAttribute("second", second);
		model.addAttribute("secondValues", secondValues);
		model.addAttribute("list", service.secondListOne(fs));
		
		return "drugstore/view";
	}
	
	@RequestMapping(value="/showMap/{address}", method=RequestMethod.GET)
	public String showMap(Model model, @PathVariable String address) {
		
		model.addAttribute("address", address);
		
		return "drugstore/showMap";
	}
}
