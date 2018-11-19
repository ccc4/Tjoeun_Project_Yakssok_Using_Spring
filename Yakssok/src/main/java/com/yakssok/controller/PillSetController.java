package com.yakssok.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yakssok.service.PillSetService;

@Controller
@RequestMapping("/pill")

public class PillSetController {
	
	@Autowired
	private PillSetService service;
	
	@RequestMapping(value="/test1", method=RequestMethod.GET)
	public String test1() {
		for(int i=1;i<=24;i++) {
			int aa = service.test1("/resources/pill/img/caution/caution" + i + ".jpg");
			System.out.println(i);
		}
		return "drugstore/nearby";
	}
	
	@RequestMapping(value="/test2", method=RequestMethod.GET)
	public String test2() {
		for(int i=1;i<=17;i++) {
			int aa = service.test2("/resources/pill/img/dont/dont" + i + ".jpg");
			System.out.println(i);
		}
		return "drugstore/nearby";
	}
	
	@RequestMapping(value="/test3", method=RequestMethod.GET)
	public String test3() {
		for(int i=1;i<=8;i++) {
			int aa = service.test3("/resources/pill/img/food/food" + i + ".jpg");
			System.out.println(i);
		}
		return "drugstore/nearby";
	}
	
	@RequestMapping(value="/test4", method=RequestMethod.GET)
	public String test4() {
		for(int i=1;i<=19;i++) {
			int aa = service.test4("/resources/pill/img/form/form" + i + ".jpg");
			System.out.println(i);
		}
		return "drugstore/nearby";
	}
	
	@RequestMapping(value="/test5", method=RequestMethod.GET)
	public String test5() {
		for(int i=1;i<=7;i++) {
			int aa = service.test5("/resources/pill/img/saveHow/saveHow" + i + ".jpg");
			System.out.println(i);
		}
		return "drugstore/nearby";
	}
	
	@RequestMapping(value="/test6", method=RequestMethod.GET)
	public String test6() {
		for(int i=1;i<=9;i++) {
			int aa = service.test6("/resources/pill/img/sideEffect/sideEffect" + i + ".jpg");
			System.out.println(i);
		}
		return "drugstore/nearby";
	}
	
	@RequestMapping(value="/test7", method=RequestMethod.GET)
	public String test7() {
		for(int i=1;i<=25;i++) {
			int aa = service.test7("/resources/pill/img/useHow/useHow" + i + ".jpg");
			System.out.println(i);
		}
		return "drugstore/nearby";
	}
}
