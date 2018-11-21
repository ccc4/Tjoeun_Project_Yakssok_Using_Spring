package com.yakssok.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yakssok.dao.PillDAO;
import com.yakssok.model.P_company;
import com.yakssok.model.P_detail_1;
import com.yakssok.model.P_detail_2;
import com.yakssok.model.P_effect;
import com.yakssok.model.P_ingredient;
import com.yakssok.model.P_list;
import com.yakssok.model.P_rating;
import com.yakssok.model.Pill;

@Service
public class PillService {
	
	@Autowired
	private PillDAO dao;
	
	public List<P_list> list(int m_idx) {
		List<P_list> list = dao.list();
		for(int i=0;i<list.size();i++) {
			
			// 각 list 의 idx 값 받기
			P_list target = list.get(i);
			int target_idx = target.getP_idx();
			
			// 효능/효과 엔터 구분
			target.setEffect_main(target.getEffect_main().replace("<br>", "\r\n"));
			
			// 위에서 구한 idx 로 해당 약품의 구성 성분들 리스트로 뽑아서 저장
			target.setP_ingredients(dao.pi_list(target_idx));
			
			// rating 저장하기
			// 로그인 되어있는 경우만 null 값이 안되게
			target.setRating(-1);
			if(m_idx != 0) {	// 로그인 됨
				P_rating p_rating = new P_rating();
				p_rating.setP_idx(target_idx);
				p_rating.setM_idx(m_idx);
				P_rating return_p_rating = dao.checkRating(p_rating);	// 해당 약품에 로그인된 아이디로 평가했는지 여부 체크
				if(return_p_rating != null) {	// 존재하면 -> 평가했으니 전체 퍼센트 보여줌
					target.setRating(getRating(target_idx));
				}
			}
		}
		return list;
	}
	
	public double getRating(int p_idx) {		// 투표한 경우 good/bad 비율 계산해서 퍼센트(%) 로 보여주는 메소드
		double allGood = dao.allGood(p_idx);
		double allBad = dao.allBad(p_idx);
		
		return allGood / (allGood + allBad) * 100;
		
	}

	public int getCompany_idx(String name) {
		return dao.getCompany_idx(name);
	}
	
	public int add_p_effect(P_effect p_effect) {
		return dao.add_p_effect(p_effect);
	}
	
	public int add_p_detail_1(P_detail_1 p_detail_1) {
		return dao.add_p_detail_1(p_detail_1);
	}
	
	public int add_p_detail_2(P_detail_2 p_detail_2) {
		return dao.add_p_detail_2(p_detail_2);
	}
	
	public int add_pill(Pill pill) {
		return dao.add_pill(pill);
	}
	
	public int add_p_ingredient(P_ingredient p_ingredient) {
		return dao.add_p_ingredient(p_ingredient);
	}
	
	public int add_company(P_company p_company) {
		return dao.add_company(p_company);
	}
	
	
	
	
	public Map<String, List<String>> getDetail_2() {
		
		Map<String, List<String>> map = new HashMap<>();
		
		map.put("dont", dao.getDont());
		map.put("saveHow", dao.getSaveHow());
		map.put("sideEffect", dao.getSideEffect());
		map.put("useHow", dao.getUseHow());
		map.put("food", dao.getFood());
		map.put("form", dao.getForm());
		map.put("caution", dao.getCaution());
		
		return map;
	}
	
	public List<String> getCompanyNames() {
		return dao.getCompanyNames();
	}
	
}
