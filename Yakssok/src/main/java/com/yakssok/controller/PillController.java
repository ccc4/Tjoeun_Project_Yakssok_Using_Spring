package com.yakssok.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ser.std.StdKeySerializers.Default;
import com.yakssok.model.*;
import com.yakssok.service.PillService;

@Controller
@RequestMapping("/pill")
public class PillController {
	
	@ModelAttribute("realPath")
	private String realPath(HttpServletRequest request) {
		return request.getRealPath("WEB-INF/resources/pill/img");
	}
	
	private static final String CHECK_RESULT = "check/pill";
	
	
	@Autowired
	private PillService service;
	
	
	
	
	
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model, HttpSession session, 
			@RequestParam(name="page", defaultValue="1", required=false) int page, 
			@RequestParam(name="type", required=false) String type, 
			@RequestParam(name="keyword", required=false) String keyword) {
		
		int m_idx = 0;
		
		// 로그인 여부 판단
		Member loginMember = (Member) session.getAttribute("loginMember");
		if(loginMember != null) {
			m_idx = loginMember.getM_idx();
		}
		
		P_paging result = service.list(m_idx, page, type, "%" + keyword + "%");

		// 타입이 존재하고 result 도 null 이 아니면 타입과 키워드를 지니게 한다.
		if(type != null && result != null) {
			result.setType(type);
			result.setKeyword(keyword);
		}
		
		model.addAttribute("p", result);
		return "pill/list";
	}
	
	@RequestMapping(value="/add_company", method=RequestMethod.GET)
	public String add_company() {
		return "pill/add_company";
	}
	@RequestMapping(value="/add_company", method=RequestMethod.POST)
	public String add_company(Model model, P_company p_company) {
		model.addAttribute("add_company", service.add_company(p_company));
		return CHECK_RESULT;
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String add(Model model) {
		
		Map<String, List<String>> map = service.getDetail_2();
		model.addAttribute("map", map);
		model.addAttribute("companyNames", service.getCompanyNames());
		
		return "pill/add";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(Model model, 
			PillFormData pillFormData, P_effect p_effect, P_detail_1 p_detail_1, Pill pill, 
			@ModelAttribute("realPath") String realPath ) {

		int result = 0;
		
		// 회사 이름으로 idx 값 받아오기
		int p_company_idx = service.getCompany_idx(pillFormData.getCompany_name());
		if(p_company_idx == 0) {
			model.addAttribute("pill", 0);
			return CHECK_RESULT;
		} 
		
		// effect 저장 후 해당 필드의 idx 값 받아오기
		p_effect.setMain(p_effect.getMain().replace("\r\n", "<br>"));
		p_effect.setEtc(p_effect.getEtc().replace("\r\n", "<br>"));
		result = service.add_p_effect(p_effect);
		if(result != 1) {
			model.addAttribute("pill", 0);
			return CHECK_RESULT;
		}
		int p_effect_idx = p_effect.getP_effect_idx();
		
		// detail_1 저장 후 해당 필드의 idx 값 받아오기
		result = service.add_p_detail_1(p_detail_1);
		if(result != 1) {
			model.addAttribute("pill", 0);
			return CHECK_RESULT;
		}
		int p_detail_1_idx = p_detail_1.getP_detail_1_idx();
		
		// detail_2 저장 후 해당 필드의 idx 값 받아오기
		P_detail_2 p_detail_2 = new P_detail_2();
		
		if(pillFormData.getDont() != null) {
			String str = "";
			for(String i : pillFormData.getDont()) {
				str += i + " ";
			}
			p_detail_2.setP_dont_idx(str);
		}
		if(pillFormData.getSaveHow() != null) {
			String str = "";
			for(String i : pillFormData.getSaveHow()) {
				str += i + " ";
			}
			p_detail_2.setP_saveHow_idx(str);
		}
		if(pillFormData.getSideEffect() != null) {
			String str = "";
			for(String i : pillFormData.getSideEffect()) {
				str += i + " ";
			}
			p_detail_2.setP_sideEffect_idx(str);
		}
		if(pillFormData.getUseHow() != null) {
			String str = "";
			for(String i : pillFormData.getUseHow()) {
				str += i + " ";
			}
			p_detail_2.setP_useHow_idx(str);
		}
		if(pillFormData.getFood() != null) {
			String str = "";
			for(String i : pillFormData.getFood()) {
				str += i + " ";
			}
			p_detail_2.setP_food_idx(str);
		}
		if(pillFormData.getForm() != null) {
			String str = "";
			for(String i : pillFormData.getForm()) {
				str += i + " ";
			}
			p_detail_2.setP_form_idx(str);
		}
		if(pillFormData.getCaution() != null) {
			String str = "";
			for(String i : pillFormData.getCaution()) {
				str += i + " ";
			}
			p_detail_2.setP_caution_idx(str);
		}
		result = service.add_p_detail_2(p_detail_2);
		if(result != 1) {
			model.addAttribute("pill", 0);
			return CHECK_RESULT;
		}
		int p_detail_2_idx = p_detail_2.getP_detail_2_idx();
		
		
		// 이미지 저장
		pillFormData.saveImg(realPath);
		String imgPath = pillFormData.getFile().getOriginalFilename();
		
		// 약품 정보 저장
		pill.setImgPath(imgPath);
		pill.setP_effect_idx(p_effect_idx);
		pill.setP_company_idx(p_company_idx);
		pill.setP_detail_1_idx(p_detail_1_idx);
		pill.setP_detail_2_idx(p_detail_2_idx);
		
		result = service.add_pill(pill);
		if(result != 1) {
			model.addAttribute("pill", 0);
			return CHECK_RESULT;
		}
		int p_idx = pill.getP_idx();
		
		
		// 성분/함량 저장
		P_ingredient p_ingredient = new P_ingredient();
		p_ingredient.setP_idx(p_idx);
		p_ingredient.setEng(pillFormData.getIngredient_eng_1());
		p_ingredient.setKor(pillFormData.getIngredient_kor_1());
		p_ingredient.setContent(pillFormData.getIngredient_content_1());
		result = service.add_p_ingredient(p_ingredient);
		if(result != 1) {
			model.addAttribute("pill", 0);
			return CHECK_RESULT;
		}
		
		if(!pillFormData.getIngredient_eng_2().trim().isEmpty()) {
			P_ingredient p_ingredient2 = new P_ingredient();
			p_ingredient2.setP_idx(p_idx);
			p_ingredient2.setEng(pillFormData.getIngredient_eng_2());
			p_ingredient2.setKor(pillFormData.getIngredient_kor_2());
			p_ingredient2.setContent(pillFormData.getIngredient_content_2());
			result = service.add_p_ingredient(p_ingredient2);
			if(result != 1) {
				model.addAttribute("pill", 0);
				return CHECK_RESULT;
			}
		}
		if(!pillFormData.getIngredient_eng_3().trim().isEmpty()) {
			P_ingredient p_ingredient3 = new P_ingredient();
			p_ingredient3.setP_idx(p_idx);
			p_ingredient3.setEng(pillFormData.getIngredient_eng_3());
			p_ingredient3.setKor(pillFormData.getIngredient_kor_3());
			p_ingredient3.setContent(pillFormData.getIngredient_content_3());
			result = service.add_p_ingredient(p_ingredient3);
			if(result != 1) {
				model.addAttribute("pill", 0);
				return CHECK_RESULT;
			}
		}
		
		
		
		
		
		model.addAttribute("pill", 1);
		return CHECK_RESULT;
	}
	
}
