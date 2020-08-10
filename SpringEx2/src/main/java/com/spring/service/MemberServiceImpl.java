package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.dao.BbsDAO;
import com.spring.dao.MemberDAO;
import com.spring.vo.BbsVO;
import com.spring.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO mdao;

	@Override
	public void register(MemberVO mvo) throws Exception {
		mdao.insertMember(mvo);
	}

	@Override
	public List<MemberVO> list() throws Exception {
	return mdao.list();
	}

}
