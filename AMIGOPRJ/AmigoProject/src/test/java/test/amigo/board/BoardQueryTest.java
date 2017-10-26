package test.amigo.board;

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

import com.amigo.service.board.BoardService;
import com.amigo.vo.board.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@WebAppConfiguration
public class BoardQueryTest {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardQueryTest.class);
	
	@Inject
	private BoardService service;
	
	@Test
	@Ignore
	public void selectBoardVOsTest() {
		logger.info("selectBoardVOs Ȯ�� :{}",service.selectBoardVOs(1));
	}
	
	@Test
	@Ignore
	public void insertBoardVO() {
		logger.info("insertBoardVO �׽�Ʈ");
		BoardVO vo = new BoardVO();
		vo.setbTitle("������ ���� �׽�Ʈ");
		vo.setbContent("������ ���� �׽�Ʈ");
		vo.setbWriter("IU");
		vo.setbCategory(1);
		vo.setcNum(1);
		
		service.insertBoardVO(vo);
	}
	
	@Test
	public void updateBoardVOTeste() {
		
		logger.info("updateBoardVO �׽�Ʈ");
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("bTitle", "������Ʈ �׽�Ʈ");
		map.put("bContent", "������Ʈ �����׽�Ʈ");
		map.put("bWriter", "IU");
		map.put("bCategory",4);
		map.put("bNum",17);
	
		
		service.updateBoardVO(map);
	}

}
