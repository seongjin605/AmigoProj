package com.service.login;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.model.login.dao.LoginDAO;
import com.model.member.dto.MemberDTO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Inject
	LoginDAO memberDAO;
	
	@Override
	public boolean loginCheck(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		boolean result=memberDAO.loginCheck(memberDTO);
		if(result) { //true 일경우 세션에 등록
			MemberDTO memberDTO2=viewMember(memberDTO);
		}
		return result;
	}

	@Override
	public MemberDTO viewMember(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return memberDAO.viewMember(memberDTO);
	}
}
