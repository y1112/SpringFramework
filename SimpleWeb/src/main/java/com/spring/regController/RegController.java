package com.spring.regController;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.bbsCommand.ListCmd;
import com.spring.bbsVO.BVO;
import com.spring.regCommand.RCmd;
import com.spring.regCommand.loginCmd;
import com.spring.regCommand.regCmd;
import com.spring.regCommand.regListCmd;
import com.spring.regVO.regVO;
import com.spring.template.StaticTemplate;

@Controller
public class RegController {
	RCmd cmd = null;
	
	private JdbcTemplate template;
	
	@Autowired
	public void setTemplate(JdbcTemplate template){
		this.template = template;
		StaticTemplate.template = this.template;
	}
	
	
	//------------------------------------------------------------------------------08/20 추가
	@RequestMapping("loginForm")
	public String loginForm(Model model) {
		System.out.println("----------loginForm() 호출-------------");
		
		return "loginForm";
	}
	
	@RequestMapping("loginOk")
	public String loginOk(HttpServletRequest request, Model model) {
		System.out.println("--------------------loginOk() 호출-----------------");
		model.addAttribute("request",request);
		cmd=new loginCmd();
		cmd.service(model);
		
		return "redirect:loginForm";
	}
	
	@RequestMapping("registerForm")
	public String registerForm(Model model) {
		System.out.println("----------registerForm() 호출-------------");
		
		return "registerForm";
	}
	
	@RequestMapping("forgot")
	public String forgot(Model model) {
		System.out.println("----------forgot() 호출-------------");
		
		return "forgot";
	}
	
	@RequestMapping("reset")
	public String reset(Model model) {
		System.out.println("----------reset() 호출-------------");
		
		return "reset";
	}
	
	@RequestMapping("regOk")
	public String regOk(HttpServletRequest request, Model model) {
		System.out.println("----------regOk() 호출-------------");
		model.addAttribute("request",request);
		cmd=new regCmd();
		cmd.service(model);
		
		return "regList";
//		return"regdirect:regList";
	}
	
	
	@RequestMapping("regList")
	public String regList(Model model) {
		System.out.println("----------regList() 호출-------------");
		cmd = new regListCmd();
		cmd.service(model); 
		
		return "regList";
	}
	

	@ModelAttribute("regVO")
	public regVO formBacking(){
		return new regVO();
	}
}
