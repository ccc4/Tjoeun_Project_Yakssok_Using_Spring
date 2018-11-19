package com.yakssok.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yakssok.dao.PillSetDAO;

@Service
public class PillSetService {
	
	@Autowired
	private PillSetDAO dao;
	
	public int test1(String value) {
		return dao.test1(value);
	}
	
	public int test2(String value) {
		return dao.test2(value);
	}
	
	public int test3(String value) {
		return dao.test3(value);
	}
	
	public int test4(String value) {
		return dao.test4(value);
	}
	
	public int test5(String value) {
		return dao.test5(value);
	}
	
	public int test6(String value) {
		return dao.test6(value);
	}
	
	public int test7(String value) {
		return dao.test7(value);
	}

	
	
}
