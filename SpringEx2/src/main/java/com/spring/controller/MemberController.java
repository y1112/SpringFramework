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
import com.spring.service.MemberService;
import com.spring.vo.BbsVO;
import com.spring.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	private MemberService msvc;

	@RequestMapping(value = "/login") // 입력, 조회: 보통 GET방식 이용(외부에 노출돼도 상관 없을 때)
	public String login(Model model) throws Exception {// model: 데이터 전달 목적 (키&값)
		return "/member/login";
	}

	@RequestMapping(value = "/register") // 입력, 조회: 보통 GET방식 이용(외부에 노출돼도 상관 없을 때)
	public String register(Model model) throws Exception {// model: 데이터 전달 목적 (키&값)
		return "/member/register";
	}

	@RequestMapping(value = "/registerOk") // 입력, 조회: 보통 GET방식 이용(외부에 노출돼도 상관 없을 때)
	public String register(MemberVO mvo, RedirectAttributes reAttr) throws Exception {
		logger.info("modifyPOST().....");

		msvc.register(mvo);

		reAttr.addFlashAttribute("result", "success");

		return "redirect:/member/login";
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void list(Model model) throws Exception{
		logger.info("글 목록 가져오기.....");
		model.addAttribute("list", msvc.list());
	}
}
