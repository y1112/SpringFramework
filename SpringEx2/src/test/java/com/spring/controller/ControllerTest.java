package com.spring.controller;

import javax.inject.Inject;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration// Spring MVC를 테스트하는 데 있어서 필요한 어노테이션, 기존의 스프링 테스트와 다른점
@ContextConfiguration(locations= {"file:/src/main/webapp/WEB-INF/spring/**/*.xml"})
public class ControllerTest {
	private static final Logger logger=LoggerFactory.getLogger(ControllerTest.class);
	
	@Inject
	private WebApplicationContext webAppCtx;
	
	private MockMvc mockMvc;// 브라우저에서 요청과 응답을 하는 객체
	
	@Before
	public void setUp() {
		this.mockMvc=MockMvcBuilders.webAppContextSetup(webAppCtx).build();
		logger.info("setUp() 호출.....");
	}
	
	@Test
	public void testController() throws Exception{
		mockMvc.perform(MockMvcRequestBuilders.get("/controller"));
	}
}
