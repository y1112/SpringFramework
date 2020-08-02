package com.spring.regCommand;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.spring.bbsDAO.BDAO;
import com.spring.bbsVO.BVO;
import com.spring.regDAO.regDAO;
import com.spring.regVO.regVO;

public class regListCmd implements RegCmd {

	@Override
	public void service(Model model) {
		regDAO dao = new regDAO();
		ArrayList<regVO> regVOs = dao.list();
		model.addAttribute("list", regVOs);
		
	}
}
