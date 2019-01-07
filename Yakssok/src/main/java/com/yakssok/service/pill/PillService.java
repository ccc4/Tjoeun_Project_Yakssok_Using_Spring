package com.yakssok.service.pill;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
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
import com.yakssok.model.pill.P_mList;
import com.yakssok.model.pill.P_mOne;
import com.yakssok.model.pill.P_one;
import com.yakssok.model.pill.P_paging;
import com.yakssok.model.pill.P_rating;
import com.yakssok.model.pill.P_review;
import com.yakssok.model.pill.P_review_paging;
import com.yakssok.model.pill.Pill;

@Service
public class PillService {
	
	private static final int ONE_PAGE = 4;
	private static final int ONE_SECTION = 5;
//	private static final int REVIEW_ONE_PAGE = 3;
//	private static final int REVIEW_ONE_SECTION = 3;
	private static final int REVIEW_ITEM_COUNT = 2;
	
	
	@Autowired
	private PillDAO dao;
	
	public List<P_review> mReview_list(int p_idx) {
		return dao.mReview_list(p_idx);
	}
	
	public P_mOne mOne(int p_idx) {
		return dao.mOne(p_idx);
	}
	
	public int mAll_count() {
		return dao.mAll_count();
	}
	
	public List<P_mList> mList(Search_helper helper) {
		List<P_mList> list = dao.mList(helper);
		
		for(P_mList item: list) {
			item.setEffect_main(item.getEffect_main().replace("<br>", " | "));
		}
		
		return list;
	}
	
	public String review_list_ajax(int p_idx, int p_review_idx) {
		Search_helper helper = new Search_helper();
		helper.setP_idx(p_idx);
		helper.setP_review_idx(p_review_idx);
		
		List<P_review> list = dao.review_list_ajax(helper);
		
		if(list != null) {
			String str = "";
			SimpleDateFormat pattern = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
			
			for(int i=0;i<list.size();i++) {
				str += "<tbody>";
				str += "<tr id=\"review_" + list.get(i).getP_review_idx() + "\">";
				str += "<td class=\"td_nickname\">" + list.get(i).getNickname() + "</td>";
				str += "<td class=\"td_contents\">" + list.get(i).getContents() + "</td>";
				str += "<td class=\"td_writeDate\">" + pattern.format(list.get(i).getWriteDate()) + "</td>";
				str += "<td class=\"td_btn\"><button class=\"btn btn-default modify_review_btn\" type=\"button\" onclick=\"modify_review(this, " + list.get(i).getP_review_idx() + ")\">수정</button></td>";
				str += "<td class=\"td_btn\"><button class=\"btn btn-default delete_review_btn\" type=\"button\" onclick=\"delete_review(this, " + list.get(i).getP_review_idx() + ")\">삭제</button></td>";
				str += "</tr>";
				str += "</tbody>";
			}
			return str;
		} else {
			return "";
		}
	} 
	
	public String more_review(int p_idx, int mark) {
		Search_helper search_helper = new Search_helper(mark, REVIEW_ITEM_COUNT);
		search_helper.setP_idx(p_idx);
		
		List<P_review> list = dao.review_list(search_helper);
		
		if(list != null) {
			String str = "";
			SimpleDateFormat pattern = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
			
			for(int i=0;i<list.size();i++) {
				str += "<tbody>";
				str += "<tr id=\"review_" + list.get(i).getP_review_idx() + "\">";
				str += "<td class=\"td_nickname\">" + list.get(i).getNickname() + "</td>";
				str += "<td class=\"td_contents\">" + list.get(i).getContents() + "</td>";
				str += "<td class=\"td_writeDate\">" + pattern.format(list.get(i).getWriteDate()) + "</td>";
				str += "<td class=\"td_btn\"><button class=\"btn btn-default modify_review_btn\" type=\"button\" onclick=\"modify_review(this, " + list.get(i).getP_review_idx() + ")\">수정</button></td>";
				str += "<td class=\"td_btn\"><button class=\"btn btn-default delete_review_btn\" type=\"button\" onclick=\"delete_review(this, " + list.get(i).getP_review_idx() + ")\">삭제</button></td>";
				str += "</tr>";
				str += "</tbody>";
			}
			return str;
		} else {
			return "";
		}
	}
	
