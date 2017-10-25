package com.amigo.util.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.amigo.vo.member.MemberVO;

public class CustomAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	private UserDetailsService detailService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		// TODO Auto-generated method stub
		String user_id = (String) authentication.getPrincipal();
		String user_pwd = (String) authentication.getCredentials();
		
		MemberVO memberVo = (MemberVO) detailService.loadUserByUsername(user_id);
		
		if(!passwordEncoder.matches(user_pwd, memberVo.getPassword()))
			throw new BadCredentialsException("비밀번호가 틀립니다");
		
		return new UsernamePasswordAuthenticationToken(user_id, user_pwd, memberVo.getAuthorities());
	}

	@Override
	public boolean supports(Class<?> checkAuthentication) {
		// TODO Auto-generated method stub
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(checkAuthentication);
	}

}
