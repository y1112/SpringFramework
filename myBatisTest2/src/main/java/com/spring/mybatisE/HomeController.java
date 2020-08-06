package com.spring.mybatisE;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ormDAO.BbsDAO;
import com.spring.ormVO.BVO;

@Controller
public class HomeController {
	
	BbsDAO bbsdao;
	
	@Autowired
	public void setBbsDAO(BbsDAO bbsdao) {
		this.bbsdao=bbsdao;
	}
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "list";
	}

	@RequestMapping("/list")
	public String list(Model model) {
		ArrayList<BVO> bvos=bbsdao.list();
		model.addAttribute("list",bvos);
		
		return "list";
	}

	@RequestMapping("/writeForm")
	public String writeForm() {
		return "writeForm";
	}

	@RequestMapping("/writeOk")
	public String writeOk(HttpServletRequest req, Model model) {

		return "redirect:list";
	}

}
