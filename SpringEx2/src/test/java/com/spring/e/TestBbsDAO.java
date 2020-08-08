package com.spring.e;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.dao.BbsDAO;
import com.spring.vo.BbsVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class TestBbsDAO {
	@Inject
	private BbsDAO bbsDAO;
	
	@Test
	public void testTime() throws Exception{
		System.out.println("aa:"+bbsDAO.getTime());
	}
//	private int bid;
	
//	private String subject;
//	private String content;
//	private String writer;
	
//	private Date regdate;
//	private int hit;
	@Test
	public void testInsert() throws Exception{
		BbsVO bbsvo=new BbsVO();
		bbsvo.setSubject("zzz");
		bbsvo.setContent("asdadasdasdaasads");
		bbsvo.setWriter("홍길동");
		
		bbsDAO.insert(bbsvo);
	}
	
	@Test
	public void testSelect() throws Exception{
		List<BbsVO> list=bbsDAO.list();
		System.out.println(list);
		
	}

}