	public List<P_review> review_list(int p_idx, int mark) {
		Search_helper search_helper = new Search_helper(mark, REVIEW_ITEM_COUNT);
		search_helper.setP_idx(p_idx);
		return dao.review_list(search_helper);
	}
	
//	public P_review_paging review_list(int p_idx, int page) {
//		
//		int allCount = dao.review_count(p_idx);
//		if(allCount == 0) {
//			return null;
//		}
//		int onePage = REVIEW_ONE_PAGE;
//		int oneSection = REVIEW_ONE_SECTION;
//		
//		int totalPage = allCount / onePage + (allCount % onePage != 0 ? 1 : 0);
//		
//		if(page < 1 || page > totalPage) {
//			return null;	// 잘못된 페이지를 고의로 입력했을 경우 null 리턴
//		}
//		
//		int startPage = (page - 1) / oneSection * oneSection;
//		if(startPage % oneSection == 0) startPage += 1;
//		
//		int endPage = startPage + oneSection - 1;
//		if(endPage > totalPage) endPage = totalPage;
//		
//		Search_helper search_helper = new Search_helper(p_idx, (page - 1) * onePage, onePage);
//		List<P_review> list = null;
//		list = dao.review_list(search_helper);
//		/*if(list == null) {
//			return null;	//	해당 결과 존재하지 않을 시 null 리턴
//		}*/
//		return new P_review_paging(list, page, totalPage, startPage, endPage);
//	}
	
	
	public int delete_review(int p_review_idx) {
		return dao.delete_review(p_review_idx);
	}
	
	public int modify_review(P_review p_review) {
		return dao.modify_review(p_review);
	}
	
	public int write_review(P_review p_review) {
		return dao.write_review(p_review);
	}
	
	public List<P_list> main_rank(String effect) {
		return dao.main_rank(effect);
	}

	
	
	public String checkRating(int p_idx, int m_idx) {
		P_rating p_rating = new P_rating(p_idx, m_idx);
		P_rating return_p_rating = dao.checkRating(p_rating);	// 해당 약품에 로그인된 아이디로 평가했는지 여부 체크
		if(return_p_rating == null) {
			//System.out.println("service 에서 none 로 진입");
			return "none";
		} else if(return_p_rating.getGood() == 1) {
			//System.out.println("service 에서 good 으로 진입");
			return "good";
		} else if(return_p_rating.getBad() == 1) {
			//System.out.println("service 에서 bad 로 진입");
			return "bad";
		} else if(return_p_rating.getGood() == -1) {
			//System.out.println("service 에서 error 로 진입");
			return "error";
		} 
		return null;
	}
	
	public int addRating(P_rating p_rating) {
		return dao.addRating(p_rating);
	}
	
	public int deleteRating(P_rating p_rating) {
		return dao.deleteRating(p_rating);
	}
	
	public int updateRating(P_rating p_rating) {
		return dao.updateRating(p_rating);
	}
	
	
	// only AJAX 기능으로 평가 후 바로 점수 적용할 때 사용
	public int getRating(int p_idx) {		// 투표한 경우 good/bad 비율 계산해서 퍼센트(%) 로 보여주는 메소드
		double all_Good = dao.all_Good(p_idx);
		double all_Bad = dao.all_Bad(p_idx);
		double result = all_Good / (all_Good + all_Bad) * 100;
		if(Double.isNaN(result)) {
			return -1;
		} else {
            return (int)result;
        }
	}
	
	
	
	public P_one one_view(int p_idx, int m_idx) {
		P_one p_one = dao.one_view(p_idx);
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
		Search_helper search_helper = new Search_helper(option, keyword);
		allCount = dao.all_count(search_helper);
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
		
		search_helper.setP1((page - 1) * onePage);	// limit 에 넣을 값 입력
		search_helper.setP2(onePage);
		List<P_list> list = null;
		list = dao.all_list(search_helper);
		if(list == null) {
			return null;	//	해당 결과 존재하지 않을 시 null 리턴
		}
		
		for(int i=0;i<list.size();i++) {
			
			// 각 list 의 idx 값 받기
			P_list target = list.get(i);
			int target_idx = target.getP_idx();
			
			// 효능/효과 엔터 구분
//			target.setEffect_main(target.getEffect_main().replace("<br>", "\r\n"));
			
			// 위에서 구한 idx 로 해당 약품의 구성 성분들 리스트로 뽑아서 저장
			target.setP_ingredients(dao.pi_list(target_idx));
			
//			// rating 저장하기
//			target.setRating(getRating(target_idx));
		}
		return new P_paging(list, page, totalPage, startPage, endPage);
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
