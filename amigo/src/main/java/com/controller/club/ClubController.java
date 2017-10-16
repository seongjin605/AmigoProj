package com.controller.club;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClubController {
	private static final Logger logger=LoggerFactory.getLogger(ClubController.class);
	
	@RequestMapping("clubMain")
	public void clubMain() throws Exception{
		logger.info("check");
	}
}