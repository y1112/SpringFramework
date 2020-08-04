package com.spring.regController;

import java.net.URI;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.spring.bbsCommand.ListCmd;
import com.spring.bbsVO.BVO;
import com.spring.regCommand.GoogleSignCallback;
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
	//------------------------------------------------------------------------------08/04 추가
	@RequestMapping("/redirect")
	public String GoogleSignCallback(HttpServletRequest request, Model model) {
		// TODO Auto-generated method stub
		model.addAttribute("request",request);
		GoogleSignCallback google=new GoogleSignCallback();
		String code=google.service(model);
		
        URI uri = URI.create("https://accounts.google.com/o/oauth2/token");
//        URI uri = URI.create("https://www.googleapis.com/oauth2/v4/token");
        
        request.setAttribute("code", code);
        
//        response.sendRedirect("\"http://localhost:8080/bbsCommand/redirect");
        
        return "redirect";
	}   
	
	@RequestMapping("/check")
	public String check(HttpServletRequest request, Model model) {
		System.out.println("----------check() 호출-------------");
		model.addAttribute("request",request);
//		cmd=new GoogleSignCallback();
//		cmd.service(model);
		return "check";
	}
	
	@RequestMapping("/test3")
	public String test3(Model model) {
		System.out.println("----------test3() 호출-------------");
		
		return "test3";
	}
	
	
	//------------------------------------------------------------------------------08/03 추가
	
	@RequestMapping("/test2")
	public String test2(Model model) {
		System.out.println("----------test2() 호출-------------");
		
		return "test2";
	}
	
	@RequestMapping("/userInfo")
	public String userInfo(Model model) {
		System.out.println("----------userInfo() 호출-------------");
		
		return "userInfo";
	}
	
//	@RequestMapping("/redirect")
//	public String redirect(Model model) {
//		System.out.println("----------redirect() 호출-------------");
//		return "redirect";
//	}
	
	@RequestMapping("/test")
	public String test(Model model) {
		System.out.println("----------test() 호출-------------");
		
		return "test";
	}
	
	//------------------------------------------------------------------------------08/02 추가
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
