package com.controller.servicecenter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceCenterController {
	private static final Logger logger=LoggerFactory.getLogger(ServiceCenterController.class);
	
	// TODO : URL매핑 수정 필요함
	@RequestMapping("qna_orig")
	public void qna() throws Exception{
		logger.info("check");
	}
	@RequestMapping("faq")
	public void faq() throws Exception{
		logger.info("check");
	}
}
