package com.controller.footer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FooterController {

	private static final Logger logger = LoggerFactory.getLogger(FooterController.class);

	@RequestMapping("footer_agree")
	public void footerAgree() throws Exception {
		logger.info("footer_agree.jsp 호출");
	}

	@RequestMapping("footer_email")
	public void footerEmail() throws Exception {
		logger.info("footer_email.jsp 호출");
	}

	@RequestMapping("footer_inform")
	public void footerInform() throws Exception {
		logger.info("footer_inform.jsp 호출");
	}

	@RequestMapping("footer_legal")
	public void footerLegal() throws Exception {
		logger.info("footer_legal.jsp 호출");
	}
}
