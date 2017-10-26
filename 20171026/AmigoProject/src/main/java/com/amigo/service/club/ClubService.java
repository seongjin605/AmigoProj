package com.amigo.service.club;

import java.util.List;
import java.util.Map;


public interface ClubService {
	public int insertClub(Map<String,Object> map,String picPath);
	public List<String> selectSubArea(String area1);
	public int selectArea(String area1, String area2);
	public int selectHobby(String hobby);
}
