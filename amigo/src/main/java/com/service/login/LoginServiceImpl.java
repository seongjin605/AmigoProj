package com.service.login;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.model.login.dao.LoginDAO;
import com.model.member.dto.MemberDTO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Inject
	LoginDAO memberDAO;
	
	@Override
	public boolean loginCheck(MemberDTO memberDTO, HttpSession session) {
		// TODO Auto-generated method stub
		boolean result=memberDAO.loginCheck(memberDTO);
		if(result) { //true 일경우 세션에 등록
			MemberDTO memberDTO2=viewMember(memberDTO);
			//세션 변수 등록
/*			session.setAttribute("userId", memberDTO2.getUserId());
			session.setAttribute("userName", memberDTO2.getUserName());*/
		}
		return result;
	}

	@Override
	public MemberDTO viewMember(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return memberDAO.viewMember(memberDTO);
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		//세션 변수 개별 삭제
		//session.removeAttribute("userId");
		//세션정보초기화
		session.invalidate();
	}
}
