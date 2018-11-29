package com.yakssok.model.drugstore;

public class Drugstore_helper {
	private String type;
	private int idx;
	private String first;
	private String second;

	public Drugstore_helper(String type, String first, String second) {
		this.type = type;
		this.first = first;
		this.second = second;
	}
	public Drugstore_helper(String type, int idx) {
		this.type = type;
		this.idx = idx;
	}
	public Drugstore_helper(String type) {
		this.type = type;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getFirst() {
		return first;
	}
	public void setFirst(String first) {
		this.first = first;
	}
	public String getSecond() {
		return second;
	}
	public void setSecond(String second) {
		this.second = second;
	}
}
