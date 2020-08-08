package com.spring.vo;
//`bid` Integer NOT NULL AUTO_INCREMENT,

//`subject` varchar(200) NOT NULL,
//`content` text,
//`writer` varchar(50) NOT NULL,
//`regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
//`hit` Integer DEFAULT '0',

import java.util.Date;

public class BbsVO {
	private Integer bid;
	private String subject;
	private String content;
	private String writer;
	private Date regdate;
	private Integer hit;

	public BbsVO() {
	}

	public BbsVO(Integer bid, String subject, String content, String writer, Date regdate, Integer hit) {
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

	public Integer getBid() {
		return bid;
	}

	public void setBid(Integer bid) {
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

	public Integer getHit() {
		return hit;
	}

	public void setHit(Integer hit) {
		this.hit = hit;
	}

}
