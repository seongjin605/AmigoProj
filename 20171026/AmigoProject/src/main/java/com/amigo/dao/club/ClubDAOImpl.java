package com.amigo.dao.club;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.amigo.vo.club.ClubVO;


@Repository
public class ClubDAOImpl implements ClubDAO {

	@Inject
	private SqlSession session;

	@Override
	public int insertClub(ClubVO club) {
		// TODO Auto-generated method stub
		return session.insert("insertClub", club);
	}

	@Override
	public List<String> selectSubArea(String area1) {
		// TODO Auto-generated method stub
		return session.selectList("selectSubArea", area1);
	}

	@Override
	public int selectArea(String area1, String area2) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("area1", area1);
		map.put("area2", area2);
		return session.selectOne("selectArea", map);
	}

	@Override
	public int selectHobby(String hobby) {
		// TODO Auto-generated method stub
		return session.selectOne("selectHobby", hobby);
	}
}
