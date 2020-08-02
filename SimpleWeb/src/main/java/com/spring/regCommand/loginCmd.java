package com.spring.regCommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.spring.regDAO.regDAO;

public class loginCmd implements RegCmd {

	@Override
	public void service(Model model) {
		Map<String, Object> map=model.asMap();
		HttpServletRequest request=(HttpServletRequest)map.get("request");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String remember=request.getParameter("remember");
		
		regDAO dao=new regDAO();
		dao.loginOk(email, password);
		
	}
}
