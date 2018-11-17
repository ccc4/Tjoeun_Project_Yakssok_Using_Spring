package com.yakssok.model;

import java.util.Date;

public class DeleteMember {
	
    private int idx;
	private int m_idx;
	private String id;
	private String pw;
	private String nickname;
	private String name;
	private int age;
	private int gender;
	private String tel;
	private String email;
	private String address;
	private Date joinDate;
	private Date delDate;
	private int point;
	
	public DeleteMember() {}

	public DeleteMember(int idx, int m_idx, String id, String pw, String nickname, String name, int age, int gender,
			String tel, String email, String address, Date joinDate, Date delDate, int point) {
		
		this.idx = idx;
		this.m_idx = m_idx;
		this.id = id;
		this.pw = pw;
		this.nickname = nickname;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.tel = tel;
		this.email = email;
		this.address = address;
		this.joinDate = joinDate;
		this.delDate = delDate;
		this.point = point;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getM_idx() {
		return m_idx;
	}

	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public Date getDelDate() {
		return delDate;
	}

	public void setDelDate(Date delDate) {
		this.delDate = delDate;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}
	
	
	
}
