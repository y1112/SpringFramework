package com.spring.regVO;

import java.sql.Timestamp;

public class regVO {
	int regNo;
	String email;
	String password;
	Timestamp regDate;
	
	public regVO() {
	}
	
	public regVO(int regNo, String email, String password, Timestamp regDate) {
		super();
		this.regNo = regNo;
		this.email = email;
		this.password = password;
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "regVO [regNo=" + regNo + ", email=" + email + ", password=" + password + ", regDate=" + regDate + "]";
	}
	public int getRegNo() {
		return regNo;
	}
	public void setRegNo(int regNo) {
		this.regNo = regNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Timestamp getRegDate() {
		return regDate;
	}
	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}
	
	
	
}
