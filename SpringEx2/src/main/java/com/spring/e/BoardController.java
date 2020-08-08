package com.spring.e;

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
public class BoardController {
	private static final Logger logger=
			LoggerFactory.getLogger(LoggerDemo.class);
	
	@Inject
	private BbsService bsvc;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public void writeGET(BbsVO bvo,Model model) throws Exception{
		logger.info("write GET.....");
	}
	
	@RequestMapping(value="/",method=RequestMethod.POST)
	public String writePost(BbsVO bvo, RedirectAttributes reAttr) throws Exception{
		logger.info("write POST.....");
		logger.info(bvo.toString());
		
		bsvc.write(bvo);
		
		reAttr.addFlashAttribute("result","success");
		
		return "redirect:/list";
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public void list(Model model) throws Exception{
		logger.info("list!");
		model.addAttribute("list",bsvc.list());
	}

}
