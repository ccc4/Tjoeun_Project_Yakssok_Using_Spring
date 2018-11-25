package com.yakssok.controller.pill;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yakssok.model.member.Member;
import com.yakssok.model.pill.P_rating;
import com.yakssok.service.pill.PillService;

@RestController
@RequestMapping("/pill")
@SessionAttributes("loginMember")
public class PillRestController {
	
	@Autowired
	private PillService service;
	
	@RequestMapping(value="/good", method=RequestMethod.POST)
	public int good(@RequestParam int p_idx, @ModelAttribute("loginMember") Member loginMember) {
		
		int check = 0;	// 결과 확인용
		//	1-> 데이터없어서 good 입력
		//	2-> 이미 good이여서 delete 취소
		//	3-> bad 여서 update 갱신
		int m_idx = loginMember.getM_idx();
		P_rating p_rating = new P_rating(p_idx, m_idx);
		
		String exist = service.checkRating(p_idx, m_idx);
		if(exist == null) {
			p_rating.setGood(1);
			System.out.println("bad 비어있는 값 체크: " + p_rating.getBad());
			check = service.addRating(p_rating);
			if(check == 1) {
				return 1;
			}
		} else if(exist.equals("good")) {
			check = service.deleteRating(p_rating);
			if(check == 1) {
				return 2;
			}
		} else if(exist.equals("bad")) {
			p_rating.setBad(1);
			System.out.println("good 비어있는 값 체크: " + p_rating.getGood());
			check = service.updateRating(p_rating);
			if(check == 1) {
				return 3;
			}
		}
		return 0;
	}
	
	
}
