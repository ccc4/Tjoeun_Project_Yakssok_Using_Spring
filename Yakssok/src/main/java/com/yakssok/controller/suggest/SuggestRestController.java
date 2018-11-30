package com.yakssok.controller.suggest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yakssok.service.suggest.SuggestService;

@RestController
@RequestMapping("/suggest")
public class SuggestRestController {
	
	@Autowired
	private SuggestService service;
	
	@RequestMapping(value="/confirm/{idx}", method=RequestMethod.POST)
	public int confirm(@PathVariable int idx) {
		return service.confirm(idx);
	}
	
}
