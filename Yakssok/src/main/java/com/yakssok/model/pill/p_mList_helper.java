package com.yakssok.model.pill;

import java.util.List;

public class p_mList_helper {
	List<P_mList> list;
	int all_count;
	
	public p_mList_helper(List<P_mList> list, int all_count) {
		super();
		this.list = list;
		this.all_count = all_count;
	}
	
	public List<P_mList> getList() {
		return list;
	}
	public void setList(List<P_mList> list) {
		this.list = list;
	}
	public int getAll_count() {
		return all_count;
	}
	public void setAll_count(int all_count) {
		this.all_count = all_count;
	}
	
	
}
