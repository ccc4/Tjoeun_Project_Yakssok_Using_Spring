package com.yakssok.service.suggest;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.yakssok.dao.suggest.SuggestDAO;
import com.yakssok.model.Search_helper;
import com.yakssok.model.suggest.S_paging;
import com.yakssok.model.suggest.Suggest;

@Service
public class SuggestService {
	
	private static final int ONE_PAGE = 3;
	private static final int ONE_SECTION = 5;
	
	@Autowired
	private SuggestDAO dao;
	
	public int confirm(int idx) {
		return dao.confirm(idx);
	}
	
	public Suggest view(int idx) {
		return dao.view(idx);
	}
	
	public S_paging all_list(int page) {
		int allCount = dao.all_count();
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
		return new S_paging(dao.all_list(search_helper), page, totalPage, startPage, endPage);
	}
	
	
	public String get_pill_name(int p_idx) {
		return dao.get_pill_name(p_idx);
	}
	
	public String saveImg(String realPath, MultipartFile file) {
		File dir = new File(realPath);
		if(!dir.exists()) {
			dir.mkdirs();
		}
		long t = System.currentTimeMillis();
		String fileName = t + file.getOriginalFilename();
		File f = new File(dir, fileName);
		try {
			file.transferTo(f);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fileName;
	}
	
	public int write(Suggest suggest) {
		return dao.write(suggest);
	}
}
