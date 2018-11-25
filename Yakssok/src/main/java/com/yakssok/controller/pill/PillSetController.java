package com.yakssok.controller.pill;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yakssok.service.pill.PillSetService;


@Controller
@RequestMapping("/pill")

public class PillSetController {
	
	@Autowired
	private PillSetService service;
	
	// 디비에 약 세부정보 경고 이미지 저장용
	
	
	
	@RequestMapping(value="/test1", method=RequestMethod.GET)
	public String test1() {
		for(int i=1;i<=24;i++) {
			service.test1("/resources/img/pill/info/caution/caution" + i + ".jpg");
		}
		return "drugstore/nearby";
	}
	
	@RequestMapping(value="/test2", method=RequestMethod.GET)
	public String test2() {
		for(int i=1;i<=17;i++) {
			service.test2("/resources/img/pill/info/dont/dont" + i + ".jpg");
		}
		return "drugstore/nearby";
	}
	
	@RequestMapping(value="/test3", method=RequestMethod.GET)
	public String test3() {
		for(int i=1;i<=8;i++) {
			service.test3("/resources/img/pill/info/food/food" + i + ".jpg");
		}
		return "drugstore/nearby";
	}
	
	@RequestMapping(value="/test4", method=RequestMethod.GET)
	public String test4() {
		for(int i=1;i<=19;i++) {
			service.test4("/resources/img/pill/info/form/form" + i + ".jpg");
		}
		return "drugstore/nearby";
	}
	
	@RequestMapping(value="/test5", method=RequestMethod.GET)
	public String test5() {
		for(int i=1;i<=7;i++) {
			service.test5("/resources/img/pill/info/saveHow/saveHow" + i + ".jpg");
		}
		return "drugstore/nearby";
	}
	
	@RequestMapping(value="/test6", method=RequestMethod.GET)
	public String test6() {
		for(int i=1;i<=9;i++) {
			service.test6("/resources/img/pill/info/sideEffect/sideEffect" + i + ".jpg");
		}
		return "drugstore/nearby";
	}
	
	@RequestMapping(value="/test7", method=RequestMethod.GET)
	public String test7() {
		for(int i=1;i<=25;i++) {
			service.test7("/resources/img/pill/info/useHow/useHow" + i + ".jpg");
		}
		return "drugstore/nearby";
	}
}
