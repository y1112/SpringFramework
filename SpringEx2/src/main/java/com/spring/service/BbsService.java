package com.spring.service;

import java.util.List;

import com.spring.vo.BbsVO;

public interface BbsService {
	public void write(BbsVO bvo) throws Exception;
	
	public List<BbsVO> list() throws Exception;
}
