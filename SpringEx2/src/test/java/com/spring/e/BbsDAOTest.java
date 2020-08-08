package com.spring.e;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.dao.BbsDAO;
import com.spring.vo.BbsVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class BbsDAOTest {
	@Inject
	private BbsDAO bdao;
	
	private static Logger logger=LoggerFactory.getLogger(BbsDAOTest.class);
	
	@Test
	public void insertTest() throws Exception{
		BbsVO bbsvo=new BbsVO();
		bbsvo.setSubject("zz");
		bbsvo.setContent("aaaaaaaaaaaaaaaaaa");
		bbsvo.setWriter("고길동");
		bdao.insert(bbsvo);
	}
	
	@Test
	public void readTest() throws Exception{
		BbsVO bbsvo=bdao.read(1);
//		logger.info(bdao.read(1).toString());
	}
	
	@Test
	public void updateTest() throws Exception{
		BbsVO bbsvo=new BbsVO();
		bbsvo.setBid(2);
		bbsvo.setContent("update!");
		bbsvo.setSubject("oo");
		bdao.update(bbsvo);
	}
	
	@Test
	public void deleteTest() throws Exception{
		bdao.delete(5);
	}
	
	@Test
	public void listTest() throws Exception{
		logger.info(bdao.list().toString());
	}
}
