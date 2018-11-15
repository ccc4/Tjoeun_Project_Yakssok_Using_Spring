package com.yakssok.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yakssok.dao.DrugstoreDAO;
import com.yakssok.model.Drugstore;
import com.yakssok.model.DrugstoreFS;

@Service
public class DrugstoreService {
	
	@Autowired
	private DrugstoreDAO dao;
	
	/*public List<Drugstore> firstList(String first) {
		return dao.firstList(first);
	}*/
	
	public List<Drugstore> secondList(DrugstoreFS fs) {
		return dao.secondList(fs);
	}
	
	public List<String> secondValues(String first) {
		return dao.secondValues(first);
	}
	
	public Map<String, List<Drugstore>> firstList(List<String> secondValues) {
		Map<String, List<Drugstore>> map = new HashMap<String, List<Drugstore>>();
		for(String second : secondValues) {
			map.put(second, dao.firstList(second));
		}
		return map;
	}
}
