package com.spring.regCommand;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.spring.regDAO.regDAO;
import com.spring.regVO.regVO;

public class regListCmd implements RCmd {

	@Override
	public void service(Model model) {
		regDAO dao = new regDAO();
		ArrayList<regVO> regVOs = dao.list();
		
		System.out.println("-------------regList확인");
		System.out.println(regVOs);
		model.addAttribute("regList", regVOs);
		
	}
}
