package com.controller.club;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClubController {
	private static final Logger logger=LoggerFactory.getLogger(ClubController.class);
	
	@RequestMapping("club")
	public void clubMain() throws Exception{
		logger.info("check");
	}
	
	@RequestMapping("club_make")
	public void clubMake() throws Exception{
		logger.info("clubMake.jsp 요청");
	}
	
	@RequestMapping("club_board")
	public void clubBoard() throws Exception{
		logger.info("clubBoard.jsp 요청");
	}
}
