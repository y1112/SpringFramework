package com.spring.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.service.BbsService;
import com.spring.vo.BbsVO;

@Controller
@RequestMapping("/bbs/*")
public class BbsController {
	private static final Logger logger=LoggerFactory.getLogger(BbsController.class);
	
	@Inject
	private BbsService bsvc;
	
	@RequestMapping(value="/write",method=RequestMethod.GET)//입력, 조회: 보통 GET방식 이용(외부에 노출돼도 상관 없을 때)
	public void writeGET(BbsVO bvo, Model model) throws Exception{//model: 데이터 전달 목적 (키&값)
		logger.info("write GET.....");
	}
	
	@RequestMapping(value="/write",method=RequestMethod.POST)
	public String writePost(BbsVO bvo,Model model) throws Exception{
		logger.info("write POST.....");
		logger.info(bvo.toString());
		
		bsvc.write(bvo);
		model.addAttribute("result","게시글 등록 완료");
		
		return "/bbs/result";
	}
	
	@RequestMapping(value="/read",method=RequestMethod.POST)
	public void read(BbsVO bvo, Model model) throws Exception{
		
	}
}
