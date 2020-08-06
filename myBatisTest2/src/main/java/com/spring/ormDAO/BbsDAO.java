package com.spring.ormDAO;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.spring.ormVO.BVO;

@Service
public class BbsDAO implements BDAO{
	JdbcTemplate template;
	
	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template=template;
	}
	@Override
	public ArrayList<BVO> list(){
		
		return null;
		
	}
}
