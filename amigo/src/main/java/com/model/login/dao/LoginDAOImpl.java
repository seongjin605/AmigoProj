package com.model.login.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.model.member.dto.MemberDTO;

@Repository  // 현재 클래스를 스프링에서 관리하는 dao bean으로 등록
public class LoginDAOImpl implements LoginDAO {

	// SqlSession 객체를 스프핑에서 생성하여 주입
    // 의존관계 주입(Dependency Injection), 느슨한 결합
	@Inject
	SqlSession sqlSession;
	
	@Override
	public boolean loginCheck(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		String name=sqlSession.selectOne("member.loginCheck",memberDTO);
		return (name==null) ? false:true;
		
	}
	@Override
	public MemberDTO viewMember(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.viewMember",memberDTO);
	}
	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		
	}
}
