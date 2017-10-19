package com.model.member.dao;

import com.model.member.dto.MemberDTO;

public interface MemberDAO {

	public void register(MemberDTO memberDTO);
	public boolean passwordCheck(MemberDTO memberDTO);
	public MemberDTO viewMember(MemberDTO memberDTO);
}
