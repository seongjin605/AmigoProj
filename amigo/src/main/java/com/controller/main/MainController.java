package com.controller.main;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.service.board.BoardService;

@Controller
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Inject
	private BoardService service;

	@RequestMapping("index")
	public void list() throws Exception {
		logger.info("index.jsp 요청");
	}
	
	@RequestMapping("amigo_service")
	public void amigoService() throws Exception{
		logger.info("amigo_service.jsp 요청");
	}
	
}