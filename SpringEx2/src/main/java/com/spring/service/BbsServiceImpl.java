package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.dao.BbsDAO;
import com.spring.vo.BbsVO;

@Service
public class BbsServiceImpl implements BbsService {
	
	@Inject
	private BbsDAO bdao;
	
	@Override
	public void write(BbsVO bvo) throws Exception {
		bdao.insert(bvo);
	}
	
	@Override
	public List<BbsVO> list() throws Exception{
		return bdao.list();
	}

}
