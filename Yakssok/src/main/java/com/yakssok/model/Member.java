package com.yakssok.model;

import java.util.Date;

public class Member {

	private int m_idx;
	private int type;
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
	private int point;
	
	public Member() {}
	
	
	public Member(int m_idx, int type, String id, String pw, String nickname, String name, int age, int gender,
			String tel, String email, String address, Date joinDate, int point) {
		this.m_idx = m_idx;
		this.type = type;
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
		this.point = point;
	}
	public int getM_Idx() {
		return m_idx;
	}
	public void setM_Idx(int idx) {
		this.m_idx = idx;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getId() {
		return id.trim();
	}
	public void setId(String id) {
		this.id = id.trim();
	}
	public String getPw() {
		return pw.trim();
	}
	public void setPw(String pw) {
		this.pw = pw.trim();
	}
	public String getNickname() {
		return nickname.trim();
	}
	public void setNickname(String nickname) {
		this.nickname = nickname.trim();
	}
	public String getName() {
		return name.trim();
	}
	public void setName(String name) {
		this.name = name.trim();
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
		return tel.trim();
	}
	public void setTel(String tel) {
		this.tel = tel.trim();
	}
	public String getEmail() {
		return email.trim();
	}
	public void setEmail(String email) {
		this.email = email.trim();
	}
	public String getAddress() {
		return address.trim();
	}
	public void setAddress(String address) {
		this.address = address.trim();
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}


}
