package com.yakssok.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yakssok.dao.DrugstoreDAO;
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
	
	
}
