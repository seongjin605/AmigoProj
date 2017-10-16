package com.model.login.dao;

import javax.servlet.http.HttpSession;

import com.model.member.dto.MemberDTO;

public interface LoginDAO {

//회원 로그인 체크
public boolean loginCheck(MemberDTO memberDTO);
// 회원 로그인 정보
public MemberDTO viewMember(MemberDTO memberDTO);
//회원 로그아웃
public void logout(HttpSession session);
}
