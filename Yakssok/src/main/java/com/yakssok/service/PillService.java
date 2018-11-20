package com.yakssok.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yakssok.dao.PillDAO;
import com.yakssok.model.P_detail_1;
import com.yakssok.model.P_detail_2;
import com.yakssok.model.P_effect;
import com.yakssok.model.P_ingredient;
import com.yakssok.model.Pill;

@Service
public class PillService {
	
	@Autowired
	private PillDAO dao;

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
