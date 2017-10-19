package com.service.member;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.model.member.dao.MemberDAO;
import com.model.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO memberDAO;
	
	@Override
	public void register(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		memberDAO.register(memberDTO);
	}
	
	@Override
	public boolean passwordCheck(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return memberDAO.passwordCheck(memberDTO);
	}
}
