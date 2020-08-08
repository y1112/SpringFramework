package com.spring.vo;
//`bid` int NOT NULL AUTO_INCREMENT,

//`subject` varchar(200) NOT NULL,
//`content` text,
//`writer` varchar(50) NOT NULL,
//`regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
//`hit` int DEFAULT '0',

import java.util.Date;

public class BbsVO {
	private int bid;
	private String subject;
	private String content;
	private String writer;
	private Date regdate;
	private int hit;

	public BbsVO() {
	}

	public BbsVO(int bid, String subject, String content, String writer, Date regdate, int hit) {
		super();
		this.bid = bid;
		this.subject = subject;
		this.content = content;
		this.writer = writer;
		this.regdate = regdate;
		this.hit = hit;
	}

	@Override
	public String toString() {
		return "BbsVO [bid=" + bid + ", subject=" + subject + ", content=" + content + ", writer=" + writer
				+ ", regdate=" + regdate + ", hit=" + hit + "]";
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

}
