package com.spring.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.vo.BbsVO;
import com.spring.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
//	private static final String namespace = "com.spring.MemberMapper";

	@Inject
	private SqlSession sqlSession;

	@Override
	public String getTime() {
		return sqlSession.selectOne("getTime");
//		return sqlSession.selectOne(namespace + ".getTime");
	}

	@Override
	public void insertMember(MemberVO mvo) {
		sqlSession.insert("insertMember",mvo);
//		sqlSession.insert(namespace + ".insertMember", mvo);
	}
	
	@Override
	public List<MemberVO> list(){
		return sqlSession.selectList("list");
	}
	
}
