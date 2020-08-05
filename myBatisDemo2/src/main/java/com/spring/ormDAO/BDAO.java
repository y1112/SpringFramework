package com.spring.ormDAO;

import java.util.ArrayList;

import com.spring.orm.VO.BVO;

public interface BDAO {
	public ArrayList<BVO> list();
	public void writeOk(String bName,String bContent);
}
