package com.spring.regCommand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.spring.regDAO.regDAO;

public class regCmd implements RCmd {

	@Override
	public void service(Model model) {
		Map<String, Object> map=model.asMap();
		HttpServletRequest request=(HttpServletRequest)map.get("request");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		regDAO dao=new regDAO();
		dao.regOk(name, email, password);
		
	}
}
