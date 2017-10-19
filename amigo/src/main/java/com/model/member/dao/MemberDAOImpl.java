package com.model.member.dao;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.model.member.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void register(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		sqlSession.insert("member.insertMember",memberDTO);
	}
	
	@Override
	public boolean passwordCheck(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		
		String pwd = sqlSession.selectOne("member.memberInfo",memberDTO);
		return (pwd==null) ? false:true;
	}
	@Override
	public MemberDTO viewMember(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.viewMember",memberDTO);
	}
}
