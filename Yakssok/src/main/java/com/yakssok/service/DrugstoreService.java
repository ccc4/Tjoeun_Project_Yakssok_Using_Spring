package com.yakssok.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yakssok.dao.DrugstoreDAO;
import com.yakssok.model.Drugstore;
import com.yakssok.model.DrugstoreFS;

@Service
public class DrugstoreService {
	
	@Autowired
	private DrugstoreDAO dao;
	
	public List<Drugstore> firstList(String province) {
		return dao.firstList(province);
	}
	
	public List<Drugstore> secondList(DrugstoreFS fs) {
		return dao.secondList(fs);
	}
}
