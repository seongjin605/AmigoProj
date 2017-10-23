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

		boolean result=memberDAO.passwordCheck(memberDTO);
		if(result) { //true 일경우 세션에 등록
			MemberDTO memberDTO3=viewMember(memberDTO);
		}
		return result;
	}
	@Override
	public MemberDTO viewMember(MemberDTO memberDTO) {
		// TODO Auto-generated method stub
		return memberDAO.viewMember(memberDTO);
	}
	@Override
	public String checkMidDTO(String mid) {
		// TODO Auto-generated method stub
		return  memberDAO.checkMidDTO(mid);
	}
}
