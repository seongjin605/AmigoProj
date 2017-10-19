package com.service.member;

import com.model.member.dto.MemberDTO;

public interface MemberService {

	public void register(MemberDTO memberDTO);
	public boolean passwordCheck(MemberDTO memberDTO);
	public MemberDTO viewMember(MemberDTO memberDTO);
}
