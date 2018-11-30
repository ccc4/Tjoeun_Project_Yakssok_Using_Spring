package com.yakssok.controller.suggest;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yakssok.model.suggest.Suggest;
import com.yakssok.service.suggest.SuggestService;

@Controller
@RequestMapping("/suggest")
public class SuggestController {
	
	@ModelAttribute("realPath")
	private String realPath(HttpServletRequest request) {
		return request.getRealPath("WEB-INF/resources/img/suggest");
	}
	
	private static final String CHECK_RESULT = "check/suggest";
	
	@Autowired
	private SuggestService service;
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public String write(Model model, 
			@RequestParam(defaultValue="0", required=false) int p_idx) {
		if(p_idx != 0) {
			model.addAttribute("p_name", service.get_pill_name(p_idx));
			model.addAttribute("type", "[수정요청]");
		} else {
			model.addAttribute("type", "[등록요청]");
		}
		return "suggest/write";
	}
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String write(Model model, Suggest suggest, 
			@ModelAttribute("realPath") String realPath) {
		if(!suggest.getFile1().isEmpty()) {
			suggest.setImgPath1(service.saveImg(realPath, suggest.getFile1()));
		}
		if(!suggest.getFile2().isEmpty()) {
			suggest.setImgPath2(service.saveImg(realPath, suggest.getFile2()));
		}
		suggest.setContents(suggest.getContents().replace("\r\n", "<br>"));
		model.addAttribute("write", service.write(suggest));
		return CHECK_RESULT;
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model, 
			@RequestParam(defaultValue="1", required=false) int page) {
		model.addAttribute("p", service.all_list(page));
		return "suggest/list";
	}
	
	@RequestMapping(value="/view/{idx}", method=RequestMethod.GET)
	public String view(Model model, @PathVariable int idx) {
		model.addAttribute("result", service.view(idx));
		return "suggest/view";
	}
	
	
}
