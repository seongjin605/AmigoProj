package com.amigo.dao.club;

import java.util.List;

import com.amigo.vo.club.ClubVO;

public interface ClubDAO {
	public int insertClub(ClubVO club);
	public List<String> selectSubArea(String area1);
	public int selectArea(String area1,String area2);
	public int selectHobby(String hobby);
}
