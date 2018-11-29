package com.yakssok.service.drugstore;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yakssok.dao.drugstore.DrugstoreDAO;
import com.yakssok.model.drugstore.Drugstore;
import com.yakssok.model.drugstore.Drugstore_helper;

@Service
public class DrugstoreService {
	
	@Autowired
	private DrugstoreDAO dao;
	
	public List<String> firstValues(String type) {
		return dao.firstValues(new Drugstore_helper(type));
	}

	public Map<String, List<Drugstore>> secondListAll(String type, List<String> secondValues) {
		Map<String, List<Drugstore>> map = new HashMap<String, List<Drugstore>>();
		Drugstore_helper helper = new Drugstore_helper(type);
		for(String second : secondValues) {
			helper.setSecond(second);
			map.put(second, dao.secondListAll(helper));
		}
		return map;
	}

	public List<String> secondValues(String type, String first) {
		Drugstore_helper helper = new Drugstore_helper(type);
		helper.setFirst(first);
		return dao.secondValues(helper);
	}
	
	public List<Drugstore> secondListOne(Drugstore_helper drugstore_helper) {
		return dao.secondListOne(drugstore_helper);
	}
	
	public Drugstore getModel(Drugstore_helper drugstore_helper) {
		return dao.getModel(drugstore_helper);
	}
	
	
	
//	public int save_crawling() {
//		// 1. Document 를 가져온다.
//		Document doc = null;
//		try {
//			doc = Jsoup.connect("https://www.gg.go.kr/open-year-round-pharmacy").get();
//		} catch (IOException e) {
//			e.printStackTrace();
//			System.out.println("Jsoup Exception");
//		}
//		// 2. 목록을 가져온다.
////				System.out.println("" + doc.toString());
//		Elements elements = doc.select("div.new_box div#cont2 .txt-list .new_ta tbody tr td");
//		
//		// 3. 목록(배열)에서 정보를 list 에 저장
//		List<String> list = new ArrayList<>();
//		for(Element element : elements) {
//			list.add(element.text());
//		}
//		
//		Drugstore target = new Drugstore();
//		int result = 1;
//		// 4. list 의 정보를 5개 단위로 구분해서 객체에 저장 후 DB 저장
//		for(int i=0;i<list.size();i++) {
//			if(i % 5 == 0) {
//				System.out.println(i + " - name: " + list.get(i));
//				target.setName(list.get(i));
//			}
//			if(i % 5 == 1) {
//				System.out.println(i + " - tel: " + list.get(i));
//				target.setTel(list.get(i));
//			}
//			if(i % 5 == 2) {
//				System.out.println(i + " - address: " + list.get(i));
//				target.setAddress(list.get(i));
//			}
//			if(i % 5 == 3) {
//				System.out.println(i + " - weekend: " + list.get(i));
//				target.setWeekend(list.get(i));
//			}
//			if(i % 5 == 4) {
//				System.out.println(i + " - remarks: " + list.get(i));
//				System.out.println("-------------------");
//				target.setRemarks(list.get(i));
//				result *= dao.save_crawling(target);
//			}
//		}
//		return result;
//	}
	
}
