package com.spring.ormE;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/Person")
public class PersonController {
	
	PersonVO personVO=new PersonVO();
	
	@RequestMapping("/personJoin")
	public void personForm(HttpServletRequest request,Model model) {

		personVO.setName(request.getParameter("name"));
		System.out.println(personVO.getName());
		
		model.addAttribute("personVO", personVO);
	}
}
