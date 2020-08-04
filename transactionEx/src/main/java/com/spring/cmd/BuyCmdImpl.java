package com.spring.cmd;

import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;

import com.spring.transactionEx.BuyDAO;
import com.spring.transactionEx.BuyVO;

@Service
public class BuyCmdImpl implements BuyCmd {
	
	private BuyDAO buyDAO;
	
	private TransactionTemplate transactionTemplate1;
	
	public void setTransactionTemplate1(TransactionTemplate transactionTemplate1){
		this.transactionTemplate1 = transactionTemplate1;
	}
	
	public void setBuyDAO(BuyDAO buyDAO) {
		this.buyDAO=buyDAO;
	}
	
	public BuyDAO getBuyDAO() {
		return buyDAO;
	}

	@Override
	public void execute(final BuyVO buyVO) {
		
		buyVO.setAmount("2");
		buyDAO.buyTicket(buyVO);//트랜잭션 성공
		
		buyVO.setAmount("6");
		buyDAO.buyTicket(buyVO);//트랜잭션 실패
		
//		
//		transactionTemplate1.execute(new TransactionCallbackWithoutResult() {
//			
//			@Override
//			protected void doInTransactionWithoutResult(TransactionStatus status) {
//				buyVO.setAmount("2");
//				buyDAO.buyTicket(buyVO);//트랜잭션 성공
//				
//				buyVO.setAmount("6");
//				buyDAO.buyTicket(buyVO);//트랜잭션 실패
//			}
//		});
//			
	}

}
