package com.amigo.dao.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.amigo.vo.member.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sqlSession;

	
	@Override
	public void insertMember(MemberVO member) {
		// TODO Auto-generated method stub
		sqlSession.insert("insertMember", member);
	}

	@Override
	public MemberVO selectMember(String mid) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("selectMember", mid);
	}

}
