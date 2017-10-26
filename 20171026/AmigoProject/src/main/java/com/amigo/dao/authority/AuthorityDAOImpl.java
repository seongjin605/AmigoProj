package com.amigo.dao.authority;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AuthorityDAOImpl implements AuthorityDAO{

	@Inject
	private SqlSession session;
	
	@Override
	public int insertUser(String username, String authority) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("username", username);
		map.put("authority", authority);
		
		return session.insert("insertUser", map);
	}

	@Override
	public List<String> selectAuthor(String username) {
		// TODO Auto-generated method stub
		return session.selectList("selectAuthor", username);
	}

}
