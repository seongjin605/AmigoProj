package com.amigo.util.security;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.amigo.dao.authority.AuthorityDAO;
import com.amigo.service.member.MemberService;
import com.amigo.vo.member.MemberVO;

@Service("CustomUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService {
	
	@Inject
	private AuthorityDAO authorDAO;
	
	@Inject
	private MemberService memberService;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		MemberVO memberVo = memberService.selectMember(username);
		
		/*아이디가 맞는지 확인*/
		if(memberVo == null)
			throw new UsernameNotFoundException("유효하지 않은 아이디입니다");
		
		/*유효한 아이디에 해당하는 권한을 가져온다*/
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
		/*가져온 권한들을 GrantedAuthority 인터페이스를 상속받은 클래스로 맵핑후 저장한다*/
		for(String str : authorDAO.selectAuthor(username))
			authorities.add(new SimpleGrantedAuthority(str));
		
		/*권한을 맵핑한 최종 UserDetails 객체*/
		memberVo.setAuthorities(authorities);
		
		return memberVo;
	}
}
