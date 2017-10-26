package test.query.club;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.amigo.service.club.ClubService;

import test.amigo.oracle.OracleTest;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@WebAppConfiguration
public class ClubQueryTest {
	private static final Logger logger = LoggerFactory.getLogger(OracleTest.class);
	
	@Inject
	private ClubService service;
	
	@Test
	public void insertTest() {
		/*{cContent=테스트입니다, cTitle=테스트, cHobby=영화, cArea1=서울, cArea2=용산구}*/
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("cContent", "테스트입니다");
		map.put("cTitle", "테스트");
		map.put("cHobby", "영화");
		map.put("cArea1", "서울");
		map.put("cArea2", "용산구");
		
		String path="D://";

		
		service.insertClub(map,path);
		logger.info("Club Insert 확인");
	}
	
	@Ignore
	@Test
	public void selectSubAreaTest() {
		logger.info("selectSubArea 확인,{}",service.selectSubArea("인천"));
	}
	
	@Ignore
	@Test
	public void selectAreaTest() {
		logger.info("가져온 주소값:{}",service.selectArea("서울", "동대문구"));
	}
	
	@Ignore
	@Test
	public void selectHobbyTest() {
		logger.info("가져온 주소값:{}",service.selectHobby("동물/반려견"));
	}
}
