package com.controller.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.board.dto.BoardDTO;
import com.model.member.dto.MemberDTO;
import com.service.board.BoardPager;
import com.service.board.BoardService;

@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	private BoardService service;
	
/*	@RequestMapping("mainBoard")
	public void board(Model model) throws Exception {
		logger.info("============list() DAO 비지니스 시작============");
		model.addAttribute("list", service.selectBoardList());
		logger.info("============list() DAO 비지니스 종료============");
		logger.info("list=" + service.selectBoardList());
	}*/

	@RequestMapping("mainBoard")
	public ModelAndView list(@RequestParam(defaultValue = "title") String searchOption,
										@RequestParam(defaultValue = "") String keyword,
										@RequestParam(defaultValue="1") int curPage) throws Exception {
		logger.info("====================BoardController의 list() 호출====================");
	
		// 레코드의 갯수
		int count = service.countArticle(searchOption, keyword);
		
		//페이징 처리
		BoardPager boardPager=new BoardPager(count,curPage);
		int start=boardPager.getPageBegin();
		int end= boardPager.getPageEnd();
		
		List<BoardDTO> list=service.listAll(start, end, searchOption, keyword);
		
		// 데이터를 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		map.put("count", count); // 레코드의 갯수
		map.put("searchOption", searchOption); // 검색옵션
		map.put("keyword", keyword); // 검색키워드
		map.put("boardPager", boardPager);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("mainBoard"); // 뷰를 mainBoard.jsp로 설정
		logger.info("====================BoardController의 list() 종료====================");
		return mav;
	}

	// 글쓰기 페이지 이동
	@RequestMapping("write_view")
	public void write_view(Model model) {
		logger.info("================write_view 호출=================");
	}

	// 글쓰기
	@RequestMapping(value = "write", method = RequestMethod.POST)
	public String write(@ModelAttribute BoardDTO boardDTO) throws Exception {
		logger.info("write DAO 비지니스 시작");
		service.write(boardDTO);
		logger.info("write DAO 비지니스 종료");
		logger.info("mainBoard=" + service.selectBoardList());
		return "redirect:mainBoard";
	}

	// 게시글 상세내용 조회, 게시글 조회수 증가 처리
	// @RequestParam : get 방식으로 전달된 변수 1개
	@RequestMapping(value = "content_view", method = RequestMethod.GET)
	public ModelAndView content_view(@RequestParam int bId) throws Exception {
		logger.info("============view() 시작============");

		// 로그객체 작동중일때 디버그값 출력
		if (logger.isDebugEnabled()) {
			logger.debug("bId=", bId);
		}
		// 조회수 증가 처리
		service.updateHit(bId);

		// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();

		// 뷰 이름
		mav.setViewName("content_view");
		mav.addObject("content_view", service.content_view(bId));
		logger.info("content_view=" + service.content_view(bId));
		return mav;
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@ModelAttribute BoardDTO boardDTO) throws Exception {
		logger.info("============update() 시작============");

		logger.info("============update DAO 비지니스 시작============");
		logger.info("update DAO 비지니스 시작");
		service.update(boardDTO);
		logger.info("update DAO 비지니스 종료");
		logger.info("list=" + service.selectBoardList());
		return "redirect:mainBoard";
	}

	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String delete(@ModelAttribute BoardDTO boardDTO) throws Exception {
		logger.info("============delete() 시작============");
		if (logger.isDebugEnabled()) {
			logger.info("delete()=" + boardDTO);
		}
		logger.info("delete DAO 비지니스 시작");
		service.delete(boardDTO);
		logger.info("delete DAO 비지니스 종료");
		return "redirect:mainBoard";
	}
}
