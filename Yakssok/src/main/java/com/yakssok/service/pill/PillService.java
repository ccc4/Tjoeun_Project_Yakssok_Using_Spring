package com.yakssok.service.pill;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yakssok.dao.pill.PillDAO;
import com.yakssok.model.Search_helper;
import com.yakssok.model.pill.P_company;
import com.yakssok.model.pill.P_detail_1;
import com.yakssok.model.pill.P_detail_2;
import com.yakssok.model.pill.P_effect;
import com.yakssok.model.pill.P_ingredient;
import com.yakssok.model.pill.P_list;
import com.yakssok.model.pill.P_one;
import com.yakssok.model.pill.P_paging;
import com.yakssok.model.pill.P_rating;
import com.yakssok.model.pill.Pill;

@Service
public class PillService {
	
	private static final int ONE_PAGE = 1;
	private static final int ONE_SECTION = 5;
	
	@Autowired
	private PillDAO dao;
	
	public P_one one_view(int p_idx, int m_idx) {
		P_one p_one = dao.one_view(p_idx);
		p_one.setRating(checkRating(p_idx, m_idx));
		p_one.setIngredients(dao.pi_list(p_idx));
		
		List<String> detail_2 = new ArrayList<>();
		
		if(p_one.getP_dont_idx() != null) {
			String[] array = p_one.getP_dont_idx().split(" ");
			for(int i=0;i<array.length;i++) {
				detail_2.add(dao.get_p_dont(Integer.parseInt(array[i])));
			}
		}
		if(p_one.getP_saveHow_idx() != null) {
			String[] array = p_one.getP_saveHow_idx().split(" ");
			for(int i=0;i<array.length;i++) {
				detail_2.add(dao.get_p_saveHow(Integer.parseInt(array[i])));
			}
		}
		if(p_one.getP_sideEffect_idx() != null) {
			String[] array = p_one.getP_sideEffect_idx().split(" ");
			for(int i=0;i<array.length;i++) {
				detail_2.add(dao.get_p_sideEffect(Integer.parseInt(array[i])));
			}
		}
		if(p_one.getP_useHow_idx() != null) {
			String[] array = p_one.getP_useHow_idx().split(" ");
			for(int i=0;i<array.length;i++) {
				detail_2.add(dao.get_p_useHow(Integer.parseInt(array[i])));
			}
		}
		if(p_one.getP_food_idx() != null) {
			String[] array = p_one.getP_food_idx().split(" ");
			for(int i=0;i<array.length;i++) {
				detail_2.add(dao.get_p_food(Integer.parseInt(array[i])));
			}
		}
		if(p_one.getP_form_idx() != null) {
			String[] array = p_one.getP_form_idx().split(" ");
			for(int i=0;i<array.length;i++) {
				detail_2.add(dao.get_p_form(Integer.parseInt(array[i])));
			}
		}
		if(p_one.getP_caution_idx() != null) {
			String[] array = p_one.getP_caution_idx().split(" ");
			for(int i=0;i<array.length;i++) {
				detail_2.add(dao.get_p_caution(Integer.parseInt(array[i])));
			}
		}
		p_one.setDetail_2(detail_2);
		return p_one;
	}
	
	public P_paging list(int m_idx, int page, String option, String keyword) {
		
		int allCount = 0;
		if(option == null) {	// 전체목록인 경우
			allCount = dao.all_list_count();
		} else {
			allCount = dao.type_list_count(option, keyword);
		}
		if(allCount == 0) {	
			return null;	//	해당 결과 존재하지 않을 시 null 리턴
		}
		int onePage = ONE_PAGE;
		int oneSection = ONE_SECTION;
		
		int totalPage = allCount / onePage + (allCount % onePage != 0 ? 1 : 0);
		
		if(page < 1 || page > totalPage) {
			return null;	// 잘못된 페이지를 고의로 입력했을 경우 null 리턴
		}
		
		int startPage = (page - 1) / oneSection * oneSection;
		if(startPage % oneSection == 0) startPage += 1;
		
		int endPage = startPage + oneSection - 1;
		if(endPage > totalPage) endPage = totalPage;
		
		Search_helper search_helper = new Search_helper((page - 1) * onePage, onePage);
		List<P_list> list = null;
		if(option == null) {
			list = dao.all_list(search_helper);
		} else {
			search_helper.setKeyword(keyword);
			list = dao.type_list(option, search_helper);
		} 
		if(list == null) {
			return null;	//	해당 결과 존재하지 않을 시 null 리턴
		}
		
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
			target.setRating(checkRating(target_idx, m_idx));
		}
		return new P_paging(list, page, totalPage, startPage, endPage);
	}
	
	public double checkRating(int p_idx, int m_idx) {
		if(m_idx == 0) {	// 1. 로그인 안되어있는 경우
			return -1;	
		}
		P_rating p_rating = new P_rating();
		p_rating.setP_idx(p_idx);
		p_rating.setM_idx(m_idx);
		P_rating return_p_rating = dao.checkRating(p_rating);	// 해당 약품에 로그인된 아이디로 평가했는지 여부 체크
		if(return_p_rating != null) {
			return getRating(p_idx);	// 3. 로그인 했고 평가도 했을 경우 퍼센트 보여줌
		}
		return -1;	// 2. 해당 아이디로 평가를 안했을 경우
	}
	
	public double getRating(int p_idx) {		// 투표한 경우 good/bad 비율 계산해서 퍼센트(%) 로 보여주는 메소드
		double all_Good = dao.all_Good(p_idx);
		double all_Bad = dao.all_Bad(p_idx);
		
		return all_Good / (all_Good + all_Bad) * 100;
		
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
