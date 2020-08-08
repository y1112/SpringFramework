package com.spring.dao;

import java.util.List;

import com.spring.vo.BbsVO;

public interface BbsDAO {

	public String getTime();
	
	public void insert(BbsVO bbsvo);
	
	public List<BbsVO> list();
}
