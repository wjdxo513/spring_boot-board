package com.web.domain;

public class User {
	private String name;
	private String phone;
	private String password;
	private String date;
	public User() {
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public User(String name, String phone, String password, String date) {
		super();
		this.name = name;
		this.phone = phone;
		this.password = password;
		this.date = date;
	}
	
}
