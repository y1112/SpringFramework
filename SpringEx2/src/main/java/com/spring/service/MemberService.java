package com.spring.service;

import java.util.List;

import com.spring.vo.BbsVO;
import com.spring.vo.MemberVO;

public interface MemberService {
	
	public void register(MemberVO mvo) throws Exception;
	
	
	public List<MemberVO> list() throws Exception;
}
