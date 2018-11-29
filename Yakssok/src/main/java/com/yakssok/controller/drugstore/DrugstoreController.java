package com.yakssok.controller.drugstore;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yakssok.model.drugstore.Drugstore;
import com.yakssok.model.drugstore.Drugstore_helper;
import com.yakssok.service.drugstore.DrugstoreService;

@Controller
@RequestMapping("/drugstore")
public class DrugstoreController {
	
	@Autowired
	private DrugstoreService service;
	
	@RequestMapping(value="/nearby", method=RequestMethod.GET)
	public String nearby(Model model) {
		
		return "drugstore/nearby";
	}
	@RequestMapping(value="/{type}", method=RequestMethod.GET)
	public String type(Model model, @PathVariable String type) {
		model.addAttribute("type", type);
		model.addAttribute("firstValues", service.firstValues(type));
		return "drugstore/wide";
	}
	
	@RequestMapping(value="/{type}/{first}", method=RequestMethod.GET)
	public String Wide(Model model, 
			@PathVariable String type, 
			@PathVariable String first) {
		
		List<String> secondValues = service.secondValues(type, first);
		Map<String, List<Drugstore>> map = service.secondListAll(type, secondValues);
		
		model.addAttribute("type", type);
		model.addAttribute("first", first);
		model.addAttribute("secondValues", secondValues);
		model.addAttribute("map", map);
		
		return "drugstore/view";
	}
	
	@RequestMapping(value="/{type}/{first}/{second}", method=RequestMethod.GET)
	public String view(Model model, 
			@PathVariable String type, 
			@PathVariable String first, 
			@PathVariable String second) {
		
		List<String> secondValues = service.secondValues(type, first);
		
		model.addAttribute("type", type);
		model.addAttribute("first", first);
		model.addAttribute("second", second);
		model.addAttribute("secondValues", secondValues);
		model.addAttribute("list", service.secondListOne(new Drugstore_helper(type, first, second)));
		
		return "drugstore/view";
	}
	
	@RequestMapping(value="/showMap/{type}/{idx}", method=RequestMethod.GET)
	public String showMap(Model model, 
			@PathVariable String type, 
			@PathVariable int idx) {
		
		model.addAttribute("model", service.getModel(new Drugstore_helper(type, idx)));
		
		return "drugstore/showMap";
	}
}
