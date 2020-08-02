package com.spring.regVO;

import java.sql.Timestamp;

public class regVO {
	int regNo;
	String name;
	String email;
	String password;
	Timestamp regDate;

	public regVO() {
	}

	public regVO(int regNo, String name, String email, String password, Timestamp regDate) {
		this.regNo = regNo;
		this.name = name;
		this.email = email;
		this.password = password;
		this.regDate = regDate;
	}

	public int getRegNo() {
		return regNo;
	}

	public void setRegNo(int regNo) {
		this.regNo = regNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
