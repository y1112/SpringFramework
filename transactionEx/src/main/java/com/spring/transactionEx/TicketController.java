package com.spring.transactionEx;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.cmd.BuyCmd;
import com.spring.cmd.BuyCmdImpl;

@Controller
public class TicketController {
//	@Autowired
//	private BuyDAO buyDAO;
	
//	@Autowired
	private BuyCmd buyCmd;//cmd가 service됨

	@Autowired
	public void setBuyCmdImpl(BuyCmdImpl buyCmdImpl) {
		this.buyCmd=buyCmdImpl;
	}

	@RequestMapping("/buy")
	public String buy() {
		return "buy";
	}
	
	@RequestMapping("/buyOk")
	public String buyOk(BuyVO buyVO, Model model) {
		System.out.println("카드 결제 진행중...");
		System.out.println("고객 아이디: "+buyVO.getUserId());
		System.out.println("티켓 수량: "+buyVO.getAmount());
		
//		buyDAO.buyTicket(buyVO);
		buyCmd.execute(buyVO);
		
		model.addAttribute("buyInfo",buyVO);
		
		return "buyResult";
	}
}
