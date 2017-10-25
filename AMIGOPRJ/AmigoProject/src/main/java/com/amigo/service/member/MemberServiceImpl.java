package com.amigo.service.member;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.amigo.dao.authority.AuthorityDAO;
import com.amigo.dao.member.MemberDAO;
import com.amigo.vo.member.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private AuthorityDAO authorDao;
	
	@Inject
	private MemberDAO dao;
	
	
	/*AOP로 트랜잭션 처리*/
	@Override
	public void insertMember(MemberVO member,String authority) {
		// TODO Auto-generated method stub
		String dbPwd = member.getPassword();
		member.setPassword(passwordEncoder.encode((dbPwd)));
		
		dao.insertMember(member);
		authorDao.insertUser(member.getUsername(), authority);
	}
	
	@Override
	public MemberVO selectMember(String mid) {
		// TODO Auto-generated method stub
		return dao.selectMember(mid);
	}

}
