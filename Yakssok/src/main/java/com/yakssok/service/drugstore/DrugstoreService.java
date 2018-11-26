package com.yakssok.service.drugstore;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yakssok.dao.drugstore.DrugstoreDAO;
import com.yakssok.model.drugstore.Drugstore;
import com.yakssok.model.drugstore.DrugstoreFS;

@Service
public class DrugstoreService {
	
	@Autowired
	private DrugstoreDAO dao;
	
	public List<String> firstValues() {
		return dao.firstValues();
	}

	public Map<String, List<Drugstore>> secondListAll(List<String> secondValues) {
		Map<String, List<Drugstore>> map = new HashMap<String, List<Drugstore>>();
		for(String second : secondValues) {
			map.put(second, dao.secondListAll(second));
		}
		return map;
	}

	public List<String> secondValues(String first) {
		return dao.secondValues(first);
	}
	
	public List<Drugstore> secondListOne(DrugstoreFS fs) {
		return dao.secondListOne(fs);
	}
	
	public Drugstore getModel(int idx) {
		return dao.getModel(idx);
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
