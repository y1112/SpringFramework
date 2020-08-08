package com.spring.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.vo.BbsVO;

@Repository
public class BbsDAOImpl implements BbsDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public String getTime() {
		return sqlSession.selectOne("getTime");
	}

	@Override
	public void insert(BbsVO bbsvo) {
		sqlSession.insert("insert",bbsvo);
	}
	
	@Override
	public List<BbsVO> list(){
		return sqlSession.selectList("select");
	}

}
