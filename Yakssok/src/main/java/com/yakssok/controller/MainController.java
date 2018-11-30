package com.yakssok.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yakssok.controller.board.BoardFreeController;
import com.yakssok.model.pill.P_list;
import com.yakssok.service.board.BoardFreeService;
import com.yakssok.service.board.BoardNoticeService;
import com.yakssok.service.board.BoardShareService;
import com.yakssok.service.drugstore.DrugstoreService;
import com.yakssok.service.pill.PillService;


@Controller
@SessionAttributes("loginMember")
public class MainController {
	
	@Autowired
	private BoardNoticeService b_notice_service;
	
	@Autowired
	private BoardShareService b_share_service;
	@Autowired
	private BoardFreeService b_free_service;
	
	@Autowired
	private PillService p_service;
	
	
	
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main(Model model) {
		
		Map<String, List<P_list>> map = new HashMap<>();
		map.put("두통", p_service.main_rank("두통"));
		map.put("해열", p_service.main_rank("해열"));
		map.put("소화", p_service.main_rank("소화"));
		map.put("비타민", p_service.main_rank("비타민"));
		model.addAttribute("rank", map);
		model.addAttribute("bNotice", b_notice_service.main());
		model.addAttribute("bShare", b_share_service.main());
		model.addAttribute("bFree",b_free_service.main());
		return "index";
	}
	
//	크롤링 
//	@Autowired
//	private DrugstoreService drugstore_service;
//	@RequestMapping(value="/save_crawling", method=RequestMethod.GET)
//	public String save_crawling(Model model) {
//		model.addAttribute("result", drugstore_service.save_crawling());
//		
//		return "check/crawling";
//	}
	
	@RequestMapping(value="/qna", method=RequestMethod.GET)
	public String qna() {
		return "qna/qna";
	}
	
	@RequestMapping(value="/medList/main", method=RequestMethod.GET)
	public String medList_main() {
		return "medList/main";
	}
	@RequestMapping(value="/medList/cold", method=RequestMethod.GET)
	public String medList_cold() {
		return "medList/cold";
	}
	@RequestMapping(value="/medList/fever", method=RequestMethod.GET)
	public String medList_fever() {
		return "medList/fever";
	}
	@RequestMapping(value="/medList/path", method=RequestMethod.GET)
	public String medList_path() {
		return "medList/path";
	}
	@RequestMapping(value="/medList/peptic", method=RequestMethod.GET)
	public String medList_peptic() {
		return "medList/peptic";
	}
	
	@RequestMapping(value="/firstAid/main", method=RequestMethod.GET)
	public String firstAid_main() {
		return "firstAid/main";
	}
	@RequestMapping(value="/firstAid/heart", method=RequestMethod.GET)
	public String firstAid_heart() {
		return "firstAid/heart";
	}
	@RequestMapping(value="/firstAid/lifetime", method=RequestMethod.GET)
	public String firstAid_lifetime() {
		return "firstAid/lifetime";
	}
	@RequestMapping(value="/firstAid/gido", method=RequestMethod.GET)
	public String firstAid_gido() {
		return "firstAid/gido";
	}
	
}
