package com.management.employeemanagement.models;

import lombok.Data;

@Data
public class Login {

	private int sid;
	private String password;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
