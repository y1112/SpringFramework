package com.spring.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
//		public String writePost(BbsVO bvo,Model model) throws Exception{
	//RedirectAttributes객체는 리다이렉트 시점에 한번만 사용되는 데이터를 전송할 수 있는 addFlashAttrbute()메소드를 지원함
	//Post방식으로 전달하지만 헤더에 응답 받는 response header(content-language,content-length,date,time,location(url))브라우저로 전송, 주소값 GET방식으로 리다이렉트함
	//write form 사용자 요청->submit버튼 클릭->BbsController로 입력 내용 전송->POST방식으로 처리(header를 통해 데이터 전송, 응답 메시지에 브라우저 이동 경로 알려줌, http://~/bbs/list?result=success, 해당 주소는 url에 남아있음)->BbsController로 재전송
	public String writePost(BbsVO bvo, RedirectAttributes reAttr) throws Exception{
		logger.info("write POST.....");
		logger.info(bvo.toString());
		
		bsvc.write(bvo);
//		model.addAttribute("result","게시글 등록 완료");//영문으로 처리시 url에 표시됨
		reAttr.addFlashAttribute("result","success");//전송 결과 숨김
//		return "/bbs/resultOk";
		return "redirect:/bbs/list";
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void list(Model model) throws Exception{
		logger.info("글 목록 가져오기.....");
		model.addAttribute("list", bsvc.list());
	}
	
//	@RequestParam: Servlet에서 request.getParameter()와 유사한 기능을 함, 형변환 가
//	Servlet의 request는 HttpServletRequest
//	@Requestparam과 HttpServletRequest의 차이점: 문자열, 숫자, 날짜 등의 형변환 여부
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public void read(@RequestParam("bid") int bid, Model model) throws Exception{//글번호 bid를 전달받기 위해서 @RequestParam 사용
		model.addAttribute(bsvc.read(bid));// addAttribute에 key값을 사용하지 않았을 경우, 클래스의 이름을 자동으로 소문자로 저장한다. BbsVO클래스 반환->bbsVO(소문자로 시작)
//		model.addAttribute("content",bsvc.read(bid));// addAttribute에 key값을 사용하지 않았을 경우, 클래스의 이름을 자동으로 소문자로 저장한다. BbsVO클래스 반환->bbsVO(소문자로 시작)
		logger.info("글내용확인!");
		logger.info(bsvc.read(bid).toString());
		
		
	}
}
