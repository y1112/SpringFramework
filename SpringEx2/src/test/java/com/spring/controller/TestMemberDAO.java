package com.spring.controller;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.dao.MemberDAO;
import com.spring.vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class TestMemberDAO {
	
	@Inject
	private MemberDAO memberDAO;
	
	@Test
	public void testTime() throws Exception{
		System.out.println(memberDAO.getTime());
	}
	
	@Test
	public void testInsertMember() throws Exception{
		MemberVO mvo = new MemberVO();
		mvo.setUid("testI2d222");
		mvo.setPwd("12234");
		mvo.setUsername("홍길동");
		mvo.setEmail("test@test.com");
		
		memberDAO.insertMember(mvo);		
	}

}
