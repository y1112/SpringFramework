package com.spring.dao;

import java.util.List;

import com.spring.vo.BbsVO;
import com.spring.vo.MemberVO;

public interface MemberDAO {
	
	public String getTime();
	
	public void insertMember(MemberVO mvo);
	
	public List<MemberVO> list() throws Exception;

}
