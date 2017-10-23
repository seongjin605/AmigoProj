package com.model.member.dao;

import com.model.member.dto.MemberDTO;

public interface MemberDAO {

	public void register(MemberDTO memberDTO);
	
	//아이디 중복 체크
	public String checkMidDTO(String mid);
	public boolean passwordCheck(MemberDTO memberDTO);
	public MemberDTO viewMember(MemberDTO memberDTO);
}
