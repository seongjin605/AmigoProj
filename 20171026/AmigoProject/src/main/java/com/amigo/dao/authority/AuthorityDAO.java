package com.amigo.dao.authority;

import java.util.List;

public interface AuthorityDAO {
	public int insertUser(String username,String authority);
	public List<String> selectAuthor(String username);
}
